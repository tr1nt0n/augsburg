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
            [
                (4, 16),
                (4, 16),
                (4, 16),
                (13, 8),
                (1, 4),
                (3, 1),
                (5, 2),
                (7, 4),
                (4, 4),
                (5, 8),
                (4, 8),
                (7, 16),
                (6, 16),
                (6, 16),
                (7, 16),
                (4, 8),
                (5, 8),
                (4, 4),
                (7, 4),
                (10, 4),
                (12, 4),
                (4, 4),
                (3, 4),
                (1, 4),
                (7, 8),
                (1, 4),
            ],
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
    library.interruptive_polyphony(hand="rh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="lh",
            tuplet_selector=trinton.select_leaves_by_index([-2, -1], pitched=True),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=13)),
    trinton.octavation(
        octave=3,
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=2, selector=trinton.select_leaves_by_index([2], pitched=True)
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [
                3,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [
                -2,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            library.change_to_lh,
            library.revert_to_rh,
            abjad.LilyPondLiteral(
                r"\revert Staff.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 5, -1, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            library.change_to_rh,
            library.revert_to_lh,
        ],
        selector=trinton.select_leaves_by_index([8]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = 17",
                site="before",
            ),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Clef("bass"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -6, -3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override TupletBracket.direction = #UP",
                    r"\once \override TupletBracket.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.ficta_command(
        selector=trinton.select_logical_ties_by_index([2, -1], pitched=True, first=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([-6, -4, -3, -1], pitched=True),
    ),
    trinton.ottava_command(
        octave=2,
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([1], 16)),
    evans.PitchHandler(pitch_list=[["cs'", "as'", "cs''"]]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto"), abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ff"), abjad.StartHairpin(">"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([100], 8)),
    library.change_lines(lines=1, clef="percussion"),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([5, 3, 4, 1], 8)),
        direction=abjad.UP,
        voice_name="sounding voice",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.rewrite_meter_command(),
    trinton.aftergrace_command(),
    library.low_pass_glissandi(no_ties=True),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Maultrommel + Vibrator"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            12,
            7,
            17,
            7,
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.start_jaw_harp_literal,
            library.stop_jaw_harp_literal,
        ],
        selector=trinton.select_leaves_by_index(
            [0, 7],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 1, 2, 2, 3], first=True, pitched=True
        ),
        direction=abjad.DOWN,
    ),
    library.low_pass_glissandi(no_ties=True),
    abjad.slur,
    trinton.hooked_spanner_command(
        string=r"\jawharp-crook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=20,
        right_padding=7,
        full_string=True,
        style="dashed-line-with-hook",
    ),
    voice=score["sounding voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 13)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="rh",
            tuplet_selector=trinton.select_logical_ties_by_index(
                [3, 8, 13, 15, 19, 22, 24, 28, 33], pitched=True
            ),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=15)),
    trinton.octavation(
        octave=-3,
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                7,
                8,
                10,
                15,
                16,
                17,
                26,
                31,
                32,
                33,
                38,
                39,
                40,
                41,
                55,
                56,
                57,
                61,
                62,
                63,
                64,
                72,
                73,
                74,
                -3,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index([53, 54, 65, 66], pitched=True),
    ),
    library.change_lines(
        lines=5,
        clef="bass",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, 8, 8, 12, 17, 17, 21, 34, 35, 40, 42, 42, -13],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                4,
                5,
                6,
                7,
                12,
                13,
                14,
                15,
                16,
                21,
                22,
                23,
                24,
                25,
                27,
                28,
                29,
                30,
                31,
                35,
                36,
                37,
                38,
                39,
                42,
                43,
                44,
                45,
                46,
                48,
                49,
                50,
                51,
                52,
                56,
                57,
                58,
                59,
                60,
                65,
                66,
                67,
                68,
                69,
            ],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">"), abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [26, 32, 33, 40, 41], pitched=True, first=True
        ),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tasten")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 19)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=0, stage=3, hand_swapping=False),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True),
        invisible=True,
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=["Auf dem Deckel", "mit Styroporkugeln"],
                # tweaks=[r"- \tweak padding #12"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, 4, 5, 7, 8, 11, 18, 18, 19], first=True, pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (20,)),
    evans.RhythmHandler(rhythm.rhythm_d(hand="rh", stage=3)),
    evans.PitchHandler(
        pitch_list=trinton.remove_adjacent(pitch.return_seed_pitch_sequence(index=-6))
    ),
    trinton.octavation(octave=-2),
    trinton.octavation(
        octave=-1, selector=trinton.pitched_selector(pitches=["a", "b"])
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector([0], 5, first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21,)),
    evans.RhythmHandler(rhythm.rhythm_d(hand="rh", stage=3)),
    evans.PitchHandler(
        pitch_list=trinton.remove_adjacent(pitch.return_seed_pitch_sequence(index=50))
    ),
    trinton.octavation(octave=-3),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector([0], 5, first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            trinton.handwrite_nested_tuplets(
                tuplet_ratios=[
                    (
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                        -3,
                        1,
                    )
                ],
                preprocessor=None,
                nested_ratios=[
                    (1, 1, 1),
                ],
                nested_vectors=[0],
                nested_period=1,
                # extract_trivial_tuplets=False,
            ),
        ),
        voice_name="delta intermittent voice",
        direction=abjad.DOWN,
    ),
    voice=score["piano 3 voice"],
)

# first_tuplet = abjad.select.tuplet(score["delta intermittent voice"], 0)
#
# first_tuplet.multiplier = (12, 12)

trinton.make_music(
    lambda _: trinton.select_target(_, (21,)),
    evans.PitchHandler(
        pitch_list=trinton.remove_adjacent(pitch.return_seed_pitch_sequence(index=24))
    ),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=-1, selector=trinton.pitched_selector(pitches=["a", "b"])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector([0], 3, first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Accidental.transparent = ##t", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.Accidental.transparent", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.vertical_accidentals(
        selector=trinton.patterned_tie_index_selector([0], 3, pitched=True)
    ),
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, -1])),
    abjad.beam,
    trinton.notehead_bracket_command(),
    voice=score["delta intermittent voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21,)),
    evans.RhythmHandler(evans.talea([-4, 8], 4)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=rhythm.rhythm_g(stage=1, hand="rh", voice_number=2),
        selector=trinton.select_leaves_by_index([-1]),
    ),
    library.interruptive_polyphony(hand="rh", stage=1),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21,)),
    trinton.treat_tuplets(),
    evans.PitchHandler(["a''''"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["37 voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21,)),
    trinton.treat_tuplets(),
    evans.PitchHandler(["g''''", "g'''"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["35 voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 23)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh", voice_number=1),
    ),
    library.interruptive_polyphony(hand="rh", stage=2),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 23)),
    evans.PitchHandler(["a''''"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["37 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 23)),
    evans.PitchHandler(
        [
            "g'''",
            "g''''",
            "g'''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["35 voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25,)),
    evans.RhythmHandler(evans.talea([1, -1, 1, -1, 3], 8)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler([4, 0, -3, -3]),
    library.low_pass_glissandi(
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True)
    ),
    library.change_lines(lines=3, clef="percussion"),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "1. Magnet links",
                    "2. Magnet rechts",
                    "3. Styroporkugeln auf dem Deckel",
                ]
            )
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        beam_rests=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Dynamic("mf"),
            abjad.Articulation(">"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, -1], first=True, pitched=True
        ),
    ),
    voice=score["piano 1 voice"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(3, -1, 3, -1, 3, -1, 3, -1, 3, -1)],
            nested_ratios=[
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ],
            nested_vectors=[-2],
            nested_period=10,
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=9)),
    trinton.octavation(octave=-2),
    trinton.octavation(octave=-1, selector=trinton.select_tuplets_by_index([-1])),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.LilyPondLiteral(
                r"\once \override Staff.TupletBracket.direction = #DOWN", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([-5, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = 12"
            ),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    abjad.beam,
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([3])),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.interruptive_polyphony(hand="lh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, 2], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.hooked_spanner_command(
        string=r'\markup \fontsize #-2 { \musicglyph #"f" \musicglyph #"f" \musicglyph #"f" }',
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13,
        right_padding=3,
        full_string=True,
        style="solid-line-with-hook",
    ),
    voice=score["13 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([1], 16)),
    evans.PitchHandler(pitch_list=[["cs,,", "gs,,", "cs,"]]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto"), abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Accidental.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.beam,
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([3, -1]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 13)),
    evans.RhythmHandler(
        rhythm.rhythm_d(
            stage=2,
            hand="lh",
            tuplet_selector=trinton.select_logical_ties_by_index(
                [20, 23, 26, 27, 28], pitched=True
            ),
        )
    ),
    evans.PitchHandler(pitch_list=pitch.return_seed_pitch_sequence(index=15)),
    trinton.octavation(
        octave=-3,
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 7, 8, 9, 15, 20, 26, 27, 31, 32, 34, 35, 36, 37, 38], pitched=True
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [5, 16, 17, 18, 40, 41, 42], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                5,
                7,
                10,
                14,
                14,
                16,
                16,
                18,
                18,
                -15,
            ],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_logical_ties_by_index(
            [20, 21, 22, 25, 26, 27, 30, 31, 32, 33, 34, 35, 36, 37, 38],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">"), abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [16, 17], pitched=True, first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_logical_ties_by_index(
            [-15, -1], first=True, pitched=True
        ),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 19)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=1, stage=3, hand_swapping=False),
    ),
    library.change_lines(
        lines=1,
        clef="percussion",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ffff"'),
            abjad.StartHairpin("|>"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                1,
                2,
                2,
                3,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                -7,
                -7,
                -6,
                -5,
                -5,
                -4,
                -3,
                -3,
                -2,
                -1,
            ],
            first=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (20,)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=3, hand="lh")),
    evans.PitchHandler(
        pitch_list=trinton.remove_adjacent(pitch.return_seed_pitch_sequence(index=-6))
    ),
    trinton.octavation(octave=-3),
    trinton.octavation(
        octave=-1, selector=trinton.pitched_selector(pitches=["a", "b"])
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.patterned_tie_index_selector([0], 3, first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(string="Tasten", tweaks=[r"- \tweak padding #6"])
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.TupletBracket.direction = #UP", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 23)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh", voice_number=1),
    ),
    library.interruptive_polyphony(hand="lh", stage=2),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 23)),
    evans.PitchHandler(["e''"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.DOWN,
    ),
    voice=score["13 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 23)),
    evans.PitchHandler(["ds'", "ds'", "ds''"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["4 voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25,)),
    evans.RhythmHandler(evans.talea([3, -1, 3], 8)),
    evans.PitchHandler(["c'", "df,"]),
    trinton.pitch_with_selector_command(
        pitch_list=["5/2"],
        as_ratios=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True),
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.clef_whitespace_literal,
            library.boxed_markup(string="Maultrommel + Vibrator"),
            library.boxed_markup(string="Nagel + Vibrator"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                -1,
            ],
            pitched=True,
            first=True,
        ),
        direction=abjad.UP,
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.Accidental.font-size = 5",
                    r"\once \override Voice.Stem.direction = #UP",
                ],
                site="before",
            ),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True),
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([1, 1, 1, -1, -3], 8)),
        direction=abjad.UP,
        voice_name="sounding voice 1",
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25,)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            7,
            12,
            7,
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(
                string="( SYNTHESIZER EIN )",
                tweaks=[r"- \tweak color \四"],
            ),
            library.start_jaw_harp_literal,
            library.stop_jaw_harp_literal,
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 1, 2], first=True, pitched=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.transparent = ##t", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    library.low_pass_glissandi(no_ties=True),
    trinton.beam_groups(),
    trinton.hooked_spanner_command(
        string=r"\jawharp-crook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15,
        direction="down",
        right_padding=3,
        full_string=True,
        style="dashed-line-with-up-hook",
    ),
    voice=score["sounding voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (26,)),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string="( SYNTHESIZER AUS )",
                tweaks=[r"- \tweak color \四"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler([9, -9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler([-9, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[5],
    fermata="extremely-long-fermata",
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
    measures=[24],
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

trinton.fermata_measures(
    score=score,
    measures=[26],
    fermata="very-short-fermata",
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
    lambda _: trinton.select_target(_, (14, 18)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                tempo_string="48 3/4",
                previous_tempo_string="60",
                string_only=True,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=18,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string=None,
                padding=13.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

for measure in [
    1,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #16 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    r"""\abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"77" #"1" #"4"  """,
                    r"  }",
                    r"}",
                ],
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×5" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #8.5 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    r"""\abjad-metronome-mark-markup #2 #1 #2 #"49" """,
                    r"  }",
                    r"}",
                ],
                site="after",
            ),
            abjad.BarLine(":|.", site="absolute_after"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_after",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1, -1, -1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (20,),
    ),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="60",
                previous_tempo_string="48 3/4",
                padding=13.5,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (22,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="33",
                previous_tempo_string="60",
                padding=19,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# beautification

library.handle_accidentals(score=score, force_accidentals=False)

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 23)),
    trinton.detach_command(
        detachments=[abjad.Articulation], selector=trinton.pleaves()
    ),
    voice=score["35 voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.detach_command(
        detachments=[abjad.Articulation], selector=trinton.pleaves(exclude=[0, 1])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index([-4, -1], pitched=True),
    ),
    voice=score["piano 1 voice"],
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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/10",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
