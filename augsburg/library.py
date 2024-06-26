import abjad
import baca
import evans
import fractions
import itertools
import trinton
import random
import quicktions
from itertools import cycle
from augsburg import pitch
from abjadext import rmakers

# score


def augsburg_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
        ],
        groups=[
            4,
            1,
        ],
        staff_types=[
            [
                "Staff",
                "timeSignatureStaff",
                "leftHandStaff",
                "thirdStaff",
            ],
            "lowPassStaff",
        ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# sequences

logistic_map = [_ for _ in trinton.logistic_map(x=4, r=3.57, n=9) if _ > 2]

logistic_map = trinton.remove_adjacent(logistic_map)


def logistic_map_sequence(index):
    return trinton.rotated_sequence(logistic_map, index)


# immutables

change_to_rh = eval(
    """abjad.LilyPondLiteral(
        r'\change Staff = "piano 1 staff"', site="before"
    )"""
)

change_to_lh = eval(
    """abjad.LilyPondLiteral(
        r'\change Staff = "piano 3 staff"', site="before"
    )"""
)

revert_to_rh = eval(
    """abjad.LilyPondLiteral(
        r'\change Staff = "piano 1 staff"', site="absolute_after"
    )"""
)

revert_to_lh = eval(
    """abjad.LilyPondLiteral(
        r'\change Staff = "piano 3 staff"', site="absolute_after"
    )"""
)

start_jaw_harp_literal = eval(
    """abjad.LilyPondLiteral(
        [
            r"\override Staff.NoteHead.no-ledgers = ##t",
            r"\override Staff.Accidental.stencil = ##f"
        ],
        site="before"
    )"""
)

stop_jaw_harp_literal = abjad.LilyPondLiteral(
    [r"\revert Staff.NoteHead.no-ledgers", r"\revert Staff.Accidental.stencil"],
    site="absolute_after",
)

clef_whitespace_literal = abjad.LilyPondLiteral(
    [
        r"\once \override Staff.Clef.X-extent = ##f",
        r"\once \override Staff.Clef.extra-offset = #'(-2.5 . 0)",
    ],
    site="absolute_before",
)


def return_clef_whitespace_literal(offset_pair=(-2.5, 0)):
    literal = abjad.LilyPondLiteral(
        [
            r"\once \override Staff.Clef.X-extent = ##f",
            rf"\once \override Staff.Clef.extra-offset = #'({offset_pair[0]} . {offset_pair[-1]})",
        ],
        site="absolute_before",
    )

    return literal


# notation tools


def clean_time_signatures(score):
    for leaf in abjad.select.leaves(score["Global Context"]):
        if abjad.get.has_indicator(leaf, abjad.TimeSignature):
            time_signature = abjad.get.indicator(leaf, abjad.TimeSignature)
            numerator = time_signature.numerator
            denominator = time_signature.denominator

            if numerator > 9 or denominator > 9:
                abjad.attach(
                    abjad.LilyPondLiteral(
                        [
                            r"\once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)"
                        ],
                        site="before",
                    ),
                    leaf,
                )


def cattenaires_trills(
    selector=trinton.logical_ties(pitched=True, grace=False), direction=abjad.UP
):
    def trills(argument):
        selections = selector(argument)
        logical_ties = abjad.select.logical_ties(selections)
        last_tie = logical_ties[-1]
        intervals = itertools.cycle(
            [
                abjad.NamedInterval("m2"),
                abjad.NamedInterval("M2"),
                abjad.NamedInterval("m2"),
                abjad.NamedInterval("m3"),
            ]
        )

        for tie, interval in zip(logical_ties, intervals):
            next_leaf = abjad.select.with_next_leaf(tie)[-1]
            first_leaf_parent = abjad.get.parentage(tie[0]).parent
            next_leaf_parent = abjad.get.parentage(next_leaf).parent
            next = abjad.get.leaf(tie[-1], 1)

            if isinstance(first_leaf_parent, abjad.OnBeatGraceContainer):
                pass

            if (
                isinstance(next_leaf_parent, abjad.OnBeatGraceContainer)
                or next is None
                or tie == last_tie
            ):
                indicators = abjad.get.indicators(tie[0])
                new_note = abjad.mutate.copy(abjad.select.leaves(tie))
                for indicator in indicators:
                    abjad.attach(indicator, abjad.select.leaf(new_note, 0))
                skip = abjad.Skip(1, multiplier=(0, 64))
                abjad.attach(abjad.StopTrillSpan(), skip)
                components = [*new_note, skip]
                abjad.attach(
                    abjad.StartTrillSpan(interval=interval),
                    abjad.select.leaf(new_note, 0),
                    direction=direction,
                )
                abjad.mutate.replace(tie, components)
            else:
                start_span = abjad.StartTrillSpan(interval=interval)
                abjad.attach(start_span, tie[0], direction=direction)

    return trills


def manual_beam_positions(positions, selector=abjad.select.leaves):
    def beaming(argument):
        selections = selector(argument)
        leaves = abjad.select.leaves(selections)
        start_beam_leaves = []

        for leaf in leaves:
            if abjad.get.has_indicator(leaf, abjad.StartBeam):
                start_beam_leaves.append(leaf)

        for start_beam_leaf in start_beam_leaves:
            start_beam = abjad.get.indicator(start_beam_leaf, abjad.StartBeam)

            start_beam = abjad.bundle(
                start_beam,
                rf"- \tweak Beam.positions #'({positions[0]} . {positions[-1]})",
            )

            abjad.detach(abjad.StartBeam, start_beam_leaf)

            abjad.attach(start_beam, start_beam_leaf)

    return beaming


def imbrication_command(
    indices, period, direction, name, hocket=True, selector=abjad.select.leaves
):
    def imbricate(argument):
        selections = selector(argument)

        evans.imbricate(
            selections=selections,
            pitches=indices,
            name=name,
            direction=direction,
            articulation="marcato",
            beam=True,
            secondary=False,
            by_index=True,
            cyclic_period=period,
            hocket=hocket,
            truncate_ties=False,
            direct_attachments=False,
        )

        # leaves = abjad.select.leaves(argument, pitched=True)
        #
        # all_but_last_leaves = abjad.select.exclude(
        #     leaves,
        #     [-1, -2],
        # )
        #
        # for leaf in all_but_last_leaves:
        #     with_next_leaf = abjad.select.with_next_leaf(
        #         leaf,
        #     )
        #
        #     if leaf.written_pitch.number >= 10:
        #         abjad.attach(abjad.StartSlur(), with_next_leaf[1])
        #     elif with_next_leaf[1].written_pitch.number >= 10:
        #         abjad.attach(abjad.StopSlur(), with_next_leaf[0])
        #
        # if leaves[-2].written_pitch.number >= 10:
        #     pass
        # else:
        #     abjad.attach(abjad.StopSlur(), leaves[-1])

    return imbricate


def continuous_pedal(selector=trinton.pleaves()):
    def pedal(argument):
        selections = selector(argument)

        start_literal = abjad.LilyPondLiteral(
            r"\override Score.PianoPedalBracket.shorten-pair = #'(0 . 0)", site="before"
        )

        stop_literal = abjad.LilyPondLiteral(
            r"\override Score.PianoPedalBracket.shorten-pair = #'(0 . -4)",
            site="before",
        )

        abjad.attach(start_literal, selections[0])

        abjad.attach(stop_literal, selections[-2])

    return pedal


def low_pass_glissandi(selector=trinton.pleaves(), no_ties=False, tweaks=None):
    def glissando(argument):
        selections = selector(argument)
        dots_selections = abjad.select.leaves(selections)
        selections = abjad.select.logical_ties(selections)
        selections = abjad.select.exclude(selections, [-1])

        singletons = []
        multiples = []

        for tie in selections:
            if len(tie) > 1:
                multiples.append(tie)

            else:
                singletons.append(tie)

        for tie in singletons:
            abjad.attach(abjad.Glissando(zero_padding=True), tie[0])

        for tie in multiples:
            glissando_group = abjad.select.with_next_leaf(tie)

            if tweaks is not None:
                abjad.glissando(
                    glissando_group,
                    *tweaks,
                    hide_middle_note_heads=True,
                    allow_repeats=True,
                    allow_ties=True,
                    zero_padding=True,
                )

            else:
                abjad.glissando(
                    glissando_group,
                    hide_middle_note_heads=True,
                    allow_repeats=True,
                    allow_ties=True,
                    zero_padding=True,
                )

            if no_ties is True:
                for leaf in tie:
                    abjad.detach(abjad.Tie, leaf)

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\override Dots.staff-position = #2", site="absolute_before"
            ),
            dots_selections[0],
        )

        abjad.attach(
            abjad.LilyPondLiteral(r"\revert Dots.staff-position", site="before"),
            dots_selections[-1],
        )

    return glissando


def change_lines(
    lines,
    selector=trinton.select_leaves_by_index([0], pitched=True),
    clef="treble",
):
    def change(argument):
        selections = selector(argument)
        for selection in selections:
            abjad.attach(abjad.Clef(clef), selection)
            abjad.attach(
                abjad.LilyPondLiteral(
                    rf"\staff-line-count {lines}",
                    site="absolute_before",
                ),
                selection,
            )

    return change


def clean_graces(
    score, voice_names=["piano 1 voice", "piano 3 voice", "piano 4 voice"]
):
    for voice_name in voice_names:
        grace_groups = []

        for leaf in abjad.select.leaves(score[voice_name]):
            before_grace_container = abjad.get.before_grace_container(leaf)
            after_grace_container = abjad.get.after_grace_container(leaf)
            grace_groups.append(before_grace_container)
            grace_groups.append(after_grace_container)

        for group in grace_groups:
            if group is not None:
                if len(group) == 1:
                    start_slash_literal = abjad.LilyPondLiteral(
                        r"""\once \override Flag.stroke-style = #"grace" """,
                        site="before",
                    )

                else:
                    abjad.beam(group)
                    abjad.slur(group)

                    start_slash_literal = abjad.LilyPondLiteral(
                        r"\my-hack-slash", site="before"
                    )

                abjad.attach(start_slash_literal, group[0])

        onbeat_graces = []

        for leaf in abjad.select.leaves(score[voice_name]):
            parentage = abjad.get.parentage(leaf).parent
            if isinstance(parentage, abjad.OnBeatGraceContainer):
                onbeat_graces.append(leaf)

        onbeat_graces = abjad.select.group_by_contiguity(onbeat_graces)

        for container in onbeat_graces:
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\override Beam.beam-thickness = #0.48", site="before"
                ),
                container[0],
            )
            abjad.attach(
                abjad.LilyPondLiteral(r"\revert Beam.thickness", site="after"),
                container[-1],
            )

            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\override Beam.length-fraction = #1", site="before"
                ),
                container[0],
            )
            abjad.attach(
                abjad.LilyPondLiteral(r"\revert Beam.length-fraction", site="after"),
                container[-1],
            )


def duration_line(selector=trinton.select_logical_ties_by_index([-1], pitched=True)):
    def line(argument):
        selections = selector(argument)
        pties = abjad.select.logical_ties(
            selections,
            pitched=True,
        )

        for tie in pties:
            relevant_leaf = tie[-1]
            if isinstance(relevant_leaf, abjad.Chord):
                tie_pitches = relevant_leaf.written_pitches
                pitch_string = " "
                for pitch in tie_pitches:
                    pitch_string += pitch.get_name()
                    pitch_string += " "
                container = abjad.AfterGraceContainer(f"<{pitch_string}>16")
            else:
                tie_pitch = relevant_leaf.written_pitch.get_name()
                container = abjad.AfterGraceContainer(f"{tie_pitch}16")

            abjad.attach(container, tie[-1])

            with_grace = abjad.select.with_next_leaf(tie)

            abjad.glissando(
                with_grace,
                hide_middle_note_heads=True,
                allow_repeats=True,
                allow_ties=True,
                zero_padding=True,
            )

    return line


def reset_line_positions(score, voice_names):
    voices = [score[_] for _ in voice_names]

    reset = abjad.LilyPondLiteral(
        r"\once \revert Staff.StaffSymbol.line-positions", "before"
    )

    for voice in voices:
        shards = abjad.select.group_by_measure(voice)
        relevant_shards = []
        for shard in shards:
            if (
                all(isinstance(leaf, abjad.Rest) for leaf in shard)
                or all(isinstance(leaf, abjad.MultimeasureRest) for leaf in shard)
                or all(isinstance(leaf, abjad.Skip) for leaf in shard)
            ):
                relevant_shards.append(shard)

        for shard in relevant_shards:
            abjad.attach(reset, shard[0])


def color_music(color, selector=abjad.select.leaves, dynamic=True):
    def coloring(argument):
        selections = selector(argument)

        literal_strings = [
            rf"\override NoteHead.details.interrupt-color = {color}",
            rf"\override NoteHead.details.switch-color = {color}",
            rf"\override NoteHead.details.folow-color = {color}",
            rf"\override NoteHead.details.hocket-color = {color}",
            rf"\override Accidental.color = {color}",
            rf"\override Beam.color = {color}",
            rf"\override Dots.color = {color}",
            rf"\override Flag.color = {color}",
            rf"\override Glissando.color = {color}",
            rf"\override MultiMeasureRest.color = {color}",
            rf"\override NoteHead.color = {color}",
            rf"\override RepeatTie.color = {color}",
            rf"\override Rest.color = {color}",
            rf"\override Slur.color = {color}",
            rf"\override Stem.color = {color}",
            rf"\override StemTremolo.color = {color}",
            rf"\override Tie.color = {color}",
            rf"\override TupletBracket.color = {color}",
            rf"\override TupletNumber.color = {color}",
            r"\override Dots.staff-position = #2",
        ]

        if dynamic is True:
            literal_strings.append(
                rf"\override DynamicText.color = {color}",
            )

        abjad.attach(
            abjad.LilyPondLiteral(
                literal_strings,
                site="before",
            ),
            selections[0],
            tag=abjad.Tag("+SCORE"),
        )

        abjad.attach(
            abjad.LilyPondLiteral(
                [
                    rf"\revert Accidental.color",
                    rf"\revert Beam.color",
                    rf"\revert Dots.color",
                    rf"\revert Flag.color",
                    rf"\revert Glissando.color",
                    rf"\revert MultiMeasureRest.color",
                    rf"\revert NoteHead.color",
                    rf"\revert RepeatTie.color",
                    rf"\revert Rest.color",
                    rf"\revert Slur.color",
                    rf"\revert Stem.color",
                    rf"\revert StemTremolo.color",
                    rf"\revert Tie.color",
                    rf"\revert TupletBracket.color",
                    rf"\revert TupletNumber.color",
                    rf"\revert DynamicText.color",
                    r"\revert Dots.staff-position",
                ],
                site="absolute_after",
            ),
            selections[-1],
            tag=abjad.Tag("+SCORE"),
        )

        for leaf in abjad.select.leaves(selections):
            if abjad.get.has_indicator(leaf, abjad.Articulation):
                for articulation in abjad.get.indicators(leaf, abjad.Articulation):
                    bundle = abjad.bundle(articulation, rf"- \tweak color {color}")

                    abjad.detach(articulation, leaf)

                    abjad.attach(bundle, leaf, tag=abjad.Tag("+SCORE"))
                    abjad.attach(articulation, leaf, tag=abjad.Tag("+PARTS"))

    return coloring


def interruptive_polyphony(
    hand,
    stage=1,
    dynamic=True,
):
    def polyphony(argument):
        if hand == "rh":
            colors = ["\一", "\三"]
        else:
            colors = ["\二", "\四"]

        for voice, color in zip(
            abjad.iterate.components(argument, abjad.Voice), colors
        ):
            leaves = abjad.select.leaves(voice)

            literal_strings = [
                rf"\override NoteHead.details.interrupt-color = {color}",
                rf"\override NoteHead.details.switch-color = {color}",
                rf"\override NoteHead.details.folow-color = {color}",
                rf"\override NoteHead.details.hocket-color = {color}",
                rf"\override Accidental.color = {color}",
                rf"\override Beam.color = {color}",
                rf"\override Dots.color = {color}",
                rf"\override Flag.color = {color}",
                rf"\override Glissando.color = {color}",
                rf"\override MultiMeasureRest.color = {color}",
                rf"\override NoteHead.color = {color}",
                rf"\override RepeatTie.color = {color}",
                rf"\override Rest.color = {color}",
                rf"\override Slur.color = {color}",
                rf"\override Stem.color = {color}",
                rf"\override StemTremolo.color = {color}",
                rf"\override Tie.color = {color}",
                rf"\override TupletBracket.color = {color}",
                rf"\override TupletNumber.color = {color}",
                r"\override Dots.staff-position = #2",
            ]

            if dynamic is True:
                literal_strings.append(
                    rf"\override DynamicText.color = {color}",
                )

            abjad.attach(
                abjad.LilyPondLiteral(
                    literal_strings,
                    site="before",
                ),
                leaves[0],
                tag=abjad.Tag("+SCORE"),
            )

            abjad.attach(
                abjad.LilyPondLiteral(
                    [
                        rf"\revert Accidental.color",
                        rf"\revert Beam.color",
                        rf"\revert Dots.color",
                        rf"\revert Flag.color",
                        rf"\revert Glissando.color",
                        rf"\revert MultiMeasureRest.color",
                        rf"\revert NoteHead.color",
                        rf"\revert RepeatTie.color",
                        rf"\revert Rest.color",
                        rf"\revert Slur.color",
                        rf"\revert Stem.color",
                        rf"\revert StemTremolo.color",
                        rf"\revert Tie.color",
                        rf"\revert TupletBracket.color",
                        rf"\revert TupletNumber.color",
                        rf"\revert DynamicText.color",
                        r"\revert Dots.staff-position",
                    ],
                    site="absolute_after",
                ),
                leaves[-1],
                tag=abjad.Tag("+SCORE"),
            )

            ties = abjad.select.logical_ties(leaves)

            for tie in ties:
                literal_string = r"\interrupt"

                if stage == 1:
                    abjad.attach(
                        abjad.LilyPondLiteral(literal_string, site="before"),
                        tie[0],
                    )

            for leaf in abjad.select.leaves(voice):
                if abjad.get.has_indicator(leaf, abjad.Articulation):
                    for articulation in abjad.get.indicators(leaf, abjad.Articulation):
                        bundle = abjad.bundle(articulation, rf"- \tweak color {color}")

                        abjad.detach(abjad.Articulation, leaf)

                        if (
                            voice.name == "37 voice temp"
                            or voice.name == "13 voice temp"
                        ):
                            direction = abjad.UP
                        else:
                            direction = abjad.DOWN

                        abjad.attach(
                            bundle, leaf, direction=direction, tag=abjad.Tag("+SCORE")
                        )
                        abjad.attach(articulation, leaf, tag=abjad.Tag("+PARTS"))

    return polyphony


def handle_accidentals(score, force_accidentals=True):
    pties = abjad.select.logical_ties(score, pitched=True)

    ficta_ties = []
    chords = []
    post_graces = []

    for tie in pties:
        previous_leaf = abjad.select.with_previous_leaf(tie)[0]
        tie_duration = abjad.get.duration(tie)
        previous_duration = abjad.get.duration(previous_leaf)
        if isinstance(tie[0], abjad.Chord):
            chords.append(tie)
            pass
        if previous_duration < abjad.Duration(1, 16):
            if isinstance(tie[0], abjad.Chord):
                pass
            else:
                ficta_ties.append(tie)
                pass
        previous_parentage = abjad.get.parentage(previous_leaf).parent
        if (
            isinstance(previous_parentage, abjad.BeforeGraceContainer)
            or isinstance(previous_parentage, abjad.OnBeatGraceContainer)
            or isinstance(previous_parentage, abjad.AfterGraceContainer)
        ):
            tie_parentage = abjad.get.parentage(tie[0]).parent
            if (
                isinstance(tie_parentage, abjad.BeforeGraceContainer)
                or isinstance(tie_parentage, abjad.OnBeatGraceContainer)
                or isinstance(tie_parentage, abjad.AfterGraceContainer)
            ):
                pass
            else:
                if isinstance(tie[0], abjad.Chord):
                    pass
                else:
                    post_graces.append(tie)

    for tie in post_graces:
        abjad.attach(
            abjad.LilyPondLiteral(r"\revert Staff.Accidental.X-extent", site="before"),
            tie[0],
        )
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\override Staff.Accidental.X-extent = ##f", site="absolute_after"
            ),
            tie[-1],
        )

    for chord in chords:
        abjad.attach(
            abjad.LilyPondLiteral(r"\revert Staff.Accidental.X-extent", site="before"),
            chord[0],
        )
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\override Staff.Accidental.X-extent = ##f", site="absolute_after"
            ),
            chord[-1],
        )

        if force_accidentals is True:
            for head in chord[0].note_heads:
                head.is_forced = True

    ficta_ties = abjad.select.group_by_contiguity(ficta_ties)

    for group in ficta_ties:
        first_tie = group[0]
        last_tie = group[-1]

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\override Staff.Accidental.stencil = ##f", site="before"
            ),
            first_tie[0],
        )

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\revert Staff.Accidental.stencil", site="absolute_after"
            ),
            last_tie[-1],
        )

        for tie in group:
            previous_leaf = abjad.select.with_previous_leaf(tie)[0]
            if (
                isinstance(previous_leaf, abjad.Rest)
                or isinstance(
                    previous_leaf,
                    abjad.Chord,
                )
                or isinstance(previous_leaf, abjad.Skip)
            ):
                previous_leaf_pitch = abjad.NamedPitch("bs,,,,,,,,,,,,,,,,")
            else:
                previous_leaf_pitch = previous_leaf.written_pitch
            first_leaf = tie[0]
            first_leaf_pitch = first_leaf.written_pitch
            accidental = first_leaf_pitch.accidental
            accidental_name = accidental.name
            clef = abjad.get.effective(first_leaf, abjad.Clef)

            if (
                clef == None
                or clef.name == "percussion"
                or first_leaf_pitch.name == previous_leaf_pitch.name
            ):
                pass

            else:
                abjad.attach(
                    abjad.Articulation(f"{accidental_name}-articulation"), first_leaf
                )


# tempi

_metronome_marks = {
    "33": """\\abjad-metronome-mark-markup #2 #0 #2 #"33" """,
    "48 3/4": """\\abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4" """,
    "60": """\\abjad-metronome-mark-markup #2 #0 #2 #"60" """,
    "97 1/2": """\\abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"97" #"1" #"2" """,
    "138 3/4": """\\abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" """,
}

_metric_modulations = {
    # faster
    "33 - 48 3/4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("8:11", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "33 - 60": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("32:35", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "33 - 97 1/2": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("65:44", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "33 - 138 3/4": None,
    "48 3/4 - 60": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("16:13", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "48 3/4 - 97 1/2": abjad.MetricModulation(
        left_rhythm=abjad.Note("c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "48 3/4 - 138 3/4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("37:36", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "60 - 97 1/2": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("13:16", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "60 - 138 3/4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("37:32", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "97 1/2 - 138 3/4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("37:26", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    # slower
    "138 3/4 - 97 1/2": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("26:37", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "138 3/4 - 60": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("32:37", "c2"),
        right_rhythm=abjad.Note("c4"),
    ),
    "138 3/4 - 48 3/4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("26:37", "c2"),
        right_rhythm=abjad.Note("c4"),
    ),
    "138 3/4 - 33": None,
    "97 1/2 - 60": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("16:13", "c2"),
        right_rhythm=abjad.Note("c4"),
    ),
    "97 1/2 - 48 3/4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c2"),
        right_rhythm=abjad.Note("c4"),
    ),
    "97 1/2 - 33": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("44:65", "c2"),
        right_rhythm=abjad.Note("c4"),
    ),
    "60 - 48 3/4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("13:16", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "60 - 33": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("35:32", "c2"),
        right_rhythm=abjad.Note("c4"),
    ),
    "48 3/4 - 33": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("11:8", "c2"),
        right_rhythm=abjad.Note("c4"),
    ),
}


def metronome_markups(
    tempo_string,
    previous_tempo_string=None,
    padding=13.5,
    string_only=False,
    parenthesis=False,
):

    if (
        tempo_string == "33"
        and previous_tempo_string == "138 3/4"
        or tempo_string == "138 3/4"
        and previous_tempo_string == "33"
    ):
        raise Exception(
            r"In this score, you have decided not to show the metric relationship between 138 3/4 BPM and 33 BPM."
        )

    tempo_markup = _metronome_marks[tempo_string]

    if parenthesis is True:
        mark = f"\markup {{ \override #'(font-size . 5.5) \concat {{ ( {tempo_markup} ) }} }}"
        return mark

    else:
        if previous_tempo_string is not None:
            mod_key = f"{previous_tempo_string} - {tempo_string}"
            mod_string = _metric_modulations[mod_key]

            if string_only is True:
                mark = f"\markup {{ \override #'(font-size . 5.5) \concat {{ {tempo_markup} [{abjad.lilypond(mod_string)[8:]}] }} }}"
            else:
                mark = abjad.LilyPondLiteral(
                    [
                        r"^ \markup {",
                        rf"  \raise #{padding} \with-dimensions-from \null",
                        r"  \override #'(font-size . 5.5)",
                        r"  \concat {",
                        f"      {tempo_markup}",
                        f"      [{abjad.lilypond(mod_string)[8:]}]",
                        r"  }",
                        r"}",
                    ],
                    site="after",
                )

        else:
            if string_only is True:
                mark = f"\markup {{ \override #'(font-size . 5.5) \concat {{ {tempo_markup} }} }}"
            else:
                mark = abjad.LilyPondLiteral(
                    [
                        r"^ \markup {",
                        rf"  \raise #{padding} \with-dimensions-from \null",
                        r"  \override #'(font-size . 5.5)",
                        r"  \concat {",
                        f"      {tempo_markup}",
                        r"  }",
                        r"}",
                    ],
                    site="after",
                )

        return mark


# markups


def boxed_markup(string, tweaks=None, font_name="Bodoni72 Book", fontsize=2):
    if isinstance(string, list):
        lines = [f"\line {{ {_} }} " for _ in string]

        lines = "".join(lines)

        markup = abjad.Markup(
            rf"""\markup \override #'(font-name . " {font_name} ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #{fontsize} {{ \center-column {{ { lines } }} }}""",
        )

    else:
        markup = abjad.Markup(
            rf"""\markup \override #'(font-name . " {font_name} ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #{fontsize} \box \line {{ {string} }}""",
        )

    if tweaks is not None:
        for tweak in tweaks:
            markup = abjad.bundle(markup, tweak)

    return markup
