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
            ts.return_descending_ts(
                index=-11,
                cut_time=True,
                double_time=False,
                chaos=False,
                reduce=True,
                slice_tuple=(0, 10),
            ),
            [(5, 4), (5, 4), (5, 4)],
        ]
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.change_lines(lines=5, clef="treble"),
    library.interruptive_polyphony(hand="rh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(["g''''", "g''''", "g''''", "a''''", "a''''"]),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tasten")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([3, 2, 4, 2, 2], 16)),
    evans.PitchHandler(pitch.return_epsilon_chords(index=5, hand="rh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 3, 3, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([-1, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([-2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 2, -2, -1], pitched=True),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="rh",
            stage=2,
            tuplet_selector=trinton.select_logical_ties_by_index([-1], pitched=True),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=23)),
    trinton.octavation(octave=-1),
    trinton.octavation(
        octave=-1, selector=trinton.logical_ties(pitched=True, exclude=[0, 1])
    ),
    trinton.octavation(
        octave=-1, selector=trinton.logical_ties(pitched=True, exclude=[0, 1, 2])
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([7, 8, 9, 10], pitched=True),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [-1, -2, -3, -4, -5], pitched=True
        ),
    ),
    trinton.octavation(
        octave=1, selector=trinton.select_logical_ties_by_index([-4, -1], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([3, 7], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index(
            [3, 4, 5, 6, 7, 8, 9, 10], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, -1, -2, -3, -4, -5], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([-4, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, -5, -5, -1, -1], pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([3, 3, 1, 3], 16)),
    evans.PitchHandler(pitch.return_epsilon_chords(index=15, hand="rh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([1])),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()], selector=trinton.select_leaves_by_index([1])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="rh",
            stage=2,
            tuplet_selector=trinton.select_logical_ties_by_index([0, -1], pitched=True),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=34)),
    trinton.octavation(
        octave=-1,
        selector=trinton.logical_ties(pitched=True, exclude=[1, 4, -4, -3, -2, -1]),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [6, 7, 8, 9, 10, 11], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([1, 4, 7, -4, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([-5, -4, -3, -2, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                8,
                8,
                13,
                13,
                -1,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh", voice_number=1),
    ),
    evans.PitchHandler(
        pitch_list=[
            "a''''",
            "g''''",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    library.interruptive_polyphony(hand="rh", stage=1),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
    # preprocessor=trinton.fuse_preprocessor((1, 2))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.PitchHandler(pitch_list=["g''''"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["35 voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="rh",
            stage=2,
            tuplet_selector=trinton.select_logical_ties_by_index(
                [2, 7, -1], pitched=True
            ),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=47)),
    trinton.octavation(
        octave=-1,
        selector=trinton.logical_ties(pitched=True, exclude=[1, 2, 3, 4, 5, 6, -3]),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [14, 15, 16, 17, 18, 19, 20, 21, 22, 23], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([1, 4, 13, -4, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                4,
                5,
                6,
                11,
                12,
                13,
                14,
                15,
                21,
                22,
                23,
                24,
                25,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.TupletBracket.direction = #DOWN", site="before"
            ),
            abjad.Dynamic("pp"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("p"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
                7,
                11,
                11,
                16,
                21,
                21,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.talea([2, 3], 16)),
    evans.PitchHandler(pitch.return_epsilon_chords(index=40, hand="rh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Dynamic("p"),
            abjad.Articulation("staccato"),
            abjad.Dynamic("mf"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1], pitched=True),
    ),
    abjad.beam,
    abjad.slur,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh", voice_number=2),
    ),
    evans.PitchHandler(
        pitch_list=[
            "a''''",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    library.interruptive_polyphony(hand="rh", stage=2),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.PitchHandler(
        pitch_list=[
            "g''''",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["35 voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    evans.RhythmHandler(
        evans.talea(
            [-5, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3],
            8,
            extra_counts=[1, 0, -1, 0, 0],
        )
    ),
    lambda _: trinton.respell_tuplets(abjad.select.tuplets(_)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        pitch_list=[
            "df'",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
            "ef,,",
        ]
    ),
    evans.PitchHandler(
        pitch_list=[
            "35/32",
            "13/2",
            "37/6",
            "70/13",
            "140/37",
            "13/2",
            "35/4",
            "416/35",
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Accidental.font-size = 5", site="before"
            )
        ],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.low_pass_glissandi(),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Nagel + Vibrator"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string="( SYNTHESIZER EIN )",
                tweaks=[r"- \tweak color \四"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 1, 3, 1, 1, 1, 2, 2, 3)),
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.change_lines(lines=5, clef="treble"),
    library.interruptive_polyphony(hand="lh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(["g''''", "g''''", "g''''", "ds''''"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([2, -1], pitched=True),
    ),
    voice=score["4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([3, 2, 4, 2, 2], 16)),
    evans.PitchHandler(["df,,", "b,,,", "f,,", "df,,", "df,,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([-1, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([-2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 2, -2, -1], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    abjad.beam,
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="lh",
            stage=2,
            tuplet_selector=trinton.select_logical_ties_by_index([-1], pitched=True),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=20)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([4, 6, 8, 9], pitched=True),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index([-1, -2, -3], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, 9], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ],
        ),
        selector=trinton.select_leaves_by_index([1, 5, 9, 10, 13, 14, 15, 20]),
    ),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("sffz pp")],
        selector=trinton.select_leaves_by_index([0, 4, 6, 7], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([-1, -2, -3], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([-2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                -3,
                -3,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([3, 3, 1, 3], 16)),
    evans.PitchHandler(pitch.return_epsilon_chords(index=15, hand="lh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.StartPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 2, 2, -1, -1]),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([1])),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, 0, 2, -1], pitched=True)
    ),
    abjad.beam,
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            hand="lh",
            stage=2,
            tuplet_selector=trinton.select_logical_ties_by_index([0, -1], pitched=True),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=30)),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([0, 1, 2, -2, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, 4], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([1, 3, -2], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([-3, -2, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 5, 5, -3, -3, -1],
            pitched=True,
        ),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([3, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh", voice_number=1),
    ),
    evans.PitchHandler(
        pitch_list=[
            "g''''",
            "e''''",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    library.interruptive_polyphony(hand="lh", stage=1),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.PitchHandler(pitch_list=["ds''''", "g''''"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 2, -3, -1]),
    ),
    voice=score["4 voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                8,
                12,
                1,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                3,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
                1,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                3,
                1,
                1,
                1,
            ],
            64,
        )
    ),
    evans.PitchHandler(pitch.return_epsilon_chords(index=40, hand="lh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 9, 10, 11, 12], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.Articulation("staccato"),
            abjad.Articulation("tenuto"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
    ),
    abjad.beam,
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    evans.RhythmHandler(rhythm.rhythm_e(hand="lh")),
    trinton.aftergrace_command(invisible=True),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    evans.PitchHandler(pitch_list=[pitch.epsilon_chord_pairs[-1][0]]),
    trinton.attachment_command(
        attachments=[abjad.LaissezVibrer(), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    evans.PitchHandler(pitch_list=[pitch.epsilon_chord_pairs[-1][-1]]),
    trinton.attachment_command(
        attachments=[abjad.LaissezVibrer(), abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    # trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["epsilon intermittent voice 2"],
)

# globals

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 5)),
#     trinton.spanner_command(
#         strings=[
#             r"""\markup { \override #'(font-size . 5.5) \concat { (  \abjad-metronome-mark-markup #2 #0 #2 #"72" ) } }""",
#             library.metronome_markups(
#                 tempo_string="48 3/4",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=23,
#         full_string=True,
#         right_padding=0,
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"^ \markup {",
#                     r"  \raise #8 \with-dimensions-from \null",
#                     r"  \override #'(font-size . 5.5)",
#                     r"  \concat {",
#                     r"""\abjad-metronome-mark-markup #2 #0 #2 #"72" """,
#                     r"  }",
#                     r"}",
#                 ],
#                 site="after",
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

for measure, previous_tempo_string, padding in zip(
    [
        1,
        6,
        8,
        10,
    ],
    [
        "48 3/4",
        "60",
        "60",
        None,
    ],
    [19, 17, 17, 16],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="33",
                    previous_tempo_string=previous_tempo_string,
                    padding=padding,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure, previous_tempo_string in zip(
    [
        2,
        4,
        9,
    ],
    [
        None,
        "60",
        None,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="138 3/4",
                    previous_tempo_string=previous_tempo_string,
                    padding=10.5,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure, previous_tempo_string, padding in zip(
    [
        3,
        5,
        7,
    ],
    ["138 3/4", "138 3/4", "48 3/4"],
    [22, 22, 17],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="60",
                    previous_tempo_string=previous_tempo_string,
                    padding=padding,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="138 3/4",
                previous_tempo_string=None,
                padding=10.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

for measure in [6, 7]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# beautification

library.handle_accidentals(score=score)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    trinton.detach_command(
        detachments=[abjad.Articulation], selector=trinton.pleaves()
    ),
    voice=score["37 voice temp 1"],
)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/07",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
