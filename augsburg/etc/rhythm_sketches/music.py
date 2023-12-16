import abjad
import baca
import evans
import trinton
import itertools
import os
import pathlib
from abjadext import rmakers
from abjadext import microtones
from augsburg import library
from augsburg import pitch
from augsburg import rhythm
from augsburg import ts

# score

score = library.augsburg_score(
    ts.assemble_section_ts(
        [
            ts.return_descending_ts(slice_tuple=(6, 12), reduce=True),
            [
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (5, 4),
                (7, 8),
                (13, 8),
            ],
            ts.return_gestural_ts_sequence(slice_tuple=(0, 6)),
            ts.return_descending_ts(slice_tuple=(0, 7), chaos=True, reduce=True),
        ]
    )
)

# sketches

# alpha rhythm sketch

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=0, stage=1),
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm a | Stage 1 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=0, stage=2),
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm a | Stage 2 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=0, stage=3),
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm a | Stage 3 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

# beta rhythm sketch

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        rhythm.rhythm_b(index=0, stage=1, grace=True),
    ),
    evans.PitchHandler(["c''"]),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm b | Stage 1 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(
        rhythm.rhythm_b(index=0, stage=2, grace=True),
    ),
    evans.PitchHandler(["c''"]),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm b | Stage 2 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_b(index=0, stage=3, grace=True),
    ),
    evans.PitchHandler(["c''"]),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm b | Stage 3 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

# gamma rhythm sketch

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh"),
    ),
    evans.PitchHandler(["g''''"]),
    library.interruptive_polyphony(hand="rh", stage=1),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm g | Stage 1 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    evans.PitchHandler(["g''''"]),
    library.interruptive_polyphony(hand="lh", stage=1),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=2, hand="rh"),
    ),
    evans.PitchHandler(["g''''"]),
    library.interruptive_polyphony(hand="rh", stage=2),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm g | Stage 2 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=2, hand="lh"),
    ),
    evans.PitchHandler(["g''''"]),
    library.interruptive_polyphony(hand="lh", stage=2),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

# delta rhythm sketch

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 18)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=1,
            hand="rh",
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm d | Stage 1 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 18)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=1,
            hand="lh",
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 20)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="rh",
            tuplet_selector=trinton.patterned_tie_index_selector(
                [2, 7], 8, pitched=True
            ),
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm d | Stage 2 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 20)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="lh",
            tuplet_selector=trinton.patterned_tie_index_selector(
                [1, 6], 7, pitched=True
            ),
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21, 22)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="rh",
            # tuplet_selector=trinton.patterned_tie_index_selector(
            #     [2, 7], 8, pitched=True
            # ),
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm d | Stage 3 }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21, 22)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="lh",
            # tuplet_selector=trinton.patterned_tie_index_selector(
            #     [1, 6], 7, pitched=True
            # ),
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

# epsilon rhythm sketch

trinton.make_music(
    lambda _: trinton.select_target(_, (23, 29)),
    evans.RhythmHandler(
        rhythm.rhythm_e(hand="rh"),
    ),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #6 { Rhythm e }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (23, 29)),
    evans.RhythmHandler(
        rhythm.rhythm_e(hand="lh"),
    ),
    trinton.rewrite_meter_command(),
    voice=score["piano 3 voice"],
    beam_meter=True,
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 8)),
#     # trinton.linear_attachment_command(
#     #     attachments=[
#     #         library.metronome_markups(
#     #             tempo_string="60",
#     #             previous_tempo_string=None,
#     #             string_only=False,
#     #             parenthesis=False,
#     #         ),
#     #         library.metronome_markups(
#     #             tempo_string="138 3/4",
#     #             previous_tempo_string="60",
#     #             string_only=False,
#     #             parenthesis=False,
#     #         ),
#     #     ],
#     #     selector=trinton.select_leaves_by_index([0, -1])
#     # ),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 tempo_string="138 3/4",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             library.metronome_markups(
#                 tempo_string="97 1/2",
#                 previous_tempo_string="138 3/4",
#                 string_only=True,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=14,
#         full_string=True,
#         right_padding=0,
#     ),
#     voice=score["Global Context"],
# )

# beautifying time signatures

trinton.remove_redundant_time_signatures(score=score)

# persist


def render_file(score, path, file_name, includes):
    print("Rendering file ...")
    score_block = abjad.Block(name="score")
    score_block.items.append(score)
    assembled_includes = [f'\\include "{path}"' for path in includes]
    assembled_includes.append(score_block)
    file = abjad.LilyPondFile(
        items=assembled_includes,
    )
    score_file = abjad.LilyPondFile(items=[file])
    directory = path
    pdf_path = pathlib.Path(f"{directory}/illustration{file_name}.pdf")
    ly_path = pathlib.Path(f"{directory}/illustration{file_name}.ly")
    if pdf_path.exists():
        pdf_path.unlink()
    if ly_path.exists():
        ly_path.unlink()
    print("Persisting ...")
    abjad.persist.as_ly(score_file, ly_path, tags=True)
    if ly_path.exists():
        print("Rendering ...")
        os.system(f"run-lilypond {ly_path}")
    if pdf_path.exists():
        print("Opening ...")
        os.system(f"open {pdf_path}")


render_file(
    score=score,
    path="/Users/trintonprater/scores/augsburg/augsburg/etc/rhythm_sketches",
    file_name="_rhythm_sketch",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
