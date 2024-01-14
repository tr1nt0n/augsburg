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
                (11, 4),
                (5, 2),
                (8, 4),
                (7, 4),
                (3, 2),
                (4, 4),
                (6, 8),
                (5, 8),
                (2, 4),
                (3, 8),
                (1, 4),
            ],
            ts.return_gestural_ts_sequence(index=23, slice_tuple=(0, 6)),
            [(3, 4), (1, 4)],
        ],
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(rhythm.rhythm_a(index=14, stage=1, hand_swapping=True)),
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
    trinton.call_rmaker(
        rmaker=rmakers.unbeam, selector=trinton.select_leaves_by_index([1, 2, 56, 57])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Stem.cross-staff = ##t",
                    r"\once \override Stem.Y-extent = #'(0 . 0)",
                    r"\once \override Stem.details.lengths = #'(33)",
                    r"\once \override Flag.cross-staff = ##t",
                    r"\once \override Flag.Y-extent = #'(0 . 0)",
                    r"\once \override StaffGroup.Flag.Y-offset = 33",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 6, 8, 10, 12, 14, 16, 24, 28], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override TupletBracket.padding = 8",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_tuplets_by_index([3, 6, 8]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"pppp"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 5, 11, 11, 15, 19, 19, -1], pitched=True, first=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 17)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=1, hand="rh")),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=14)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [6, 7, 17, 18, 19, 31], pitched=True
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["ef,", "df,", "ef,", "a,"],
        selector=trinton.select_tuplets_by_index([1, 3, 5]),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 8, 8, 11, 11, 18, 18, 21, 21, 27, 27, 31, 31, 39, 39, -1],
            first=True,
            pitched=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.interruptive_polyphony(hand="rh", stage=1, dynamic=True),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

# lh music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
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
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 17)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=1, hand="lh")),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=13)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [18, 19, 20, 31, 32], pitched=True
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["ef,", "df,", "ef,", "a,"],
        selector=trinton.select_logical_ties_by_index(
            [7, 8, 24, 25, 26, 34, 35, 36], pitched=True
        ),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = 10"
            ),
            trinton.make_custom_dynamic("sffz pp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                0,
                2,
                2,
                4,
                4,
                7,
                7,
                9,
                9,
                15,
                15,
                20,
                20,
                24,
                24,
                28,
                28,
                34,
                34,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ],
        ),
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 9, 18, 28, 33], first=True, pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.interruptive_polyphony(hand="lh", stage=1),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

for voice_name, dynamic, direction in zip(
    ["37 voice temp", "35 voice", "13 voice temp", "4 voice"],
    ["mf", "mp", "p", "pp"],
    [abjad.UP, abjad.DOWN, abjad.UP, abjad.DOWN],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (18,)),
        trinton.attachment_command(
            attachments=[abjad.Dynamic(dynamic)],
            selector=trinton.select_leaves_by_index([0], pitched=True),
            direction=direction,
        ),
        voice=score[voice_name],
    )

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler(
        [
            -9,
            9,
        ]
    ),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    evans.RhythmHandler(evans.talea([23, 1], 32)),
    evans.PitchHandler([-1, -9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[11],
    fermata="short-fermata",
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
    measures=[19],
    fermata="long-fermata",
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
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="48 3/4",
                previous_tempo_string="97 1/2",
                padding=8,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 11)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="48 3/4",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string="48 3/4",
                string_only=True,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=19,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="33",
                previous_tempo_string="60",
                padding=18,
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/05",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
