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
                (5, 2),
                (7, 4),
                (3, 2),
                (4, 4),
                (7, 4),
                (5, 2),
                (4, 4),
                (4, 4),
                (4, 4),
                (3, 2),
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (1, 4),
            ],
        ]
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([-3, 1, 2, 2, 2, 5, 5, -2, 6, 5, 1, -4, 8], 8)),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
            ],
            pitched=True,
        ),
    ),
    evans.PitchHandler(
        [
            "ef,,",
            "f,",
            "f,",
            "c'",
            "f,",
            "b,,",
            ["d'''", "f'''", "a'''", "c''''"],
        ]
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["416/35", "35/16", "7/2", "7/2", "3/1"],
        as_ratios=True,
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 4, 5], pitched=True),
    ),
    library.change_lines(lines=5, clef="treble"),
    library.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([3], first=True, pitched=True),
    ),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_logical_ties_by_index([4], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.return_clef_whitespace_literal(offset_pair=(-6, 0)),
            library.return_clef_whitespace_literal(offset_pair=(-5, 0)),
        ],
        selector=trinton.select_logical_ties_by_index([0, 4], first=True, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="la",
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 4, 5], first=True, pitched=True
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Accidental.font-size = 5", site="before"
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 4, 5], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.duration-log = 2", site="before"
            ),
            abjad.LilyPondLiteral(r"\once \override NoteHead.no-ledgers = ##t"),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(string="Nagel + Vibrator"),
            library.boxed_markup(string=["Magnetgruppe", "mit der Handfläche"]),
            library.boxed_markup(string="Nagel + Vibrator"),
            library.boxed_markup(
                string=[
                    "Die Saiten in der höchsten Oktave",
                    "auf ihrer Rückseite anschlagen",
                ]
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 4, -1], pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([8, 8, 9, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True),
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([8, 9, -1], pitched=True)
    ),
    library.low_pass_glissandi(
        selector=trinton.logical_ties(pitched=True, exclude=[3, -1])
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_e(hand="lh")),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=3, hand="rh")),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), library.boxed_markup(string="( Tasten )")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.Dynamic("p"), abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.LilyPondLiteral(
    #             [
    #                 r"\once \override Staff.DynamicText.X-extent = ##f",
    #                 r"\once \override Staff.DynamicText.X-offset = -1",
    #             ],
    #             site="before",
    #         ),
    #     ],
    #     selector=trinton.select_logical_ties_by_index([0, 2], first=True),
    # ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=3, hand="lh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["epsilon intermittent voice 2"],
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler([-9, -3]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[16],
    fermata="middle-fermata",
    font_size=15,
    clef_whitespace=True,
    voice_names=[
        "piano 1 voice",
        "piano 2 voice",
        "piano 3 voice",
        "piano 4 voice",
        "piano 5 voice",
    ],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (6, 10)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 tempo_string="97 1/2",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             library.metronome_markups(
#                 tempo_string="138 3/4",
#                 previous_tempo_string="97 1/2",
#                 string_only=True,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=16,
#         full_string=True,
#         right_padding=0,
#     ),
#     voice=score["Global Context"],
# )

for measures, padding in zip([(1,), (5,), (10,)], [7, 7, 7]):
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            measures,
        ),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="138 3/4",
                    previous_tempo_string=None,
                    padding=padding,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measures, padding in zip(
    [(4,), (7,), (11,)],
    [7, 7, 7],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="33",
                    previous_tempo_string=None,
                    padding=padding,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )


# trinton.make_music(
#     lambda _: trinton.select_target(_, (12,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"^ \markup {",
#                     r"  \raise #11 \with-dimensions-from \null",
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

# beautification

# library.handle_accidentals(score=score)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/09",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
