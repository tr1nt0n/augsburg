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
        [[(3, 2), (1, 4)]],
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([3], 2)),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Maultrommel + Vibrator")],
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

# globals

trinton.fermata_measures(
    score=score,
    measures=[2],
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[
#             library.metronome_markups(
#                 tempo_string="97 1/2",
#                 previous_tempo_string="33",
#                 padding=5,
#                 string_only=False,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

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
#     lambda _: trinton.select_target(_, (7, 8)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 tempo_string="97 1/2",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             library.metronome_markups(
#                 tempo_string="60",
#                 previous_tempo_string="97 1/2",
#                 string_only=True,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=25,
#         full_string=True,
#         right_padding=4,
#     ),
#     voice=score["piano 1 voice"],
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/04",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
