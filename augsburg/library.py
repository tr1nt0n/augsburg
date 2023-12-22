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
        ],
        groups=[
            3,
            1,
        ],
        staff_types=[
            [
                "Staff",
                "timeSignatureStaff",
                "leftHandStaff",
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


# notation tools


def interruptive_polyphony(
    hand,
    stage=1,
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

            abjad.attach(
                abjad.LilyPondLiteral(
                    [
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
                        rf"\override DynamicText.color = {color}",
                        r"\override Dots.staff-position = #2",
                    ],
                    site="before",
                ),
                leaves[0],
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
            )

            # abjad.attach(
            #     abjad.LilyPondLiteral(r"\start-explicit-interrupt", "before"),
            #     leaves[0]
            # )
            #
            # abjad.attach(
            #     abjad.LilyPondLiteral(r"\stop-explicit-interrupt", "after"),
            #     leaves[-1]
            # )

            ties = abjad.select.logical_ties(leaves)

            for tie in ties:
                if stage == 1:
                    literal_string = r"\interrupt"
                else:
                    literal_string = r"\hocket"

                abjad.attach(
                    abjad.LilyPondLiteral(literal_string, site="before"), tie[0]
                )

    return polyphony


def handle_accidentals(score):
    pties = abjad.select.logical_ties(score, pitched=True)

    ficta_ties = []
    chords = []

    for tie in pties:
        tie_duration = abjad.get.duration(tie)
        if isinstance(tie[0], abjad.Chord):
            chords.append(tie)
        if tie_duration < abjad.Duration(1, 16):
            ficta_ties.append(tie)

    for chord in chords:
        abjad.attach(
            abjad.LilyPondLiteral(r"\revert Staff.Accidental.X-extent", site="before"),
            chord[0],
        )
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\override Staff.Accidental.X-extent = ##f", site="after"
            ),
            chord[-1],
        )

        for head in chord[0].note_heads:
            head.is_forced = True

    ficta_ties = abjad.select.group_by_contiguity(ficta_ties)

    for group in ficta_ties:
        first_tie = group[0]
        last_tie = group[-1]

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\set suggestAccidentals = ##t", site="absolute_before"
            ),
            first_tie[0],
        )

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\set suggestAccidentals = ##f", site="absolute_after"
            ),
            last_tie[-1],
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
    tempo_string, previous_tempo_string=None, string_only=False, parenthesis=False
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
                        r"  \raise #13.5 \with-dimensions-from \null",
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
                        r"  \raise #13.5 \with-dimensions-from \null",
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


def boxed_markup(string, tweaks, font_name="Bodoni72 Book", fontsize=8):
    markup = abjad.Markup(
        rf"""\markup \override #'(font-name . " {font_name} ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #{fontsize} \box \line {{ {string} }}""",
    )

    for tweak in tweaks:
        markup = abjad.bundle(markup, tweak)

    return markup
