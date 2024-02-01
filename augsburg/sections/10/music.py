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
                (4, 16),
                (4, 16),
                (4, 16),
                (1, 4),
                (3, 1),
                (5, 2),
                (7, 4),
                (4, 4),
                (5, 8),
                (4, 8),
                (7, 16),
                (6, 16),
                (6, 16),
                (7, 16),
                (4, 8),
                (5, 8),
                (4, 4),
                (7, 4),
                (10, 4),
                (12, 4),
                (4, 4),
                (3, 4),
                (1, 4),
                (7, 8),
                (1, 4),
            ],
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
    library.interruptive_polyphony(hand="rh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="lh",
            tuplet_selector=trinton.select_leaves_by_index([-1], pitched=True),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=13)),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([-4], pitched=True)
    ),
    trinton.octavation(
        octave=-2, selector=trinton.select_leaves_by_index([-1, -2, -3], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            library.change_to_lh,
            library.revert_to_rh,
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -3, -1, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #UP", site="before"
            ),
        ],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([-3, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = 12"
            ),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([1], 16)),
    evans.PitchHandler(pitch_list=[["cs'", "as'", "cs''"]]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto"), abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ff"), abjad.StartHairpin(">"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="rh",
            tuplet_selector=trinton.select_logical_ties_by_index(
                [3, 8, 13, 15, 19, 22, 24, 28, 33], pitched=True
            ),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=15)),
    trinton.octavation(
        octave=-3,
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                7,
                8,
                10,
                15,
                16,
                17,
                26,
                31,
                32,
                33,
                38,
                39,
                40,
                41,
                55,
                56,
                57,
                61,
                62,
                63,
                64,
                72,
                73,
                74,
                -3,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index([53, 54, 65, 66], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, 8, 8, 12, 17, 17, 21, 34, 35, 40, 42, 42, -13],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                4,
                5,
                6,
                7,
                12,
                13,
                14,
                15,
                16,
                21,
                22,
                23,
                24,
                25,
                27,
                28,
                29,
                30,
                31,
                35,
                36,
                37,
                38,
                39,
                42,
                43,
                44,
                45,
                46,
                48,
                49,
                50,
                51,
                52,
                56,
                57,
                58,
                59,
                60,
                65,
                66,
                67,
                68,
                69,
            ],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">"), abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [26, 32, 33, 40, 41], pitched=True, first=True
        ),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 18)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=0, stage=3, hand_swapping=False),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True),
        invisible=True,
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=["Auf dem Deckel", "mit Styroporkugeln"],
                # tweaks=[r"- \tweak padding #12"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, 4, 5, 7, 8, 11, 18, 18, 19], first=True, pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 20)),
    library.change_lines(
        lines=5, clef="bass", selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 1 voice"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (24,)),
#     evans.RhythmHandler(evans.talea([1], 8)),
#     evans.PitchHandler(pitch_list=[["cs'", "as'", "cs''"]]),
#     trinton.attachment_command(
#         attachments=[abjad.Clef("treble")],
#         selector=trinton.select_leaves_by_index([0], pitched=True)
#     ),
#     trinton.attachment_command(
#         attachments=[abjad.Articulation("tenuto")],
#         selector=trinton.logical_ties(pitched=True, first=True),
#     ),
#     trinton.linear_attachment_command(
#         attachments=[abjad.Dynamic("ff"), abjad.StartHairpin("--"), abjad.StopHairpin()],
#         selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
#     ),
#     abjad.beam,
#     abjad.slur,
#     voice=score["piano 1 voice"],
# )

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(3, -1, 3, -1, 3, -1, 3, -1, 3, -1)],
            nested_ratios=[
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ],
            nested_vectors=[-2],
            nested_period=10,
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=9)),
    trinton.octavation(octave=-2),
    trinton.octavation(octave=-1, selector=trinton.select_tuplets_by_index([-1])),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.LilyPondLiteral(
                r"\once \override Staff.TupletBracket.direction = #DOWN", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([-5, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = 12"
            ),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    abjad.beam,
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([3])),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.interruptive_polyphony(hand="lh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, 2], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([3])
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([1], 16)),
    evans.PitchHandler(pitch_list=[["cs,,", "gs,,", "cs,"]]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto"), abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Accidental.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.beam,
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([3, -1]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="lh",
            tuplet_selector=trinton.select_logical_ties_by_index(
                [20, 23, 26, 27, 28], pitched=True
            ),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=15)),
    trinton.octavation(
        octave=-3,
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 7, 8, 9, 15, 20, 26, 27, 31, 32, 34, 35, 36, 37, 38], pitched=True
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [5, 16, 17, 18, 40, 41, 42], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                5,
                7,
                10,
                14,
                14,
                16,
                16,
                18,
                18,
                -15,
            ],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_logical_ties_by_index(
            [20, 21, 22, 25, 26, 27, 30, 31, 32, 33, 34, 35, 36, 37, 38],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">"), abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [16, 17], pitched=True, first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_logical_ties_by_index(
            [-15, -1], first=True, pitched=True
        ),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 18)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=1, stage=3, hand_swapping=False),
    ),
    library.change_lines(
        lines=1,
        clef="percussion",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ffff"'),
            abjad.StartHairpin("|>"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                1,
                2,
                2,
                3,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                -7,
                -7,
                -6,
                -5,
                -5,
                -4,
                -3,
                -3,
                -2,
                -1,
            ],
            first=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 20)),
    library.change_lines(
        lines=5, clef="bass", selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 3 voice"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (24,)),
#     evans.RhythmHandler(evans.talea([1], 8)),
#     evans.PitchHandler(pitch_list=[["cs,,", "gs,,", "cs,"]]),
#     trinton.attachment_command(
#         attachments=[abjad.Articulation("tenuto")],
#         selector=trinton.logical_ties(pitched=True, first=True),
#     ),
#     trinton.linear_attachment_command(
#         attachments=[abjad.Dynamic("ff"), abjad.StartHairpin("--"), abjad.StopHairpin()],
#         selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
#     ),
#     abjad.beam,
#     abjad.slur,
#     voice=score["piano 3 voice"],
# )

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler([9, -9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler([-9, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[4],
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

trinton.fermata_measures(
    score=score,
    measures=[23],
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

trinton.fermata_measures(
    score=score,
    measures=[25],
    fermata="very-short-fermata",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 17)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                tempo_string="48 3/4",
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

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (5,),
    ),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                padding=13.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

for measure in [
    1,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

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
                    r"""\abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"77" #"1" #"4"  """,
                    r"  }",
                    r"}",
                ],
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (24,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×7" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #16 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    r"""\abjad-metronome-mark-markup #2 #1 #2 #"55" """,
                    r"  }",
                    r"}",
                ],
                site="after",
            ),
            abjad.BarLine(":|.", site="absolute_after"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_after",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1, -1, -1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (19,),
    ),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string="48 3/4",
                padding=13.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/10",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
