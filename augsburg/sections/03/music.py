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
    ts.assemble_section_ts([[(2, 4), (1, 4)], [(5, 4) for _ in range(0, 4)]])
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh"),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.interruptive_polyphony(hand="rh", stage=3, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.interruptive_polyphony(hand="lh", stage=3, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

for voice_name, pitch in zip(
    ["37 voice temp", "35 voice", "13 voice temp", "4 voice"],
    ["g''''", "a''''", "ds''''", "e''''"],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.PitchHandler(pitch_list=[pitch]),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["13 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rmakers.note),
    trinton.rewrite_meter_command(),
    trinton.aftergrace_command(),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        zero_padding=True,
        no_ties=True,
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string=["Stimmwirbelmagneten", "mit der Handfläche"]),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.tremolo_command(),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    evans.RhythmHandler(
        evans.talea([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -100], 4)
    ),
    trinton.rewrite_meter_command(),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [0, 2], 7, first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
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
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 3 voice"],
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
            ],
            2,
        )
    ),
    trinton.aftergrace_command(),
    evans.PitchHandler([-9, -1]),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    evans.RhythmHandler(evans.talea([15, 5], 4)),
    trinton.aftergrace_command(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([-1, 5, -9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[2],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="97 1/2",
                previous_tempo_string="33",
                padding=5,
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
# trinton.make_music(
#     lambda _: trinton.select_target(_, (15, 16)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 tempo_string="60",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             library.metronome_markups(
#                 tempo_string="97 1/2",
#                 previous_tempo_string="60",
#                 string_only=True,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=16.5,
#         full_string=True,
#         right_padding=-4,
#     ),
#     voice=score["Global Context"],
# )

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/03",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
