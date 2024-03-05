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

score = library.augsburg_score(ts.assemble_section_ts([[(4, 4) for _ in range(0, 12)]]))

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            stage=1,
            grace=True,
            grace_selector=trinton.durational_selector(
                durations=[
                    abjad.Duration(3, 16),
                    abjad.Duration(1, 8),
                    abjad.Duration(1, 16),
                ],
            ),
            custom_talea_denominator=16,
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_adumbration_pitches(index=0)),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [3, 4, 7, 8, 9, 10], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.return_adumbration_pitches(index=-12),
        selector=trinton.logical_ties(pitched=True, grace=True),
    ),
    pitch.pitch_cattenaires_graces(articulation="marcato"),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index([5], pitched=True, grace=True),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 4, 8], pitched=True, grace=True
        ),
    ),
    library.cattenaires_trills(
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[3, 11]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartBeam(), abjad.StopBeam()],
        ),
        selector=trinton.select_leaves_by_index(
            [2, 2, 4, 7, 12, 16, 20, 22], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=0, right=1)],
        selector=trinton.select_leaves_by_index(
            [
                2,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=1)],
        selector=trinton.select_leaves_by_index(
            [
                4,
                7,
                12,
                16,
                20,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=2, right=1)],
        selector=trinton.select_leaves_by_index([22], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { Trillo accentato: } \line {Wie dicker Hagel, der auf die Erde prasselt. } } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(
            pitched=True, grace=False, first=True, exclude=[3, 11]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [library.change_to_lh, library.change_to_rh],
        ),
        selector=trinton.select_leaves_by_index([3, 5, 8], pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[
            library.change_to_lh,
        ],
        selector=trinton.select_logical_ties_by_index(
            [-2], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("f"),
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            trinton.make_custom_dynamic("s. ff"),
            trinton.make_custom_dynamic("s. p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 2, 3, 5, 5, 6, 10, 10, 11, 12, 15],
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\voiceOne", site="before"),
            abjad.LilyPondLiteral(r"\oneVoice", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            stage=1,
            grace=True,
            grace_selector=trinton.durational_selector(
                durations=[
                    abjad.Duration(3, 16),
                    abjad.Duration(5, 32),
                    abjad.Duration(1, 8),
                    abjad.Duration(3, 32),
                    abjad.Duration(1, 16),
                    abjad.Duration(1, 32),
                ],
            ),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_adumbration_pitches(index=14)),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index([8], pitched=True, grace=False),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([3], pitched=True, grace=False),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 10, 11], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_logical_ties_by_index(
            [
                1,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-3,
        selector=trinton.select_logical_ties_by_index(
            [
                -1,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.return_adumbration_pitches(index=-2),
        selector=trinton.logical_ties(pitched=True, grace=True),
    ),
    pitch.pitch_cattenaires_graces(articulation="marcato"),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                9,
                10,
                15,
                16,
                19,
                28,
            ],
            pitched=True,
            grace=True,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                9,
                10,
                13,
                14,
                21,
            ],
            pitched=True,
            grace=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [8, 11, 22, 24, 25, 30], pitched=True, grace=True
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
                7,
                20,
                29,
            ],
            pitched=True,
            grace=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartBeam(), abjad.StopBeam()],
        ),
        selector=trinton.select_leaves_by_index(
            [1, 6, 9, 14, -2, -2], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=2)],
        selector=trinton.select_leaves_by_index([3, 6], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=2, right=1)],
        selector=trinton.select_leaves_by_index([14], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=1)],
        selector=trinton.select_leaves_by_index([9], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=3, right=0)],
        selector=trinton.select_leaves_by_index([-2], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(
            pitched=True, grace=False, first=True, exclude=[1, 3, 7, 8, 11, 12]
        ),
    ),
    library.cattenaires_trills(
        selector=trinton.logical_ties(
            pitched=True, grace=False, exclude=[1, 3, 7, 8, 11, 12]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [library.change_to_rh, library.change_to_lh],
        ),
        selector=trinton.select_leaves_by_index(
            [3, 4, 5, 7, 9, 11, 12, 18, 19, 20, 21, 22, 26, 27, 28, 29],
            pitched=True,
            grace=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [library.change_to_rh, library.change_to_lh],
        ),
        selector=trinton.select_logical_ties_by_index(
            [3, 6, 10, -2, -1], first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            library.change_to_rh,
        ],
        selector=trinton.select_logical_ties_by_index([11], first=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            library.change_to_rh,
        ],
        selector=trinton.select_logical_ties_by_index(
            [17], pitched=True, first=True, grace=True
        ),
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [
                19,
                19,
            ],
            pitched=True,
            grace=True,
        ),
    ),
    trinton.ottava_command(
        octave=2,
        selector=trinton.select_leaves_by_index([9, 10], pitched=True, grace=True),
    ),
    trinton.ottava_command(
        octave=3,
        selector=trinton.select_leaves_by_index([4, 4], pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.Stem.cross-staff = ##t",
                    r"\once \override Voice.Stem.Y-extent = #'(0 . 0)",
                    r"\once \override Voice.Stem.details.lengths = #'(34)",
                    r"\once \override Voice.Flag.cross-staff = ##t",
                    r"\once \override Voice.Flag.Y-extent = #'(0 . 0)",
                    r"\once \override Voice.Flag.Y-offset = -34",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                4,
                5,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.Stem.cross-staff = ##t",
                    r"\once \override Voice.Stem.Y-extent = #'(0 . 0)",
                    r"\once \override Voice.Stem.details.lengths = #'(30)",
                    r"\once \override Voice.Flag.cross-staff = ##t",
                    r"\once \override Voice.Flag.Y-extent = #'(0 . 0)",
                    r"\once \override Voice.Flag.Y-offset = -30",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                10,
                11,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.Stem.cross-staff = ##t",
                    r"\once \override Voice.Stem.Y-extent = #'(0 . 0)",
                    r"\once \override Voice.Stem.details.lengths = #'(34)",
                    r"\once \override Voice.Flag.cross-staff = ##t",
                    r"\once \override Voice.Flag.Y-extent = #'(0 . 0)",
                    r"\once \override Voice.Flag.Y-offset = -30",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([12, 13], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Score.TrillSpanner.staff-padding = 2.5",
                    r"\override Score.DynamicLineSpanner.padding = 2",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Score.TrillSpanner.staff-padding",
                    r"\revert Score.DynamicLineSpanner.padding",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            trinton.make_custom_dynamic("fffp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            trinton.make_custom_dynamic("fffpppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                6,
                7,
                7,
                8,
                8,
                9,
                12,
                12,
                13,
                14,
                14,
                17,
            ],
            first=True,
            grace=False,
        ),
    ),
    voice=score["piano 1 voice"],
)

# lh music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Accidental.stencil", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 7)),
    evans.RhythmHandler(
        evans.talea([-9, -7], 16, treat_tuplets=False),
    ),
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Clef("bass"),
        ],
        selector=trinton.select_logical_ties_by_index([0, -1], first=True),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 12)),
    evans.RhythmHandler(evans.talea([1, -36], 32)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["d,,,,"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-30", site="before"
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 1, 4, 5, 9, 10, 14, 15, 18, 19]),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["piano 3 voice"],
)

pedal_leaves = abjad.select.leaves(score["piano 3 voice"], pitched=True, grace=False)

for leaf in pedal_leaves:
    abjad.overrides.override(leaf).Stem.direction = abjad.DOWN

# globals

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
                tempo_string="97 1/2",
                previous_tempo_string=None,
                padding=6.5,
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/16",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="16",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
