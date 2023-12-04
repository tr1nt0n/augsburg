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
from augsburg import ts

# score

score = library.augsburg_score([(4, 4), (7, 8), (37, 32), (13, 16)])

# commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.talea([1], 32)),
    evans.PitchHandler(["g", "e''"]),
    abjad.beam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("sfffffz mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["piano 1 voice"],
)
trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.talea([1], 32)),
    evans.PitchHandler(["e''", "b''"]),
    abjad.beam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("sfffffz mp", direction=abjad.UP),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

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
        "/Users/trintonprater/scores/augsburg/augsburg/build/augsburg-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
