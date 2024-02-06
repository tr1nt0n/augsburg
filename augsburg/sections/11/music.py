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

# for measure in [
#     1,
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
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                padding=10,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
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
