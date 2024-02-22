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
                (37, 14),
                (1, 4),
                (13, 4),
                (1, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (1, 4),
                (5, 4),
                (5, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (1, 4),
            ]
        ]
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(19, 18)])),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string="Maultrommel + Vibrator", tweaks=[r"- \tweak padding #25"]
            ),
            library.clef_whitespace_literal,
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.tuplet([(19, 18)])),
        direction=abjad.UP,
        voice_name="sounding voice",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.aftergrace_command(selector=trinton.select_logical_ties_by_index([-1])),
    library.low_pass_glissandi(no_ties=True),
    voice=score["piano 1 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.aftergrace_command(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([2, 21, 0]),
    library.low_pass_glissandi(),
    trinton.linear_attachment_command(
        attachments=[
            library.start_jaw_harp_literal,
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.BreathMark(),
            library.stop_jaw_harp_literal,
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 1, 1, -1, -1, -1], first=True, pitched=True
        ),
        direction=abjad.DOWN,
    ),
    abjad.slur,
    voice=score["sounding voice"],
)

for voice_name in ["piano 1 voice", "piano 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (3,)),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                4,
            )
        ),
        trinton.attachment_command(
            attachments=[abjad.Tie()], selector=trinton.pleaves(exclude=[-1])
        ),
        trinton.aftergrace_command(
            invisible=True,
            selector=trinton.select_logical_ties_by_index([-1], pitched=True),
        ),
        library.low_pass_glissandi(no_ties=True),
        library.change_lines(lines=1, clef="percussion"),
        voice=score[voice_name],
    )

    for measures in [(5, 6), (9, 10)]:
        trinton.make_music(
            lambda _: trinton.select_target(_, measures),
            evans.RhythmHandler(
                evans.talea(
                    [
                        1,
                    ],
                    4,
                )
            ),
            trinton.attachment_command(
                attachments=[abjad.Tie()], selector=trinton.pleaves(exclude=[-1])
            ),
            trinton.aftergrace_command(
                invisible=True,
                selector=trinton.select_logical_ties_by_index([-1], pitched=True),
            ),
            library.low_pass_glissandi(
                no_ties=True,
                tweaks=[abjad.Tweak(r"- \tweak Glissando.style #'dotted-line")],
            ),
            library.change_lines(lines=1, clef="percussion"),
            voice=score[voice_name],
        )

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "Auf dem Deckel mit Styroporkugeln",
                    "Möglichst kontinuierlicher Ton",
                ]
            ),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"fffff"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.boxed_markup(string=["( Etwa 1 - 2 Klicks pro Puls )"]).string,
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=3,
        right_padding=1,
        full_string=True,
        style="dashed-line-with-hook",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.talea([1, 3], 4)),
    evans.PitchHandler(["cs'", "gs'"]),
    library.change_lines(lines=5, clef="treble"),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("sffz pp")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup("Tasten")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.tremolo_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "Auf dem Deckel",
                    "mit Styroporkugeln",
                ]
            ),
            abjad.Dynamic('"fffff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ffff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.spanner_command(
        strings=[
            library.boxed_markup(string="Etwa 1 - 2 Klicks pro Puls").string,
            library.boxed_markup(string="2 - 3 Klicks").string,
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=3,
        full_string=True,
        right_padding=0,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.change_lines(lines=5, clef="treble"),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.PitchHandler(
        [
            "g''''",
            "g''''",
            "g''''",
            "a''''",
            "a''''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(string="Tasten"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    library.interruptive_polyphony(hand="rh", stage=1, dynamic=False),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            64,
            extra_counts=[-27, -12],
        )
    ),
    evans.PitchHandler([["ds''''", "e''''", "g''''", "a''''"]]),
    trinton.pitch_with_selector_command(
        pitch_list=["cs'''", "gs'''", "a'''", "b'''", "a'''", "gs'''"],
        selector=trinton.patterned_tie_index_selector([0, 4, 12, 13, 14, 16], 24),
    ),
    trinton.respell_tuplets_command(),
    trinton.notehead_bracket_command(),
    library.imbrication_command(
        indices=[0, 4, 12, 13, 14, 16], period=24, name="Jolin", direction=abjad.DOWN
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 13)),
    trinton.aftergrace_command(
        notes_string="g'''16 fs'''16s",
        selector=trinton.patterned_tie_index_selector([5], 6, first=True, pitched=True),
        slash=True,
        glissando=False,
        invisible=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("sharp-articulation")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, -1])),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Accidental.stencil = ##f", site="before"
            ),
            abjad.Articulation("sharp-articulation"),
        ],
        selector=trinton.select_leaves_by_index([3, 5, 7], pitched=True, grace=True),
    ),
    voice=score["Jolin"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.RhythmHandler(evans.tuplet([(-19, 18), (1,)])),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True),
        invisible=True,
    ),
    evans.PitchHandler([["d,", "e,,"]]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 2, 2, -1], pitched=True, first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([1, 2], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.BreathMark()],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
            grace=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="( Tasten )"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    library.low_pass_glissandi(no_ties=True),
    trinton.tremolo_command(
        selector=trinton.logical_ties(exclude=[-1], grace=False, pitched=True)
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.change_lines(lines=5, clef="treble"),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    library.interruptive_polyphony(hand="lh", stage=1, dynamic=False),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([-1]), invisible=True
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 3 voice"],
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.tuplet([(1,), (3, 1)])),
    evans.PitchHandler([-8, -5, -5]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([12, 1], 4)),
    evans.PitchHandler([-5, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.talea([1, 4, 2, 1], 8)),
    evans.PitchHandler([9, -5, -3, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[2],
    fermata="short-fermata",
    font_size=15,
    clef_whitespace=False,
    blank=False,
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
    measures=[4, 8, 14],
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

for measure in [
    7,
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
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                padding=9.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="48 3/4",
                previous_tempo_string="60",
                padding=3,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #5 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    r"""\abjad-metronome-mark-markup #2 #0 #2 #"77" """,
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
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="48 3/4",
                previous_tempo_string=None,
                padding=6,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="33",
                previous_tempo_string="48 3/4",
                padding=18,
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/13",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="13",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
