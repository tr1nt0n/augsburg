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

score = library.augsburg_score([(4, 4) for _ in range(0, 16)])

# sketches

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_e_pentachords(index=0)),
    trinton.noteheads_only(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 16)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            32,
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=0)),
    abjad.beam,
    voice=score["piano 1 voice"],
)

# beautification

library.handle_accidentals(score=score)

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
    path="/Users/trintonprater/scores/augsburg/augsburg/etc/pitch_sketches",
    file_name="_pitch_sketch",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
