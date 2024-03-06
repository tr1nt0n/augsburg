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
    ts.assemble_section_ts([[(5, 4) for _ in range(0, 10)], [(1, 4), (3, 2), (1, 4)]])
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=0,
            stage=2,
            grace=True,
            grace_selector=trinton.select_logical_ties_by_index([2, -1]),
        )
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Magnet rechts"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            trinton.make_custom_dynamic("( mf )"),
            trinton.make_custom_dynamic("( mf )"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
                4,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 4], first=True, pitched=True, grace=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string="( SYNTHESIZER AUS )",
                tweaks=[r"- \tweak color \四"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=5,
            stage=1,
        )
    ),
    evans.PitchHandler([2, -1, 2, -1, 2, -1, -1, -1, -1, 2, -1, 2, -1, -1]),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string=["1. Magnet rechts", "2. Magnet links"])
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 7, 8, 11, -1], pitched=True, grace=False, first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 4, 5, 6, 6, 9, 10, 10, 12], grace=False, pitched=True, first=True
        ),
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(
        evans.talea(
            [4, 3, 4, 3, 4, 3, 4, 3, 4, 1000],
            8,
            extra_counts=[0, -1, 0, 0, 1],
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([0, 1])),
    evans.PitchHandler(
        [
            ["d'''", "f'''", "a'''", "c''''"],
            ["d'''", "f'''", "a'''", "c''''"],
            "ef,,",
            ["d'''", "f'''", "a'''", "c''''"],
            ["d'''", "f'''", "a'''", "c''''"],
            "ef,,",
            ["d'''", "f'''", "a'''", "c''''"],
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
        ]
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "416/35",
        ],
        as_ratios=True,
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                5,
                7,
            ],
            pitched=True,
        ),
    ),
    library.change_lines(lines=5, clef="treble"),
    trinton.change_notehead_command(
        notehead="la",
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 5, 6, 7, 8, 10, 11], pitched=True
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 7], first=True, pitched=True
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Accidental.font-size = 5", site="before"
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 7], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override NoteHead.no-ledgers = ##t")
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 5, 6, 7, 8, 10, 11], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 3, 4, 6], first=True, pitched=True
        ),
    ),
    trinton.tremolo_command(
        selector=trinton.select_logical_ties_by_index([0, 1, 3, 4, 6], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "Cluster: Die Saiten",
                    "in der höchsten Oktave",
                    "auf ihrer Rückseite klimpern",
                ]
            ),
            library.boxed_markup(string=["Note: Nagel + Vibrator"]),
        ],
        selector=trinton.select_logical_ties_by_index([0, 2], first=True, pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 3, 3, 2)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.talea([1, -1000], 2)),
    trinton.rewrite_meter_command(),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(string="Tastaturabdeckung"),
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea([19, -1], 16),
    ),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Styroporkugel auf dem Innenrahmen"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<|"),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    library.change_lines(lines=1, clef="percussion"),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=4,
            stage=1,
        )
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Magnet links")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 8)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=7,
            stage=2,
            grace=True,
        )
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string="Magnetgruppe mit der Handfläche",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([-2], grace=False, pitched=True)
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            ["d'''", "f'''", "a'''", "c''''"],
        ]
    ),
    library.change_lines(lines=5, clef="treble"),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override NoteHead.no-ledgers = ##t")
        ],
        selector=trinton.pleaves(),
    ),
    trinton.change_notehead_command(notehead="la", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Sim. wie das obere Notensystem")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.duration-log = 2", site="before"
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("( mp )", direction=abjad.UP),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 2, -1]),
        direction=abjad.UP,
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.talea([8, 8, 1, -3, -1000], 16, extra_counts=[0, 4])),
    evans.PitchHandler(pitch_list=["d,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2], first=True, pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 4)),
)

selections = abjad.select.leaves(score["piano 3 voice"])

selections = abjad.select.group_by_measure(selections)

measure_12 = selections[11]

evans.commands.wrap_in_cross_staff(measure_12)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(string="Tasten"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                2,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Stem.cross-staff = ##t",
                    r"\once \override Stem.Y-extent = #'(0 . 0)",
                    r"\once \override Stem.details.lengths = #'(37)",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.TupletBracket.direction = #DOWN",
                site="before",
            ),
        ],
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([2, 16, 1, 1], 16)),
    evans.PitchHandler(
        [
            9,
            -9,
            -3,
            9,
        ]
    ),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([1, 1, 3, 1, 1, 1, 2], 16)),
    evans.PitchHandler(
        [
            9,
            5,
            7,
            4,
            5,
            2,
            4,
            0,
            2,
            -1,
            0,
            -3,
            -1,
            -5,
            -3,
            -7,
            -5,
            -9,
        ]
    ),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    evans.RhythmHandler(evans.talea([1, 1, 2, 1, 1, 1, 1, 3], 32)),
    evans.PitchHandler(
        [
            -5,
            -9,
            -3,
            -7,
        ]
    ),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.RhythmHandler(evans.talea([10], 4)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler([-9, 7, -7]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler([7, -9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[11],
    fermata="extremely-short-fermata",
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
    measures=[13],
    fermata="very-long-fermata",
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
    lambda _: trinton.select_target(_, (6, 10)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="97 1/2",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                tempo_string="138 3/4",
                previous_tempo_string="97 1/2",
                string_only=True,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=16,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="97 1/2",
                previous_tempo_string="138 3/4",
                padding=7,
                string_only=False,
                parenthesis=False,
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = ##f", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #11 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    r"""\abjad-metronome-mark-markup #2 #0 #2 #"72" """,
                    r"  }",
                    r"}",
                ],
                site="after",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# beautification

# library.handle_accidentals(score=score)

library.clean_graces(score=score)

library.clean_time_signatures(score=score)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/08",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
