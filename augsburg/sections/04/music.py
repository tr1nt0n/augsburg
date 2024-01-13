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
            [(3, 2), (1, 4), (3, 4)],
            ts.return_descending_ts(slice_tuple=(5, 10), chaos=True, reduce=True),
            [(1, 4), (5, 4), (5, 4), (5, 4), (1, 4)],
        ],
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([3], 2)),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Maultrommel + Vibrator"),
            library.clef_whitespace_literal,
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([1], 2)),
        direction=abjad.UP,
        voice_name="sounding voice",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.aftergrace_command(),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 2)], nested=True),
        zero_padding=True,
    ),
    voice=score["piano 1 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.aftergrace_command(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler([12, 17, 7, 7]),
    library.low_pass_glissandi(),
    trinton.linear_attachment_command(
        attachments=[
            library.start_jaw_harp_literal,
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            library.stop_jaw_harp_literal,
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1, 2, 2, -1, -1, -1]),
        direction=abjad.DOWN,
    ),
    abjad.slur,
    voice=score["sounding voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=1, hand="rh")),
    evans.PitchHandler(pitch.return_seed_pitch_sequence(index=22)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=1, selector=trinton.select_logical_ties_by_index([0], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, 2], pitched=True),
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

for measures in [(5,), (7, 8)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(rhythm.rhythm_e(hand="rh")),
        trinton.rewrite_meter_command(),
        trinton.notehead_bracket_command(),
        voice=score["piano 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.PitchHandler(["f'", "e'", "g'", "b'", "e'", "df'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["13/8", "37/32", "35/32"],
        as_ratios=True,
        selector=trinton.patterned_tie_index_selector([1], 2, pitched=True),
    ),
    library.low_pass_glissandi(),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
            library.boxed_markup(string="Nagel + Vibrator"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(
                string="( SYNTHESIZER EIN )",
                tweaks=[r"- \tweak color \四"],
            ),
            library.boxed_markup(
                string="( SYNTHESIZER AUS )",
                tweaks=[r"- \tweak color \四"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(
        rhythm.rhythm_b(index=0, stage=1, grace=False, grace_selector=None)
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Einzelstimmwirbelmagnet links"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(
        rhythm.rhythm_b(index=11, stage=1, grace=True, grace_selector=None)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[-1], selector=trinton.pleaves(grace=False)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[2], selector=trinton.pleaves(grace=True)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[2],
        selector=trinton.select_logical_ties_by_index(indices=[2, 3], grace=False),
    ),
    library.change_lines(
        lines=2,
        clef="percussion",
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "1. Stimmwirbelmagneten mit der Handfläche",
                    "2. Einzelstimmwirbelmagnet rechts",
                ]
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            indices=[2, 3], first=True, grace=False
        ),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ppp"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                13,
                13,
            ],
            first=True,
            grace=False,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("cresc. poco a poco", name_is_textual=True),
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], grace=True),
    ),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=1, hand="lh")),
    evans.PitchHandler(pitch.return_seed_pitch_sequence(index=6)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=-1, selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Tasten"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.Dynamic("f"),
            abjad.StopPianoPedal(),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 2, 3]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 8)),
    evans.RhythmHandler(rhythm.rhythm_e(hand="lh")),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 8)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=0, hand="rh")),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
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
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="( Tasten )")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.DynamicText.X-extent = ##f",
                    r"\once \override Staff.DynamicText.X-offset = -1",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index([0, 2], first=True),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 8)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=15, hand="lh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
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
        ),
    ),
    # library.continuous_pedal(),
    # trinton.attachment_command(
    #     attachments=[abjad.StartPianoPedal()],
    #     selector=trinton.logical_ties(first=True, exclude=[-1])
    # ),
    # trinton.attachment_command(
    #     attachments=[abjad.StopPianoPedal()],
    #     selector=trinton.logical_ties(first=True, exclude=[0])
    # ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, 0, 3, 3, -1, -1])
    ),
    voice=score["epsilon intermittent voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(evans.talea([-3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 4)),
    trinton.rewrite_meter_command(),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("s. mf", direction=abjad.UP),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0, 2], 7, first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1, 3], 7, first=True, pitched=True
        ),
        direction=abjad.UP,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 3 voice"],
)

# low pass music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea([3, 3, 100], 8)),
    trinton.aftergrace_command(),
    evans.PitchHandler([9, 9, -3, -3, 9, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([10, 5], 4)),
    trinton.aftergrace_command(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([-7, 0, -5]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[2, 9],
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

trinton.fermata_measures(
    score=score,
    measures=[
        13,
    ],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string="138 3/4",
                padding=12,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (13,)),
#     trinton.attachment_command(
#         attachments=[
#             library.metronome_markups(
#                 tempo_string="60",
#                 previous_tempo_string="48 3/4",
#                 string_only=False,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )
#
trinton.make_music(
    lambda _: trinton.select_target(_, (4, 8)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                tempo_string="138 3/4",
                previous_tempo_string="60",
                string_only=True,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=12,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="97 1/2",
                previous_tempo_string="138 3/4",
                padding=6,
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/04",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
