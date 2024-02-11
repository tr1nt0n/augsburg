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
    ts.assemble_section_ts([[(5, 4) for _ in range(0, 12)], [(6, 8)], [(1, 4)]])
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    evans.PitchHandler(pitch_list=[["cs'", "as'", "cs''"]]),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    abjad.slur,
    voice=score["piano 1 voice"],
    beam_meter=True,
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    evans.PitchHandler(pitch_list=[["cs,,", "gs,,", "cs,"]]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    abjad.slur,
    voice=score["piano 3 voice"],
    beam_meter=True,
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[14],
    fermata="extremely-long-fermata",
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
                tempo_string="138 3/4",
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
    lambda _: trinton.select_target(_, (13,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×18" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_before",
            ),
            # abjad.LilyPondLiteral(
            #     [
            #         r"^ \markup {",
            #         r"  \raise #8.5 \with-dimensions-from \null",
            #         r"  \override #'(font-size . 5.5)",
            #         r"  \concat {",
            #         r"""\abjad-metronome-mark-markup #2 #1 #2 #"49" """,
            #         r"  }",
            #         r"}",
            #     ],
            #     site="after",
            # ),
            abjad.BarLine(":|.", site="absolute_after"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_after",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1, -1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="138 3/4",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            r"""\markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #1 #2 #"49" } }""",
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=18,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

# beautification

library.handle_accidentals(score=score, force_accidentals=False)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (22, 23)),
#     trinton.detach_command(
#         detachments=[abjad.Articulation], selector=trinton.pleaves()
#     ),
#     voice=score["35 voice 1"],
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/12",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
