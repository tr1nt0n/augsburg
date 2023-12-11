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

# score = library.augsburg_score([(5, 4), (11, 8), (9, 8), (4, 4), (7, 8)])
# score = library.augsburg_score([(4, 4), (4, 4), (4, 4), (4, 4), (4, 4)])
score = library.augsburg_score(
    ts.return_descending_ts(
        index=0, cut_time=False, double_time=True, chaos=False, reduce=True
    )
)

# sketches

# alpha rhythm sketch

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 16)),
#     evans.RhythmHandler(
#         rhythm.rhythm_a(index=0, stage=1),
#     ),
#     trinton.notehead_bracket_command(),
#     voice=score["piano 1 voice"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 16)),
#     evans.RhythmHandler(
#         rhythm.rhythm_a(index=4, stage=1),
#     ),
#     trinton.notehead_bracket_command(),
#     voice=score["piano 3 voice"],
# )

# beta rhythm sketch

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 16)),
#     evans.RhythmHandler(
#         rhythm.rhythm_b(index=0, stage=3, grace=True),
#     ),
#     trinton.notehead_bracket_command(),
#     voice=score["piano 1 voice"],
# )

# gamma rhythm sketch

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 16)),
#     evans.RhythmHandler(
#         rhythm.rhythm_g(stage=2, hand="rh"),
#     ),
#     evans.PitchHandler(["g''''"]),
#     trinton.ottava_command(
#         octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
#     ),
#     trinton.notehead_bracket_command(),
#     voice=score["piano 1 voice"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 16)),
#     evans.RhythmHandler(
#         rhythm.rhythm_g(stage=2, hand="lh"),
#     ),
#     evans.PitchHandler(["g''''"]),
#     trinton.ottava_command(
#         octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
#     ),
#     trinton.notehead_bracket_command(),
#     voice=score["piano 3 voice"],
# )
#
# library.interruptive_polyphony(
#     score=score,
#     selector=lambda _: trinton.select_target(_, (1, 16)),
#     stage=1
# )

# delta rhythm sketch

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 16)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="rh",
            tuplet_selector=trinton.patterned_tie_index_selector(
                [2, 4, 7], 8, pitched=True
            ),
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 16)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="lh",
            tuplet_selector=trinton.patterned_tie_index_selector(
                [1, 3, 6], 7, pitched=True
            ),
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

# epsilon rhythm sketch

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 16)),
#     evans.RhythmHandler(
#         rhythm.rhythm_e(hand="rh"),
#     ),
#     trinton.rewrite_meter_command(),
#     trinton.notehead_bracket_command(),
#     voice=score["piano 1 voice"],
#     beam_meter=True
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 16)),
#     evans.RhythmHandler(
#         rhythm.rhythm_e(hand="lh"),
#     ),
#     trinton.rewrite_meter_command(),
#     voice=score["piano 3 voice"],
#     beam_meter=True
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
