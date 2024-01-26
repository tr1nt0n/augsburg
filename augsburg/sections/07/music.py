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
            ts.return_descending_ts(
                index=-11,
                cut_time=True,
                double_time=False,
                chaos=False,
                reduce=True,
                slice_tuple=(0, 10),
            ),
            [(5, 4), (5, 4), (5, 4)],
        ]
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.change_lines(lines=5, clef="treble"),
    library.interruptive_polyphony(hand="rh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(["g''''", "g''''", "g''''", "a''''", "a''''"]),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([3, 2, 4, 2, 2], 16)),
    evans.PitchHandler(pitch.return_epsilon_chords(index=5, hand="rh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 3, 3, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([-1, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([-2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 2, -2, -1], pitched=True),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="rh",
            stage=2,
            tuplet_selector=trinton.select_logical_ties_by_index([-1], pitched=True),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=23)),
    trinton.octavation(octave=-1),
    trinton.octavation(
        octave=-1, selector=trinton.logical_ties(pitched=True, exclude=[0, 1])
    ),
    trinton.octavation(
        octave=-1, selector=trinton.logical_ties(pitched=True, exclude=[0, 1, 2])
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([7, 8, 9, 10], pitched=True),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [-1, -2, -3, -4, -5], pitched=True
        ),
    ),
    trinton.octavation(
        octave=1, selector=trinton.select_logical_ties_by_index([-4, -1], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([3, 7], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index(
            [3, 4, 5, 6, 7, 8, 9, 10], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, -1, -2, -3, -4, -5], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([-4, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, -5, -5, -1, -1], pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.change_lines(lines=5, clef="treble"),
    library.interruptive_polyphony(hand="lh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(["g''''", "g''''", "g''''", "ds''''"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([2, -1], pitched=True),
    ),
    voice=score["4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([3, 2, 4, 2, 2], 16)),
    evans.PitchHandler(["df,,", "b,,,", "f,,", "df,,", "df,,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([-1, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([-2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 2, -2, -1], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    abjad.beam,
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="lh",
            stage=2,
            tuplet_selector=trinton.select_logical_ties_by_index([-1], pitched=True),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=20)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([4, 6, 8, 9], pitched=True),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index([-1, -2, -3], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, 9], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ],
        ),
        selector=trinton.select_leaves_by_index([1, 5, 9, 10, 13, 14, 15, 20]),
    ),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("sffz pp")],
        selector=trinton.select_leaves_by_index([0, 4, 6, 7], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([-1, -2, -3], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([-2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                -3,
                -3,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

# globals

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 5)),
#     trinton.spanner_command(
#         strings=[
#             r"""\markup { \override #'(font-size . 5.5) \concat { (  \abjad-metronome-mark-markup #2 #0 #2 #"72" ) } }""",
#             library.metronome_markups(
#                 tempo_string="48 3/4",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=23,
#         full_string=True,
#         right_padding=0,
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"^ \markup {",
#                     r"  \raise #8 \with-dimensions-from \null",
#                     r"  \override #'(font-size . 5.5)",
#                     r"  \concat {",
#                     r"""\abjad-metronome-mark-markup #2 #0 #2 #"72" """,
#                     r"  }",
#                     r"}",
#                 ],
#                 site="after",
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

for measure, previous_tempo_string, padding in zip(
    [
        1,
        6,
        8,
        10,
    ],
    [
        "48 3/4",
        "60",
        "60",
        None,
    ],
    [16.5, 10.5, 18.5, 10.5],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="33",
                    previous_tempo_string=previous_tempo_string,
                    padding=padding,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure, previous_tempo_string in zip(
    [
        2,
        4,
        9,
    ],
    [
        None,
        "60",
        None,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="138 3/4",
                    previous_tempo_string=previous_tempo_string,
                    padding=10.5,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure, previous_tempo_string, padding in zip(
    [
        3,
        5,
        7,
    ],
    ["138 3/4", "138 3/4", "48 3/4"],
    [20, 10.5, 10.5],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="60",
                    previous_tempo_string=previous_tempo_string,
                    padding=padding,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="138 3/4",
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

# beautification

library.handle_accidentals(score=score)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/07",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
