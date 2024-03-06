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
                (37, 4),
                (1, 4),
                (5, 8),
                (1, 4),
                (3, 4),
                (1, 4),
                (7, 8),
                (1, 4),
                (1, 4),
                (1, 4),
                (1, 4),
                (9, 8),
                (1, 4),
                (2, 4),
                (1, 4),
            ],
        ],
    ),
)

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

counter = 1

for measure in [3, 5, 7]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        trinton.rewrite_meter_command(),
        trinton.IntermittentVoiceHandler(
            evans.RhythmHandler(
                evans.tuplet([(1, 1, 1)]),
            ),
            direction=abjad.UP,
            voice_name=rf"sounding voice {counter}",
            temp_name=rf"temp {counter}",
        ),
        voice=score["piano 1 voice"],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.aftergrace_command(
            selector=trinton.select_logical_ties_by_index([-1], pitched=True)
        ),
        library.low_pass_glissandi(no_ties=True),
        voice=score[rf"piano 1 voice temp {counter}"],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        rmakers.rewrite_dots,
        trinton.respell_tuplets_command(),
        trinton.notehead_bracket_command(),
        trinton.aftergrace_command(
            selector=trinton.select_logical_ties_by_index([-1], pitched=True)
        ),
        library.low_pass_glissandi(no_ties=True),
        voice=score[rf"sounding voice {counter}"],
    )

    counter += 1

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.PitchHandler([12, 17, 7, 7]),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[library.clef_whitespace_literal],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.no-ledgers = ##t",
                    r"\once \override Accidental.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Maultrommel + Vibrator")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2, 2, -1], pitched=True),
    ),
    abjad.slur,
    trinton.hooked_spanner_command(
        string=r"\jawharp-crook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=23.65,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
    ),
    voice=score["sounding voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.PitchHandler([12, 21, 7, 7]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.no-ledgers = ##t",
                    r"\once \override Accidental.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2, 2, -1], pitched=True),
    ),
    abjad.slur,
    trinton.hooked_spanner_command(
        string=r"\jawharp-crook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
    ),
    voice=score["sounding voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.PitchHandler([12, 24, 7, 7]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.no-ledgers = ##t",
                    r"\once \override Accidental.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2, 2, -1], pitched=True),
    ),
    abjad.slur,
    trinton.hooked_spanner_command(
        string=r"\jawharp-crook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=21.5,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
    ),
    voice=score["sounding voice 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 11)),
    evans.RhythmHandler(evans.talea([2, 2, 1, 1], 8)),
    trinton.noteheads_only(),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1]), invisible=True
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 5)], nested=True),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ffff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mf"'),
            library.boxed_markup(
                string=[
                    "( Den Vibrator nach Beendigung der Phrase",
                    "auf den Saiten in der Nähe der Maultrommel belassen )",
                ]
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2, 2, 3, 4, -1]),
    ),
    trinton.spanner_command(
        strings=["\jawharp-crook", "\jawharp-waist", "\jawharp-string"],
        selector=trinton.select_leaves_by_index([0, 1, 1, 2, 2, -1]),
        style="solid-line-with-arrow",
        padding=15,
        full_string=True,
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -1,
                1,
            ],
            8,
        ),
    ),
    evans.PitchHandler([["a", "e'", "bf'", "d''", "ef''"]]),
    library.change_lines(lines=5, clef="treble"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "Bogen mit Schmuckdraht,",
                    "die Enden des Drahtes so weit wie möglich auseinander halten",
                ]
            ),
            library.return_clef_whitespace_literal(offset_pair=(-4.5, 0)),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartBeam(),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 2, 2, -1, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"so viel Draht wie möglich pro Bogen verwenden",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15,
        right_padding=3,
        direction="down",
        full_string=False,
        style="dashed-line-with-up-hook",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=["( Entfernen des", "Vibrators aus", "den Saiten )"]
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(
        evans.accelerando([(1, 8), (1, 20), (1, 32)], [(1, 20), (1, 8), (1, 32)])
    ),
    evans.PitchHandler(
        [
            "c'''''",
            "d'''''",
            "d'''''",
            "d'''''",
            "e'''''",
            "e'''''",
            "e'''''",
        ]
    ),
    # library.change_lines(lines=5, clef="treble"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 7)], nested=True),
        zero_padding=True,
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "R.H. Tasten,",
                    "L.H. Harmonisches Glissando",
                    "auf der höchsten Saite",
                ]
            ),
            abjad.Dynamic("ppppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
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
                [
                    r"\once \override NoteHead.no-ledgers = ##t",
                    r"\once \override Voice.Accidental.stencil = ##f",
                ],
                site="before",
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

for measure in [3, 5, 7]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.aftergrace_command(selector=trinton.logical_ties(), invisible=True),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        voice=score["piano 3 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([["d,", "d,,"]]),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">"), abjad.LaissezVibrer()],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(evans.talea([-4, 4, -3, 1, -100], 16)),
    evans.PitchHandler([["d,", "d,,"]]),
    trinton.invisible_rests(),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.LaissezVibrer(),
            trinton.make_custom_dynamic("sffz"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1]), invisible=True
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
    ),
    voice=score["piano 3 voice"],
)

# filter music

for measure, final_pitch in zip([3, 5, 7], [-3, 0, 9]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        trinton.aftergrace_command(),
        evans.PitchHandler([-8, final_pitch]),
        library.low_pass_glissandi(),
        voice=score["piano 5 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.TextScript.whiteout = 0",
                site="before",
            ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #4 { \hspace #45 \right-column \override #'(font-name . "Bodoni72 Book Italic") { \line { Dezember 2023 - März 2024 } \line { Leipzig DE - Providence RI } } }"""
                ),
                r"- \tweak X-extent ##f",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[
        2,
    ],
    fermata="very-long-fermata",
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
    measures=[4, 6, 13],
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
    measures=[
        8,
    ],
    fermata="short-fermata",
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
    measures=[9, 10, 11],
    fermata="extremely-long-fermata",
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
    measures=[
        15,
    ],
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

for measure in [
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
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
                previous_tempo_string="97 1/2",
                padding=15,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((Y-offset . 100))",
                site="absolute_after",
            )
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                library.boxed_markup(
                    string=["Endstück:", "Paraphog."],
                    fontsize=3,
                    font_name="Bodoni72 Book Italic",
                ),
                r"- \tweak padding 20",
            ),
            library.metronome_markups(
                tempo_string="33",
                previous_tempo_string="60",
                padding=31,
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
    lambda _: trinton.select_target(_, (12,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×9" \startMeasureSpanner', site="absolute_before"
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
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1, -1, -1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\revert Score.BarLine.color",
                    r"\revert Score.SpanBar.color",
                ],
                site="after",
            ),
            abjad.BarLine("|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([-1]),
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/17",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="17",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
