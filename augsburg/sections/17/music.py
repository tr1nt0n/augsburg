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

score = library.augsburg_score(ts.assemble_section_ts([[(37, 4), (1, 4)]]))

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [-2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, -1000],
            16,
            extra_counts=[-11],
        )
    ),
    evans.PitchHandler([["e'", "a'", "d''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.LilyPondLiteral(r"\revert Staff.Accidental.X-extent", site="before"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("sffz"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartBeam(),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([0, 11], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
            abjad.LilyPondLiteral(
                r"\override Staff.Accidental.X-extent = ##f", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    library.color_music(color="\三"),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    -1000,
                ],
                16,
                extra_counts=[-2],
            )
        ),
        direction=abjad.UP,
        voice_name="35 voice",
        preprocessor=trinton.fuse_sixteenths_preprocessor((37,)),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((37,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["fs'", "g'", "as'", "b'", "cs''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r'\markup \fontsize #-2 \with-color \一 { \musicglyph #"f" }',
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
        right_padding=3,
        full_string=True,
        style="solid-line-with-hook",
    ),
    trinton.invisible_rests(),
    trinton.notehead_bracket_command(),
    library.color_music(color="\一"),
    voice=score["35 voice"],
    beam_meter=True,
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                -36,
                1,
                -36,
                1,
                -36,
                1,
                -36,
                1,
                -36,
                1,
                -36,
                2,
                -72,
                2,
                -72,
                2,
                -72,
                2,
                -72,
                2,
                -72,
                2,
                -72,
                2,
                -72,
                2,
                -72,
            ],
            64,
        ),
    ),
    evans.PitchHandler(["g,,,"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-20", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slapped", site="before"),
            abjad.LilyPondLiteral(r"\revert-noteheads", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    library.color_music(color=r"\四"),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    -100,
                ],
                4,
            ),
        ),
        direction=abjad.UP,
        voice_name="4 voice",
    ),
    voice=score["piano 3 voice"],
)

pedal_rests = abjad.select.rests(score["piano 3 voice temp"])

pedal_leaves = abjad.select.leaves(
    score["piano 3 voice temp"], pitched=True, grace=False
)

for leaf in pedal_leaves:
    abjad.attach(abjad.bundle(abjad.LaissezVibrer(), r"- \tweak direction #UP"), leaf)

for leaf in pedal_rests:
    previous_leaf = abjad.select.with_previous_leaf(leaf)[0]
    if isinstance(previous_leaf, abjad.Note):
        abjad.attach(abjad.StopPianoPedal(), leaf)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(
        [
            ["c,,", "c,"],
            ["e,,", "e,"],
            ["a,,", "a,"],
            ["bf,,", "bf,"],
            ["f,,", "f,"],
            ["af,,", "af,"],
            ["g,", "g"],
            ["b,", "b"],
            ["d,,", "d,"],
            ["ef,,", "ef,"],
            ["gf,,", "gf,"],
            ["df,", "df"],
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string=r'\markup \fontsize #-2 \with-color \二 { \musicglyph #"m" \musicglyph #"f" }',
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
        right_padding=3,
        full_string=True,
        style="solid-line-with-hook",
    ),
    library.color_music(color="\二"),
    voice=score["4 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[2],
    fermata="very-long-fermata",
    font_size=15,
    clef_whitespace=False,
    blank=True,
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
#     2,
#     3,
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
                previous_tempo_string="97 1/2",
                padding=15,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
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

# library.clean_graces(score=score)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/17",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="17",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
