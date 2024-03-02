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
                index=-16,
                reduce=True,
                slice_tuple=(0, 4),
            )
        ]
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=0, stage=2),
    ),
    rmakers.unbeam,
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        rhythm.rhythm_a(index=8, stage=1),
    ),
    rmakers.unbeam,
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.rhythm_d(
                stage=2,
                hand="rh",
                tuplet_selector=trinton.select_leaves_by_index(
                    [0, 1, 2, 4, 6, 9], pitched=True
                ),
                inverse_tuplet_directions=False,
            )
        ),
        direction=abjad.DOWN,
        voice_name="delta voice",
        preprocessor=trinton.fuse_eighths_preprocessor((9, 10, 7)),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    rmakers.force_rest,
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.Rest.transparent = ##t",
                    r"\once \override Voice.Dots.transparent = ##t",
                ],
                "before",
            ),
        ],
        selector=abjad.select.rests,
    ),
    voice=score["delta voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(pitch.return_adumbration_pitches(index=0)),
    trinton.octavation(
        octave=2, selector=trinton.select_leaves_by_index([0, 2], pitched=True)
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [1, 3, 8, 9, 10, 11, 13, 15, 17, -6, -1], pitched=True
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g'", "g''"],
        selector=trinton.patterned_tie_index_selector([1, 4], 7),
    ),
    library.change_lines(
        lines=5, clef="treble", selector=trinton.select_leaves_by_index([0])
    ),
    library.imbrication_command(
        indices=[1, 4],
        period=7,
        direction=abjad.DOWN,
        name="alpha imbrication",
        hocket=False,
    ),
    voice=score["piano 1 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    rmakers.unbeam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartBeam(),
            abjad.StopBeam(),
            abjad.BeamCount(left=1, right=1),
            abjad.BeamCount(left=1, right=1),
            abjad.StartBeam(),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([0, 26, 26, 28, 28, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                4,
                5,
                7,
                8,
                10,
                11,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index([12, 13, 18, 23], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index(
            [
                16,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [2, 5, 8, 11, 13, 14, 17, -4, -3, -2, -1], pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 10, 13, 14, 15, 16, 18, 18, 23, 24], pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_logical_ties_by_index(
            [-4, -3, -2, -1], first=True, pitched=True
        )
    ),
    voice=score["piano 1 voice temp temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #12", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.vertical_accidentals(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, grace=False),
    ),
    voice=score["piano 1 voice temp temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    library.color_music(color=r"\一"),
    voice=score["piano 1 voice temp temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    library.manual_beam_positions(positions=(-24, -24)),
    library.color_music(color=r"\一"),
    voice=score["alpha imbrication"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            stage=3,
            grace=True,
            grace_selector=trinton.select_logical_ties_by_index(
                [4, 7, 9], pitched=True, grace=False
            ),
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["f'", "ef'"],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.return_adumbration_pitches(index=0),
        selector=trinton.logical_ties(pitched=True, grace=True),
    ),
    pitch.pitch_cattenaires_graces(),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [4, 6, 8, 9, 10], pitched=True, grace=True
        ),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_leaves_by_index([11], pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartBeam(),
            abjad.StopBeam(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1], grace=False),
        direction=abjad.DOWN,
    ),
    library.cattenaires_trills(
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[5, 8, 10]),
    ),
    trinton.vertical_accidentals(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 5, 7, 7, 9], grace=False),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                6,
                7,
            ],
            first=True,
            grace=False,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=2, right=0),
        ],
        selector=trinton.select_logical_ties_by_index(
            [9, 11], first=True, grace=False, pitched=True
        ),
    ),
    voice=score["piano 1 voice temp temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(pitch.return_adumbration_pitches(index=28)),
    trinton.octavation(octave=1, selector=trinton.select_tuplets_by_index([1, 2, 3])),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([0, 5, 10], pitched=True)
    ),
    rmakers.unbeam,
    trinton.notehead_bracket_command(),
    trinton.pitch_with_selector_command(
        pitch_list=["a''", "af''"],
        selector=trinton.patterned_tie_index_selector([0, 3], 7),
    ),
    library.imbrication_command(
        indices=[0, 3],
        period=7,
        direction=abjad.UP,
        name="delta imbrication",
        hocket=False,
    ),
    voice=score["delta voice"],
)

for leaf in abjad.select.leaves(score["delta imbrication"]):
    for indicator in abjad.get.indicators(leaf, abjad.LilyPondLiteral):
        abjad.detach(indicator, leaf)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.manual_beam_positions(positions=(-9, -9)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-2", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index(
            [1, 2, 4, 5, 7, 8, 10, 11, 13, 16, 18, 19, 23, 24, 26, 28, 30, 32],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index(
            [
                21,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("s. f", direction=abjad.DOWN),
            abjad.StartHairpin("<"),
            abjad.StopHairpin(),
            abjad.Dynamic("mp"),
            trinton.make_custom_dynamic("s. f", direction=abjad.DOWN),
            abjad.Dynamic("mp"),
            trinton.make_custom_dynamic("s. f", direction=abjad.DOWN),
            abjad.Dynamic("mp"),
            trinton.make_custom_dynamic("s. f", direction=abjad.DOWN),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("f"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
                2,
                4,
                5,
                5,
                7,
                7,
                9,
                10,
                12,
                12,
                14,
                15,
                17,
                18,
                20,
                21,
                22,
                23,
                23,
                25,
                26,
                29,
                29,
                31,
                31,
                33,
            ],
            pitched=True,
            grace=False,
        ),
        direction=abjad.DOWN,
    ),
    trinton.vertical_accidentals(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.color_music(color=r"\三"),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tasten")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["delta voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    library.manual_beam_positions(positions=(26, 26)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.color_music(color=r"\三"),
    voice=score["delta imbrication"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rmakers.note),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            ["d,", "d,,"],
            ["c,", "c,,"],
            ["c,", "c,,"],
        ]
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz"),
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LaissezVibrer(),
        ],
        selector=trinton.logical_ties(last=True, pitched=True, grace=False),
    ),
    library.change_lines(
        lines=5, clef="bass", selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.rhythm_d(
                stage=1,
                hand="lh",
            )
        ),
        direction=abjad.UP,
        voice_name="top voice",
        preprocessor=trinton.fuse_eighths_preprocessor((5, 4)),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.rhythm_d(
                stage=1,
                hand="rh",
            )
        ),
        direction=abjad.DOWN,
        voice_name="bottom voice",
        preprocessor=trinton.fuse_eighths_preprocessor((5, 4)),
    ),
    voice=score["piano 3 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(pitch.return_adumbration_pitches(index=36)),
    trinton.pitch_with_selector_command(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        pitch_list=[["d,", "d,,"]],
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.logical_ties(
            exclude=[0, -3, -2, -1], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [-3, -2, -1], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.duration-log = 1", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_logical_ties_by_index([4, 6], pitched=True, first=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz pp", direction=abjad.DOWN),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([1, 1, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    rmakers.unbeam,
    abjad.beam,
    library.color_music(color="\四"),
    trinton.notehead_bracket_command(),
    voice=score["bottom voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(
        pitch_list=[
            ["f,", "a,", "c"],
            ["c", "e", "g"],
            [
                "a,",
                "c",
                "e",
            ],
            ["c", "e", "g"],
            ["g", "b", "d'"],
            ["d'", "f'", "a'"],
        ]
    ),
    trinton.change_notehead_command(notehead="la", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True, grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.StartBeam(),
            abjad.BeamCount(left=1, right=0),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([-2, -1, -1, -1], pitched=True),
    ),
    library.color_music(color="\二"),
    voice=score["top voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.rhythm_b(
                stage=3,
                grace=True,
                grace_selector=trinton.select_logical_ties_by_index(
                    [4, 8, 11], pitched=True, grace=False
                ),
            ),
        ),
        direction=abjad.UP,
        voice_name="beta voice",
        preprocessor=trinton.fuse_sixteenths_preprocessor((15, 11)),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.force_rest(selector=trinton.pleaves(exclude=[0])),
    trinton.rewrite_meter_command(),
    voice=score["beta voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "ef'",
            "df'",
        ],
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-1]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "f'",
        ],
        selector=trinton.select_logical_ties_by_index([-1], pitched=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.return_adumbration_pitches(index=-12),
        selector=trinton.logical_ties(pitched=True, grace=True),
    ),
    pitch.pitch_cattenaires_graces(),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                4,
                5,
                6,
                -3,
                -2,
            ],
            grace=True,
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_leaves_by_index([-1], grace=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [r"\voiceOne", r"\override Voice.DynamicLineSpanner.padding = 14"],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            grace=False,
        ),
    ),
    library.cattenaires_trills(
        selector=trinton.logical_ties(
            pitched=True, grace=False, exclude=[-10, -6, -3, -1]
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartBeam(),
            abjad.StopBeam(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 13], first=True, grace=False, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [3, 5, 7, 9, 10, 12], first=True, grace=False, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 12], first=True, grace=False, pitched=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[library.change_to_rh, library.revert_to_lh],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    library.manual_beam_positions(
        selector=trinton.pleaves(grace=False), positions=(11, 11)
    ),
    library.manual_beam_positions(
        selector=trinton.pleaves(grace=True), positions=(16, 16)
    ),
    trinton.vertical_accidentals(
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[-1]
        )
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("fp")],
        selector=trinton.select_leaves_by_index([0, -2], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    voice=score["beta voice"],
)

beta_leaves = abjad.select.leaves(score["beta voice"], pitched=True, grace=False)

relevant_leaves = beta_leaves[0:-1]

for leaf in relevant_leaves:
    abjad.overrides.override(leaf).Stem.direction = abjad.UP

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\pageBreak", site="absolute_before"),
            # abjad.LilyPondLiteral(
            #     [
            #         r"\override Score.StaffGrouper.staff-staff-spacing = #'((basic-distance . 20) (minimum distance . 20) (padding . 5) (stretchability . 0))",
            #         # r"\override Score.DynamicLineSpanner.padding = 8",
            #         # r"\override Score.DynamicText.padding = 8"
            #     ],
            #     site="before"
            # ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

for measure in [
    1,
    2,
    3,
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
                    r"  \raise #21 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    r"""\abjad-metronome-mark-mixed-number-markup #3 #0 #2 #"75" #"3" #"5"  """,
                    r"  }",
                    r"}",
                ],
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_before",
            ),
            abjad.BarLine(":|.", site="absolute_after"),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_after",
            ),
            # abjad.LilyPondLiteral(
            #     r"\override StaffGrouper.staff-staff-spacing = #'((basic-distance . 13) (minimum distance . 13) (padding . 0) (stretchability . 0))",
            #     site="absolute_after"
            # ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1, -1, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine(":|.|:", site="absolute_after"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "Adumbrationsstück:",
                    "a way to draw water",
                ],
                font_name="Bodoni72 Book Italic",
                fontsize=3,
                tweaks=[r"- \tweak padding #8"],
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×4" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 1 voice temp temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "1 - 3"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "4"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta #f))""",
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 1 voice temp temp"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.Markup(
#                 r"""\markup { \raise #2.5 \with-dimensions-from \null \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #2 #"118" } }""",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (16, 18)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 tempo_string="138 3/4",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             r"""\markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #1 #2 #"49" } }""",
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=22,
#         full_string=True,
#         right_padding=0,
#     ),
#     voice=score["Global Context"],
# )

# beautification

# library.handle_accidentals(score=score, force_accidentals=False)

# library.clean_graces(score=score)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/15",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="15",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
