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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=0, stage=2),
    ),
    rmakers.unbeam,
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=8, stage=1),
    ),
    rmakers.unbeam,
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.rhythm_d(
                stage=2,
                hand="rh",
                tuplet_selector=trinton.select_leaves_by_index(
                    [0, 1, 2, 4, 6, 9], pitched=True
                ),
                inverse_tuplet_directions=False,
            )
        ),
        direction=abjad.DOWN,
        voice_name="delta voice",
        preprocessor=trinton.fuse_eighths_preprocessor((9, 10, 7)),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    rmakers.force_rest,
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.Rest.transparent = ##t",
                    r"\once \override Voice.Dots.transparent = ##t",
                ],
                "before",
            ),
        ],
        selector=abjad.select.rests,
    ),
    voice=score["delta voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(pitch.return_adumbration_pitches(index=0)),
    trinton.octavation(
        octave=2, selector=trinton.select_leaves_by_index([0, 2], pitched=True)
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [1, 3, 8, 9, 10, 11, 13, 15, 17, -6, -1], pitched=True
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g'", "g''"],
        selector=trinton.patterned_tie_index_selector([1, 4], 7),
    ),
    library.imbrication_command(
        indices=[1, 4],
        period=7,
        direction=abjad.DOWN,
        name="alpha imbrication",
        hocket=False,
    ),
    voice=score["piano 1 voice temp"],
)

for leaf in abjad.select.leaves(score["alpha imbrication"]):
    for indicator in abjad.get.indicators(leaf, abjad.Articulation):
        abjad.detach(abjad.Articulation, leaf)
        abjad.attach(indicator, leaf, direction=abjad.UP)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.vertical_accidentals(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    voice=score["piano 1 voice temp temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    rmakers.unbeam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartBeam(),
            abjad.StopBeam(),
            abjad.BeamCount(left=1, right=1),
            abjad.BeamCount(left=1, right=1),
            abjad.StartBeam(),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([0, 26, 26, 28, 28, -1]),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_logical_ties_by_index(
            [-4, -3, -2, -1], first=True, pitched=True
        )
    ),
    library.color_music(color=r"\一"),
    voice=score["piano 1 voice temp temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #12", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    voice=score["piano 1 voice temp temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    library.manual_beam_positions(positions=(-24, -24)),
    library.color_music(color=r"\一"),
    voice=score["alpha imbrication"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(pitch.return_adumbration_pitches(index=28)),
    trinton.octavation(octave=1, selector=trinton.select_tuplets_by_index([1, 2, 3])),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([0, 5, 10], pitched=True)
    ),
    rmakers.unbeam,
    trinton.notehead_bracket_command(),
    trinton.pitch_with_selector_command(
        pitch_list=["a''", "af''"],
        selector=trinton.patterned_tie_index_selector([0, 3], 7),
    ),
    trinton.vertical_accidentals(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.color_music(color=r"\三"),
    library.imbrication_command(
        indices=[0, 3],
        period=7,
        direction=abjad.UP,
        name="delta imbrication",
        hocket=False,
    ),
    voice=score["delta voice"],
)

for leaf in abjad.select.leaves(score["delta imbrication"]):
    for indicator in abjad.get.indicators(leaf, abjad.LilyPondLiteral):
        abjad.detach(indicator, leaf)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.manual_beam_positions(positions=(-9, -9)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-2", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    voice=score["delta voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    library.manual_beam_positions(positions=(26, 26)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.color_music(color=r"\三"),
    voice=score["delta imbrication"],
)

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
                    r"  \raise #17 \with-dimensions-from \null",
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
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1, -1]),
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
    voice=score["piano 1 voice temp temp"],
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
    voice=score["piano 1 voice temp temp"],
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

# library.handle_accidentals(score=score, force_accidentals=False)

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
