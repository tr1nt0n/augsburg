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

score = library.augsburg_score(ts.assemble_section_ts([[(5, 4) for _ in range(0, 10)]]))

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=0,
            stage=2,
            grace=True,
            grace_selector=trinton.select_logical_ties_by_index([2, -1]),
        )
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Magnet rechts"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            trinton.make_custom_dynamic("( mf )"),
            trinton.make_custom_dynamic("( mf )"),
            trinton.make_custom_dynamic("( mf )"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [3, 14], first=True, pitched=True, grace=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("( p )", direction=abjad.UP)],
        selector=trinton.select_logical_ties_by_index(
            [1, 10], first=True, pitched=True, grace=True
        ),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=5,
            stage=1,
        )
    ),
    evans.PitchHandler([2, -1, 2, -1, 2, -1, -1, -1, -1, 2, -1, 2, -1, -1]),
    library.change_lines(lines=2, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string=["1. Magnet rechts", "2. Magnet links"])
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 7, 8, 11, -1], pitched=True, grace=False, first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 4, 5, 6, 6, 9, 10, 10, 12], grace=False, pitched=True, first=True
        ),
    ),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea([19, -1], 16),
    ),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Styroporkugel auf dem Innenrahmen"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<|"),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    library.change_lines(lines=1, clef="percussion"),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=4,
            stage=1,
        )
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Magnet links")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            index=7,
            stage=2,
            grace=True,
        )
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string="Magnetgruppe mit der Handfläche",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["piano 3 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="97 1/2",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                tempo_string="138 3/4",
                previous_tempo_string="97 1/2",
                string_only=True,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=17,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="97 1/2",
                previous_tempo_string="138 3/4",
                padding=7,
                string_only=False,
                parenthesis=False,
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = ##f", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# beautification

# library.handle_accidentals(score=score)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/08",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
