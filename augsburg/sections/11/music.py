import abjad
import baca
import evans
import trinton
import itertools
from abjadext import rmakers
from abjadext import microtones
from augsburg import library
from augsburg import ts
from augsburg import rhythm
from augsburg import pitch

score = library.augsburg_score(
    ts.assemble_section_ts(
        [
            [
                (4, 4),
                (3, 4),
                (3, 4),
                (4, 4),
                (37, 20),
            ],
            ts.return_gestural_ts_sequence(index=5, slice_tuple=(0, 5)),
            [
                (4, 4),
            ],
        ],
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(hand="rh", stage=3, inverse_tuplet_directions=True),
    ),
    library.change_lines(
        lines=5,
        clef="bass",
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="rh",
            stage=3,
            tuplet_selector=trinton.select_logical_ties_by_index(
                [1, 3, 4], pitched=True
            ),
            inverse_tuplet_directions=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(
        pitch_list=trinton.remove_adjacent(pitch.return_seed_pitch_sequence(index=-6))
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 7, 8, 9, 10, 11, 12, 13, 14], pitched=True
        ),
    ),
    trinton.octavation(octave=-2, selector=trinton.select_leaves_by_index([3, 4])),
    trinton.octavation(
        octave=-3,
        selector=trinton.select_logical_ties_by_index([0, 1, 2], pitched=True),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26], pitched=True
        ),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [27, 28, 29, 30, 31, 32, 33, 34], pitched=True
        ),
    ),
    trinton.octavation(
        octave=3,
        selector=trinton.select_logical_ties_by_index(
            [35, 36, 37, 38, 39, 41, 42, 43, 44], pitched=True
        ),
    ),
    trinton.octavation(
        octave=4, selector=trinton.select_logical_ties_by_index([40], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            library.clef_whitespace_literal,
            abjad.Markup(
                r"""\markup \fontsize #2 { \override #'(font-name . "Bodoni72 Book Italic") { leggierissimo } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([15], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, 4], pitched=True)
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([32, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.pitched_selector(["b", "a"]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 28, 28, 34, 41, -1], first=True, pitched=True
        ),
    ),
    voice=score["piano 1 voice"],
)

piano_1_measures = abjad.select.group_by_measure(score["piano 1 voice"])

measure_1_through_3 = piano_1_measures[0:3]

measure_1_through_3_tuplets = abjad.select.tuplets(measure_1_through_3)

for tuplet in measure_1_through_3_tuplets:
    tuplet_parent = abjad.get.parentage(tuplet).parent
    if isinstance(tuplet_parent, abjad.Tuplet):
        pass
    else:
        abjad.tweaks.tweak(
            tuplet,
            r"\tweak padding #6",
        )

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([1], 64, treat_tuplets=False)),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.PitchHandler([["a''''", "g''''", "e''''", "ds''''"]]),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([1, -2], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.details.interrupt-color = \四",
                    r"\override NoteHead.details.switch-color = \四",
                    r"\override NoteHead.details.folow-color = \四",
                    r"\override NoteHead.details.hocket-color = \四",
                    r"\override Accidental.color = \四",
                    r"\override Beam.color = \四",
                    r"\override Dots.color = \四",
                    r"\override Flag.color = \四",
                    r"\override Glissando.color = \四",
                    r"\override MultiMeasureRest.color = \四",
                    r"\override NoteHead.color = \四",
                    r"\override RepeatTie.color = \四",
                    r"\override Rest.color = \四",
                    r"\override Slur.color = \四",
                    r"\override Stem.color = \四",
                    r"\override StemTremolo.color = \四",
                    r"\override Tie.color = \四",
                    r"\override TupletBracket.color = \四",
                    r"\override TupletNumber.color = \四",
                    r"\override Dots.staff-position = #2",
                    r"\override Staff.Stem.direction = #UP",
                ],
                site="before",
            ),
            library.boxed_markup(
                string="( Prolatiert mit der Taktart nicht )",
                tweaks=[r"- \tweak padding #1"],
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert NoteHead.details.interrupt-color",
                    r"\revert  NoteHead.details.switch-color",
                    r"\revert NoteHead.details.folow-color",
                    r"\revert  NoteHead.details.hocket-color",
                    r"\revert  Accidental.color",
                    r"\revert  Beam.color",
                    r"\revert  Dots.color",
                    r"\revert  Flag.color",
                    r"\revert  Glissando.color",
                    r"\revert  MultiMeasureRest.color",
                    r"\revert  NoteHead.color",
                    r"\revert  RepeatTie.color",
                    r"\revert  Rest.color",
                    r"\revert  Slur.color",
                    r"\revert  Stem.color",
                    r"\revert  StemTremolo.color",
                    r"\revert  Tie.color",
                    r"\revert  TupletBracket.color ",
                    r"\revert  TupletNumber.color",
                    r"\revert  Dots.staff-position",
                    r"\revert  Staff.Stem.direction",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[library.change_to_rh],
        selector=trinton.patterned_tie_index_selector([1], 2, first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[library.change_to_lh],
        selector=trinton.patterned_tie_index_selector([0], 2, first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[library.revert_to_rh],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(rhythm.rhythm_g(stage=3, hand="rh")),
    library.interruptive_polyphony(hand="rh", stage=3),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(rhythm.rhythm_g(stage=1, hand="rh", voice_number=1)),
    library.interruptive_polyphony(hand="rh", stage=1),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.PitchHandler(["a''''"]),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.PitchHandler(["g''''"]),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.PitchHandler(["g'''"]),
    voice=score["35 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.PitchHandler(
        [
            "g'''",
            "g''''",
        ]
    ),
    voice=score["35 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.PitchHandler(["g''''"]),
    trinton.linear_attachment_command(
        attachments=[
            # abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("p"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index([1, 2, 3, 4], first=True),
        direction=abjad.DOWN,
    ),
    voice=score["37 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.PitchHandler(["g''''"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.Dynamic("p"),
            abjad.Dynamic("f"),
            abjad.Dynamic("p"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3, 4], first=True),
        direction=abjad.DOWN,
    ),
    voice=score["35 voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 11)),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(hand="lh", stage=3),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="lh",
            stage=3,
            tuplet_selector=trinton.select_logical_ties_by_index([1, 3], pitched=True),
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="lh",
            stage=1,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(
        pitch_list=trinton.remove_adjacent(pitch.return_seed_pitch_sequence(index=-4))
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [
                12,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_logical_ties_by_index(
            [
                6,
                7,
                8,
                9,
                10,
                11,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-3,
        selector=trinton.select_logical_ties_by_index([1, 2, 3, 4, 5], pitched=True),
    ),
    trinton.octavation(
        octave=-4,
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [14, 15, 16, 17, 18, 19, 20], pitched=True
        ),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index([21, 22, 23, 24], pitched=True),
    ),
    trinton.octavation(
        octave=3, selector=trinton.select_logical_ties_by_index([25], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([13], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, 5], pitched=True)
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([-5, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.pitched_selector(["b", "a"]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([-5, -4, -3, -2, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.TupletBracket.direction = #UP",
                    r"\override Staff.TupletBracket.stencil = ##f",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\override Staff.TupletBracket.direction = #DOWN",
                site="absolute_after",
            ),
            trinton.make_custom_dynamic("s. p"),
            abjad.StartHairpin("<"),
            abjad.StopHairpin(),
            abjad.LilyPondLiteral(
                r"\revert Staff.TupletBracket.stencil", site="absolute_after"
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 12, -9, -9, -1, -1], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartPianoPedal(), abjad.StopPianoPedal()]),
        selector=trinton.select_leaves_by_index([0, 1, 17, 18, 22, 25]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(rhythm.rhythm_g(stage=3, hand="lh")),
    library.interruptive_polyphony(hand="lh", stage=3),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(rhythm.rhythm_g(stage=1, hand="lh", voice_number=1)),
    library.interruptive_polyphony(hand="lh", stage=1),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.PitchHandler(["e''"]),
    voice=score["13 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.PitchHandler(
        [
            "e'''",
            "e''",
            "e''''",
            "e'''",
            "e''''",
            "e''",
        ]
    ),
    voice=score["13 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.PitchHandler(["e''''"]),
    voice=score["13 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.PitchHandler(
        [
            "ds'",
            "ds'",
            "ds'",
            "ds'",
            "ds'",
            "ds''",
            "ds'",
            "ds''",
            "ds''",
            "ds'''",
            "ds'''",
            "ds''''",
            "ds'''",
            "ds''",
            "ds'''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["13 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.PitchHandler(["g''''"]),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("fff"), abjad.Dynamic("mp"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    voice=score["13 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    voice=score["4 voice 1"],
)

# polyphonic dynamics

for voice_name, dynamic_pair in zip(
    ["37 voice temp", "35 voice", "13 voice temp", "4 voice"],
    [("mp", "pppp"), ("mf", "ppp"), ("f", "pp"), ("ff", "p")],
):
    measures = abjad.select.group_by_measure(score[voice_name])

    if voice_name == "37 voice temp" or voice_name == "13 voice temp":
        direction = abjad.UP

    else:
        direction = abjad.DOWN

    for i, measure in enumerate(measures):
        # first_leaf = abjad.select.leaf(measure, 0)
        # last_leaf = abjad.select.leaf(measure, -1)
        logical_ties = abjad.select.logical_ties(measure)
        first_leaf_of_first_tie = abjad.select.leaf(logical_ties[0], 0)
        last_leaf_of_last_tie = abjad.select.leaf(logical_ties[-1], -1)
        if i % 2 == 0:
            dynamic = abjad.Dynamic(dynamic_pair[0])
        else:
            dynamic = abjad.Dynamic(dynamic_pair[-1])

        abjad.attach(dynamic, first_leaf_of_first_tie, direction=direction)
        abjad.attach(
            abjad.StartHairpin("--"), first_leaf_of_first_tie, direction=direction
        )
        abjad.attach(abjad.StopHairpin(), last_leaf_of_last_tie, direction=direction)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.talea([1, 12, 11, 3, 1], 8)),
    evans.PitchHandler([9, 2, -9, -3, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (2, 32, 2, 1),
            ],
            treat_tuplets=False,
        ),
    ),
    evans.PitchHandler([9, -9, -3, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

# trinton.fermata_measures(
#     score=score,
#     measures=[26],
#     fermata="very-short-fermata",
#     font_size=15,
#     clef_whitespace=True,
#     voice_names=[
#         "piano 1 voice",
#         "piano 2 voice",
#         "piano 3 voice",
#         "piano 4 voice",
#         "piano 5 voice",
#     ],
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                padding=10.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                tempo_string="33",
                previous_tempo_string="60",
                string_only=True,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=18,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (4, 5)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"^ \markup {",
#                     r"  \raise #16 \with-dimensions-from \null",
#                     r"  \override #'(font-size . 5.5)",
#                     r"  \concat {",
#                     r"""\abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"77" #"1" #"4"  """,
#                     r"  }",
#                     r"}",
#                 ],
#                 site="after",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

for measure in [6, 7, 8, 9, 10]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# beautification

library.handle_accidentals(score=score, force_accidentals=False)

library.clean_graces(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.reset_line_positions(score=score, voice_names=["piano 5 voice"])

trinton.whiteout_empty_staves(
    score=score,
    voice_names=["piano 4 voice", "piano 5 voice"],
    cutaway="blank",
    tag=None,
)

# persist

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/11",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="11",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
