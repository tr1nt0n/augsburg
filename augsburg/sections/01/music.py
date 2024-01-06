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

score = library.augsburg_score([(4, 4) for _ in range(0, 6)])

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.talea(
            [2, 4, 1, 1, 1, 2, 6],
            8,
            extra_counts=[
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
            ],
        )
    ),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[abjad.BeforeGraceContainer("c'16 c'16")],
        selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([-1], pitched=True), glissando=True
    ),
    evans.PitchHandler(
        ["cs'", "gs'", "a'", "b'", "a'", "gs'", "g'", "fs'", "gs'", "gs'"]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index([0, 1, 2, 5]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mf"),
            abjad.Articulation(">"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            trinton.make_custom_dynamic("sf"),
            abjad.Articulation(">"),
            trinton.make_custom_dynamic("spp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 2, 2, 2, 5, 6, 6, 8, 8, 9]),
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([-1])),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([7, 9, 4, 4, 8], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            ["as'", "fs'", "cs'", "as"],
            ["fs'", "d'", "as", "fs"],
            ["f'", "ds'", "b", "fs"],
            ["fss'", "ds'", "cs'", "as"],
            ["as'", "fs'", "c'", "a"],
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(direction=abjad.UP), abjad.Articulation("tenuto")],
        selector=trinton.pleaves(exclude=[0, 1, 2, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.BreathMark()],
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.StartSlur(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 2, 2, -1, -1], first=True, pitched=True
        ),
    ),
    voice=score["piano 1 voice"],
)

# lh music

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["piano 3 voice"], 0))

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea([16, -1, 2, 1, 1, 2, 6, 100], 16)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.accelerando([(1, 8), (1, 20), (1, 32)])
        ),
        selector=trinton.select_leaves_by_index([5], pitched=True),
    ),
    trinton.rewrite_meter_command(),
    trinton.pitch_with_selector_command(
        pitch_list=[["cs,", "cs,,"]], selector=trinton.select_leaves_by_index([0])
    ),
    library.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tastaturabdeckung")],
        selector=trinton.select_leaves_by_index([1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [1, 4, -1], pitched=True, first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.Arpeggio(),
            abjad.LaissezVibrer(),
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 0, 1, 3, 3, 5, 6, 6, -1, -1], first=True
        ),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0])),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    voice=score["piano 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([7, 9, 4, 4, 8], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            ["fs,", "cs,", "fs,,"],
            ["as,", "fs,", "as,,"],
            ["b,", "fs,", "b,,"],
            ["gs,", "ds,", "gs,,"],
            ["d,", "a,", "d"],
        ]
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tasten")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(direction=abjad.UP), abjad.Articulation("tenuto")],
        selector=trinton.pleaves(exclude=[0, 1, 2, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([-3, -1]),
    ),
    voice=score["piano 3 voice"],
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([4, 2, 1, 1, 4, 2, 2, 3, 1], 4)),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    library.duration_line(),
    evans.PitchHandler(pitch_list=[-5, -5, -5, 4, -5, -5, -1, -5, -1, 9]),
    voice=score["piano 5 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.InstrumentName(
                context="GrandStaff",
                markup=abjad.Markup(
                    '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Klavier }'
                ),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.InstrumentName(
                context="Staff",
                markup=abjad.Markup(
                    '\markup \\with-color \\一 \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Tiefpassfilter }'
                ),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #13.5 \with-dimensions-from \null",
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
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.hooked_spanner_command(
        string=r"""\markup \with-color \四 \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line {{ ( ZUSPIEL ) }}""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=10,
        right_padding=45,
        full_string=True,
        style="solid-line-with-hook",
        tweaks=[r"- \tweak color \四"],
    ),
    voice=score["Global Context"],
)

for voice_name in ["piano 1 voice", "piano 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                abjad.KeySignature(abjad.NamedPitchClass("cs"), abjad.Mode("minor")),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (5,)),
        trinton.attachment_command(
            attachments=[
                abjad.KeySignature(abjad.NamedPitchClass("fs"), abjad.Mode("major")),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
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
            abjad.BarLine(":|.", site="after"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f", site="after"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1, -1]),
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/01",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/augsburg-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
