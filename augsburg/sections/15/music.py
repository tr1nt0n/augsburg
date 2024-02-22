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
                index=-16,
                reduce=True,
                slice_tuple=(0, 4),
            )
        ]
    )
)

# rh music


# globals

# for measure in [
#     7,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #16 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    r"""\abjad-metronome-mark-mixed-number-markup #3 #0 #2 #"75" #"3" #"5"  """,
                    r"  }",
                    r"}",
                ],
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_before",
            ),
            abjad.BarLine(":|.", site="absolute_after"),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine(":|.|:", site="absolute_after"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "Adumbrationsstück:",
                    "a way to draw water",
                ],
                font_name="Bodoni72 Book Italic",
                fontsize=3,
                tweaks=[r"- \tweak padding #4"],
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×4" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "1 - 3"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "4"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta #f))""",
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 1 voice"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.Markup(
#                 r"""\markup { \raise #2.5 \with-dimensions-from \null \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #2 #"118" } }""",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (16, 18)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 tempo_string="138 3/4",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             r"""\markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #1 #2 #"49" } }""",
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=22,
#         full_string=True,
#         right_padding=0,
#     ),
#     voice=score["Global Context"],
# )

# beautification

library.handle_accidentals(score=score, force_accidentals=False)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 3)),
#     trinton.detach_command(
#         detachments=[abjad.Articulation],
#         selector=trinton.pitched_selector(pitches=["f", "c"]),
#     ),
#     voice=score["piano 1 voice"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.detach_command(
#         detachments=[abjad.Articulation], selector=trinton.pleaves(exclude=[0, 1])
#     ),
#     trinton.attachment_command(
#         attachments=[abjad.Articulation("marcato")],
#         selector=trinton.select_leaves_by_index([-4, -1], pitched=True),
#     ),
#     voice=score["piano 1 voice"],
# )

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/15",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="15",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
