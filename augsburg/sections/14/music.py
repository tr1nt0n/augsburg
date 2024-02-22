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
                (6, 4),
                (6, 4),
                (5, 4),
                (5, 4),
                (5, 4),
                (5, 4),
                (5, 4),
                (5, 4),
                (1, 4),
                (1, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (12, 8),
                (4, 4),
                (4, 4),
                (4, 4),
                (2, 4),
                (2, 25),
                (1, 4),
            ]
        ]
    )
)

# rh music

for voice_name in ["piano 1 voice", "piano 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 2)),
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
        trinton.attachment_command(
            attachments=[library.clef_whitespace_literal],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (11, 14)),
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
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (16, 20)),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                4,
                treat_tuplets=False,
            )
        ),
        rmakers.trivialize,
        rmakers.extract_trivial,
        trinton.attachment_command(
            attachments=[abjad.Tie()], selector=trinton.pleaves(exclude=[4, -1])
        ),
        trinton.aftergrace_command(
            invisible=True, selector=trinton.select_logical_ties_by_index([-1])
        ),
        library.low_pass_glissandi(
            no_ties=True,
            tweaks=[abjad.Tweak(r"- \tweak Glissando.style #'dotted-line")],
            selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        ),
        library.low_pass_glissandi(
            no_ties=True,
            selector=trinton.select_logical_ties_by_index([5, -1], pitched=True),
        ),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override NoteHead.transparent = ##t", site="before"
                )
            ],
            selector=trinton.select_leaves_by_index([5]),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
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
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([-3]),
    library.change_lines(lines=3, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "1. Magnet rechts",
                    "2. Magnet links",
                    "3. Magnetgruppe mit der Handfläche",
                ]
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.tremolo_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=7,
            stage=1,
            grace=True,
            grace_selector=trinton.select_logical_ties_by_index(
                [1, 5], pitched=True, grace=False
            ),
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            0,
            4,
            -3,
            [11, 14, 17, 21],
            4,
            0,
            -3,
            [11, 14, 17, 21],
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[-3], selector=trinton.pleaves(grace=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 4, 5], first=True, pitched=True, grace=False
        ),
    ),
    trinton.tremolo_command(selector=abjad.select.chords),
    trinton.change_notehead_command(
        notehead="la",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.no-ledgers = ##t",
                    r"\once \override NoteHead.duration-log = 2",
                ],
                site="before",
            ),
        ],
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [3, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "( Die Saiten in der höchsten Oktave",
                    "auf ihrer Rückseite klimpern )",
                ]
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                3,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("s. mf"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 4, 5, 6], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.RhythmHandler(
        evans.talea([10, 2, 3, 5, 2, 2, 4, 2, 4], 8, extra_counts=[0, 0, 2, 0])
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([2, 6, 9])
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1]), invisible=True
    ),
    evans.PitchHandler([-3, [11, 14, 17, 21]]),
    trinton.pitch_with_selector_command(
        pitch_list=[[11, 14, 17, 21]], selector=trinton.pleaves(grace=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.Articulation("espressivo")],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("s. f"), abjad.StartHairpin(">")],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="la",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.no-ledgers = ##t",
                    r"\once \override NoteHead.duration-log = 2",
                ],
                site="before",
            ),
        ],
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.Glissando.thickness = #7", site="before"
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False)
    ),
    library.low_pass_glissandi(
        selector=trinton.select_logical_ties_by_index([-2, -1]), no_ties=True
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False, exclude=[-1])),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea([5, 1, 4], 4)),
    evans.PitchHandler([9, -8, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.RhythmHandler(evans.talea([15, 1], 4)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler([9, -8, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 14)),
    library.change_lines(lines=1, clef="percussion"),
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
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.spanner_command(
        strings=[
            library.boxed_markup(string="Etwa 1 - 2 Klicks pro Puls").string,
            library.boxed_markup(string="7 - 8 Klicks").string,
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
    lambda _: trinton.select_target(_, (15,)),
    evans.RhythmHandler(rhythm.rhythm_a(index=4, stage=2, hand_swapping=True)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Score.Stem.direction = #UP",
                    r"\override Staff.TupletBracket.direction = #UP",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Score.Stem.direction",
                    r"\override Staff.TupletBracket.direction = #UP",
                ],
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #3 \override #'(font-name . "Bodoni72 Book Italic") { \hspace #4 Zirpen }"""
                ),
                r"- \tweak padding #2",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"fff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -4, -4, -1]),
    ),
    trinton.spanner_command(
        strings=[
            library.boxed_markup(string="Etwa 7 - 8 Klicks pro Puls").string,
            library.boxed_markup(string="Kontinuierliche Geräusch").string,
            library.boxed_markup(string="Möglichst kontinuierlicher Ton").string,
        ],
        selector=trinton.select_leaves_by_index(
            [0, 5, 5, -3], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=3,
        full_string=True,
        right_padding=-1.5,
    ),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 8)),
    evans.RhythmHandler(
        evans.talea([1], 4),
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-1, -2])),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [0, 2], 7, first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1, 3], 7, first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Styroporkugel auf dem Innenrahmen"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[9],
    fermata="long-fermata",
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
    measures=[10],
    fermata="middle-fermata",
    font_size=15,
    clef_whitespace=True,
    blank=True,
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
    measures=[21],
    fermata="extremely-short-fermata",
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
            library.metronome_markups(
                tempo_string="48 3/4",
                previous_tempo_string="33",
                padding=7.5,
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
                tempo_string="97 1/2",
                previous_tempo_string="48 3/4",
                padding=20.5,
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
                tempo_string="48 3/4",
                previous_tempo_string="97 1/2",
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/14",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="14",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
