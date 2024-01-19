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
            [(37, 12), (3, 2)],
            ts.return_descending_ts(
                index=8,
                cut_time=True,
                double_time=False,
                chaos=False,
                reduce=True,
                slice_tuple=(0, 5),
            ),
            [(6, 4), (7, 4), (5, 4)],
        ]
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.accelerando([(1, 8), (1, 20), (1, 32)])),
    trinton.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(string="Tastaturabdeckung"),
            library.clef_whitespace_literal,
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([1, -1000], 2)),
    trinton.rewrite_meter_command(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 7)),
    evans.RhythmHandler(rhythm.rhythm_a(index=14, stage=3, hand_swapping=True)),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=["Auf dem Deckel", "mit Styroporkugeln"],
                tweaks=[r"- \tweak padding #12"],
            ),
        ],
        selector=trinton.select_leaves_by_index([2]),
        direction=abjad.UP,
    ),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
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
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"fp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 6, 7, 9, 9, 12, 12], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(rhythm.rhythm_d(hand="rh")),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=42)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([0, 3, 4], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(rhythm.rhythm_a(index=5, stage=1, hand_swapping=False)),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=["Auf dem Deckel", "mit Styroporkugeln"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.accelerando([(1, 8), (1, 20), (1, 32)])),
    evans.PitchHandler(pitch_list=["d,"]),
    trinton.change_lines(lines=5, clef="bass"),
    trinton.attachment_command(
        attachments=[
            library.clef_whitespace_literal,
            library.boxed_markup(string="( Tasten )"),
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.TupletBracket.stencil = ##f",
                    r"\once \override Staff.TupletNumber.stencil = ##f",
                    r"\once \override Staff.Beam.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([8, 8, 1, -3, -1000], 16, extra_counts=[0, 4])),
    evans.PitchHandler(pitch_list=["d,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], first=True, pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 4)),
)

selections = abjad.select.leaves(score["piano 3 voice"], pitched=True)

selections = abjad.select.exclude(selections, [-1, -2])

evans.commands.wrap_in_cross_staff(selections)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = 7"
            ),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, -3, -2, -1], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Stem.cross-staff = ##t",
                    r"\once \override Stem.Y-extent = #'(0 . 0)",
                    r"\once \override Stem.details.lengths = #'(33)",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-3],
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
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 7)),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
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
                    r"\override Staff.TupletBracket.direction = #DOWN",
                ],
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(rhythm.rhythm_d(hand="lh")),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=47)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([1, 3], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = 10",
                site="before",
            ),
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([1, 1, 3]),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Tasten", tweaks=[r"- \tweak padding #6"])
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(rhythm.rhythm_a(index=4, stage=3, hand_swapping=False)),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Dynamic('"mf"'),
            abjad.Articulation(">"),
            abjad.Dynamic('"fp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 2, 4, 5, 6, 6, 7, 8, 9, 10, 10, 11, 12, -1],
            first=True,
        ),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.StopHairpin()
    #     ],
    #     selector=trinton.select_leaves_by_index([-1], pitched=True)
    # ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.tuplet([(1,), (1,)])),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler(
        [
            -9,
            7,
            -9,
        ]
    ),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
    preprocessor=trinton.fuse_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler(
        [
            -9,
            9,
        ]
    ),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals


trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string="33",
                padding=14.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.spanner_command(
        strings=[
            r"""\markup { \override #'(font-size . 5.5) \concat { (  \abjad-metronome-mark-markup #2 #0 #2 #"72" ) } }""",
            library.metronome_markups(
                tempo_string="48 3/4",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=23,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #8 \with-dimensions-from \null",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string="48 3/4",
                padding=11,
                string_only=False,
                parenthesis=False,
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
                previous_tempo_string="60",
                padding=14.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# beautification

library.handle_accidentals(score=score)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/06",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
