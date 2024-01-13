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
            [(1, 4)],
            ts.return_descending_ts(slice_tuple=(0, 10), cut_time=True, reduce=True),
            [(1, 4)],
            ts.return_gestural_ts_sequence(index=2, slice_tuple=(0, 1)),
            [(1, 4)],
            ts.return_gestural_ts_sequence(index=6, slice_tuple=(0, 1)),
            [(1, 4)],
        ]
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    trinton.aftergrace_command(),
    evans.PitchHandler(["a''", "c'"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 2)], nested=True),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.NoteHead.X-extent = #'(0 . 0)",
                    r"\override Staff.NoteHead.transparent = ##t",
                    r"\override Staff.NoteHead.no-ledgers = ##t",
                ],
                site="absolute_before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Staff.NoteHead.X-extent",
                    r"\revert Staff.NoteHead.transparent",
                    r"\revert Staff.NoteHead.no-ledgers",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(
                string=["Auf den Saiten mit", "einem Plektrum"],
            ),
            abjad.BreathMark(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    abjad.slur,
    voice=score["piano 1 voice"],
)

index = 0

for measures in [(2, 3), (6,), (10, 11)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(rhythm.rhythm_a(index=index, stage=2)),
        trinton.notehead_bracket_command(),
        voice=score["piano 1 voice"],
    )

    index += 1

index = 0

for measures in [(4, 5), (7, 9)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(rhythm.rhythm_a(index=0, stage=3)),
        trinton.notehead_bracket_command(),
        voice=score["piano 1 voice"],
    )

    index += 1

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 11)),
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
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<|"),
            abjad.Dynamic('"ff"'),
            abjad.Dynamic('"mf"'),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 12, 22, 22, 26, 26, 28, 39, 43, 43, 45, 46, -4],
            pitched=True,
            first=True,
        ),
    ),
    # trinton.beam_groups(
    #     selector=trinton.ranged_selector(
    #         ranges=[range(67, 70)],
    #         nested=True
    #     ),
    #     beam_rests=True
    # ),
    trinton.attachment_command(
        attachments=[
            library.change_to_rh,
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                library.change_to_lh,
                library.change_to_rh,
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library.revert_to_rh,
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=["Auf dem Deckel", "mit Styroporkugeln"],
                tweaks=[r"- \tweak padding #12"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
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
            [
                44,
                -5,
            ],
            first=True,
            pitched=True,
        ),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=1, hand="rh")),
    evans.PitchHandler(pitch.return_seed_pitch_sequence(index=0)),
    trinton.octavation(octave=-3),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    library.change_lines(
        lines=5, clef="bass", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=1, hand="rh")),
    evans.PitchHandler(pitch.return_seed_pitch_sequence(index=0)),
    trinton.octavation(octave=-3),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
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
    evans.RhythmHandler(rmakers.note),
    trinton.aftergrace_command(),
    evans.PitchHandler([["b''''", "bf''''"], ["a,,,", "as,,,"]]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 2)], nested=True),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Clef("bass")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="( Tasten )"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, 1])),
    trinton.ottava_command(octave=-2, selector=trinton.select_leaves_by_index([1, 1])),
    abjad.slur,
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 11)),
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
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=1, hand="lh")),
    evans.PitchHandler(pitch.return_seed_pitch_sequence(index=13)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=1, selector=trinton.select_logical_ties_by_index([-4], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    library.change_lines(
        lines=5, clef="bass", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tasten")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=1, hand="lh")),
    evans.PitchHandler(pitch.return_seed_pitch_sequence(index=25)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=1, selector=trinton.select_logical_ties_by_index([0, 3, 5], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["piano 3 voice"],
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 11)),
    evans.RhythmHandler(
        evans.RhythmHandler(rmakers.note),
    ),
    trinton.aftergrace_command(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler([9]),
    trinton.pitch_with_selector_command(
        pitch_list=[-9], selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 9)], nested=True),
        zero_padding=True,
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(
        evans.RhythmHandler(evans.talea([13], 16)),
    ),
    trinton.aftergrace_command(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        [
            -9,
            -5,
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(0, 3), range(2, 5)], nested=True
        ),
        zero_padding=True,
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    evans.RhythmHandler(
        evans.RhythmHandler(evans.talea([11], 16)),
    ),
    trinton.aftergrace_command(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([-9, -3]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(0, 3), range(2, 5)], nested=True
        ),
        zero_padding=True,
    ),
    voice=score["piano 5 voice"],
)


# globals

for voice_name in ["piano 1 voice", "piano 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                abjad.KeySignature(abjad.NamedPitchClass("c"), abjad.Mode("major")),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

trinton.fermata_measures(
    score=score,
    measures=[12, 14, 16],
    fermata="middle-fermata",
    font_size=15,
    clef_whitespace=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="48 3/4",
                previous_tempo_string=None,
                padding=20,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string="48 3/4",
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                tempo_string="33",
                previous_tempo_string="60",
                string_only=True,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=16.5,
        full_string=True,
        right_padding=-10,
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/02",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
