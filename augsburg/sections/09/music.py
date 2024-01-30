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
                (5, 2),
                (7, 4),
                (3, 2),
                (4, 4),
                (7, 4),
                (5, 2),
                (4, 4),
                (4, 4),
                (4, 4),
                (3, 2),
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (4, 4),
                (1, 4),
            ],
        ]
    )
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([-3, 1, 2, 2, 2, 5, 5, -2, 6, 5, 1, -4, 8], 8)),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
            ],
            pitched=True,
        ),
    ),
    evans.PitchHandler(
        [
            "ef,,",
            "f,",
            "f,",
            "c'",
            "f,",
            "b,,",
            ["d'''", "f'''", "a'''", "c''''"],
        ]
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["416/35", "35/16", "7/2", "7/2", "3/1"],
        as_ratios=True,
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 4, 5], pitched=True),
    ),
    library.change_lines(lines=5, clef="treble"),
    library.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([3], first=True, pitched=True),
    ),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_logical_ties_by_index([4], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.return_clef_whitespace_literal(offset_pair=(-6, 0)),
            library.return_clef_whitespace_literal(offset_pair=(-5, 0)),
        ],
        selector=trinton.select_logical_ties_by_index([0, 4], first=True, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="la",
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 4, 5], first=True, pitched=True
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Accidental.font-size = 5", site="before"
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 4, 5], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.duration-log = 2", site="before"
            ),
            abjad.LilyPondLiteral(r"\once \override NoteHead.no-ledgers = ##t"),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(string="Nagel + Vibrator"),
            library.boxed_markup(string=["Magnetgruppe", "mit der Handfläche"]),
            library.boxed_markup(string="Nagel + Vibrator"),
            library.boxed_markup(
                string=[
                    "Die Saiten in der höchsten Oktave",
                    "auf ihrer Rückseite anschlagen",
                ]
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 4, -1], pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([8, 8, 9, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True),
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([8, 9, -1], pitched=True)
    ),
    library.low_pass_glissandi(
        selector=trinton.logical_ties(pitched=True, exclude=[3, -1])
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    library.interruptive_polyphony(hand="rh", stage=1),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.PitchHandler(["g''''", "g''''", "a''''", "a''''", "a''''"]),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tasten")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    voice=score["37 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["35 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                2,
                2,
                2,
                2,
                3,
                1,
                -5,
                5,
                5,
                5,
                5,
                5,
            ],
            8,
        )
    ),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
            ],
            pitched=True,
        ),
    ),
    evans.PitchHandler(["b,,", "b,,", ["d'''", "f'''", "a'''", "c''''"], "c'", "b,,"]),
    trinton.pitch_with_selector_command(
        pitch_list=["3/1", "11/4", "11/4"],
        as_ratios=True,
        selector=trinton.select_logical_ties_by_index([0, 1, -1], pitched=True),
    ),
    library.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([3], first=True, pitched=True),
    ),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_logical_ties_by_index([4], first=True, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="la",
        selector=trinton.select_leaves_by_index([6, 7], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, -1], pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Accidental.font-size = 5", site="before"
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, -1], pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override NoteHead.no-ledgers = ##t"),
        ],
        selector=trinton.select_leaves_by_index([6, 7], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(string="Nagel + Vibrator"),
            library.boxed_markup(
                string=[
                    "Die Saiten in der höchsten Oktave",
                    "auf ihrer Rückseite anschlagen",
                ]
            ),
            library.boxed_markup(string=["Magnetgruppe", "mit der Handfläche"]),
            library.boxed_markup(string="Nagel + Vibrator"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 4], pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo"), abjad.Dynamic("mp")],
        selector=trinton.select_logical_ties_by_index([-3], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([8, 8, 9], pitched=True),
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([-3, -4, -5, -6], pitched=True)
    ),
    library.low_pass_glissandi(
        selector=trinton.logical_ties(pitched=True, exclude=[-1, -2, -3])
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh", voice_number=1),
    ),
    library.interruptive_polyphony(hand="rh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.PitchHandler(
        [
            "g''''",
            "g''''",
            "a''''",
            "g''''",
            "a''''",
            "a''''",
            "g''''",
            "a''''",
            "a''''",
            "a''''",
            "a''''",
            "a''''",
            "a''''",
            "a''''",
        ]
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tasten")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 9], pitched=True, first=True
        ),
        direction=abjad.DOWN,
    ),
    voice=score["37 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.PitchHandler(
        [
            "g''''",
            "g''''",
            "g''''",
            "g'''",
            "g''''",
            "g''''",
            "g'''",
            "g''''",
            "g'''",
            "g'''",
            "g'''",
            "g'''",
            "g'''",
            "g'''",
            "g'''",
            "g'''",
            "g'''",
            "g'''",
            "g'''",
        ]
    ),
    voice=score["35 voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(
        evans.talea([-3, 1, 2, 2, 1, 3], 8),
    ),
    trinton.rewrite_meter_command(),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    evans.PitchHandler(["b,,", "df,", "c'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["11/4", "5/2"],
        as_ratios=True,
        selector=trinton.logical_ties(exclude=[-1]),
    ),
    library.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([-1])),
    library.low_pass_glissandi(
        selector=trinton.logical_ties(pitched=True, exclude=[-1])
    ),
    trinton.linear_attachment_command(
        attachments=[
            library.boxed_markup(string="Nagel + Vibrator"),
            library.boxed_markup(string=["Magnetgruppe", "mit der Handfläche"]),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, exclude=[-1])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Accidental.font-size = 5", site="before"
            )
        ],
        selector=trinton.logical_ties(first=True, pitched=True, exclude=[-1]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="rh", voice_number=2),
    ),
    library.change_lines(lines=5, clef="treble"),
    library.interruptive_polyphony(hand="rh", stage=2, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.PitchHandler(
        [
            "a''''",
        ]
    ),
    trinton.attachment_command(
        attachments=[library.boxed_markup(string="Tasten")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["37 voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.PitchHandler(
        [
            "g'''",
        ]
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g''''"],
        selector=trinton.patterned_tie_index_selector([2, 4], 7, pitched=True),
    ),
    voice=score["35 voice 2"],
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_e(hand="lh")),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=3, hand="rh")),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), library.boxed_markup(string="( Tasten )")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.Dynamic("p"), abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=3, hand="lh")),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["epsilon intermittent voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh"),
    ),
    evans.PitchHandler(pitch_list=["g''''"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.interruptive_polyphony(hand="lh", stage=1),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.PitchHandler(
        [
            "g''''",
            "e''''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">"), abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    voice=score["13 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.PitchHandler(
        [
            "g''''",
            "g''''",
            "ds''''",
            "ds''''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(rhythm.rhythm_e(hand="lh", voice_number=1)),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=6, hand="rh")),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), library.boxed_markup(string="( Tasten )")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=6, hand="lh")),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("fff")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.DOWN,
    ),
    voice=score["epsilon intermittent voice 2 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh", voice_number=1),
    ),
    library.interruptive_polyphony(hand="lh", stage=1, dynamic=False),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.PitchHandler(
        [
            "g''''",
            "g''''",
            "g''''",
            "e''''",
            "e''''",
            "g''''",
            "e''''",
            "e''''",
            "e''''",
            "e''''",
            "e''''",
            "e''''",
            "e''''",
            "e''''",
            "e''''",
        ]
    ),
    voice=score["13 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.PitchHandler(
        [
            "g''''",
            "g''''",
            "ds''''",
            "g''''",
            "g''''",
            "g''''",
            "ds''''",
            "ds''''",
            "g''''",
            "ds''''",
            "ds'''",
            "ds'''",
        ]
    ),
    voice=score["4 voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(rhythm.rhythm_e(hand="lh", voice_number=2)),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=5, hand="rh")),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), library.boxed_markup(string="( Tasten )")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=5, hand="lh")),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("fff")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.DOWN,
    ),
    voice=score["epsilon intermittent voice 2 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(
        rhythm.rhythm_g(stage=1, hand="lh", voice_number=2),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.interruptive_polyphony(hand="lh", stage=2, dynamic=False),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.PitchHandler(
        [
            "e''''",
            "e''''",
            "e''''",
            "e''''",
            "e'''",
            "e'''",
            "e''''",
            "e'''",
            "e'''",
            "e'''",
            "e'''",
            "e'''",
            "e'''",
            "e'''",
            "e'''",
            "e'''",
            "e'''",
            "e'''",
        ]
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, 8], pitched=True)
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([9, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([8, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["13 voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.PitchHandler(
        [
            "ds'''",
            "ds'''",
            "ds'''",
            "ds'''",
            "ds'''",
            "ds'''",
            "ds'''",
            "ds'''",
            "ds'''",
            "ds''",
            "ds''",
            "ds''",
            "ds'''",
            "ds''",
            "ds''",
            "ds''",
            "ds'''",
            "ds''",
            "ds''",
            "ds''",
        ]
    ),
    voice=score["4 voice 2"],
)

# filter music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler([-9, -3]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler([-3, 4]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    trinton.aftergrace_command(),
    evans.PitchHandler([4, 9]),
    library.low_pass_glissandi(),
    voice=score["piano 5 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[16],
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (6, 10)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 tempo_string="97 1/2",
#                 previous_tempo_string=None,
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             library.metronome_markups(
#                 tempo_string="138 3/4",
#                 previous_tempo_string="97 1/2",
#                 string_only=True,
#                 parenthesis=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=16,
#         full_string=True,
#         right_padding=0,
#     ),
#     voice=score["Global Context"],
# )

for measures, padding in zip([(1,), (5,), (10,)], [7, 9, 7]):
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            measures,
        ),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="138 3/4",
                    previous_tempo_string=None,
                    padding=padding,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measures, padding in zip(
    [(4,), (7,), (11,)],
    [21.5, 19, 19],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        trinton.attachment_command(
            attachments=[
                library.metronome_markups(
                    tempo_string="33",
                    previous_tempo_string=None,
                    padding=padding,
                    string_only=False,
                    parenthesis=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )


# trinton.make_music(
#     lambda _: trinton.select_target(_, (12,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"^ \markup {",
#                     r"  \raise #11 \with-dimensions-from \null",
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

# beautification

library.handle_accidentals(score=score, force_accidentals=False)

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/09",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
