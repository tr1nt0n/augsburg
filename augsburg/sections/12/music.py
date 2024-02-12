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
    ts.assemble_section_ts([[(5, 4) for _ in range(0, 17)], [(6, 8)], [(1, 4)]])
)

# rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(
        evans.talea([1], 8, extra_counts=[0, -1]),
    ),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=13, hand="rh")),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 5, 6, 8, 9, 10, 12, 13, 14, 15]
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[5, 9, 14],
            head_indices_lists=[
                [0],
                [0],
                [0],
            ],
        ),
    ),
    trinton.octavation(
        octave=-1, selector=trinton.select_logical_ties_by_index([1, 3, 7, 11, -1])
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves(exclude=[-4, -3, -2, -1])),
    trinton.respell_tuplets_command(),
    trinton.notehead_bracket_command(),
    abjad.beam,
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([5], 16)),
        direction=abjad.DOWN,
        voice_name="lower melody",
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-3, -2, -1])),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["ef'''", "df'''"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["lower melody"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    abjad.beam,
    voice=score["piano 1 voice"],
)

for voice_name in ["piano 1 voice", "piano 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (14,)),
        evans.RhythmHandler(evans.accelerando([(1, 8), (1, 20), (1, 16)])),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (15,)),
        evans.RhythmHandler(evans.talea([1], 16)),
        abjad.beam,
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (16,)),
        evans.RhythmHandler(evans.accelerando([(1, 20), (1, 8), (1, 16)])),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (17,)),
        evans.RhythmHandler(evans.talea([1], 8)),
        abjad.beam,
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=30, hand="rh")),
    trinton.octavation(
        octave=-1, selector=trinton.select_logical_ties_by_index([4, 6, 19, 21])
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[2, 8, 10, 12, 14, 23],
            head_indices_lists=[
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
            ],
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.notehead_selector(
            chord_indices=[4, 6, 19, 21],
            head_indices_lists=[
                [-2, -1],
                [-2, -1],
                [-2, -1],
                [-2, -1],
            ],
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                5,
                16,
                18,
                20,
            ],
            head_indices_lists=[
                [0],
                [0],
                [0],
                [0],
                [0],
            ],
        ),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    evans.PitchHandler(pitch_list=pitch.return_e_pentachords(index=-1)),
    trinton.octavation(octave=-1, selector=trinton.pleaves(exclude=[0, -2, -1])),
    trinton.octavation(
        octave=1,
        selector=trinton.notehead_selector(
            chord_indices=[15, -2], head_indices_lists=[[0], [0]]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17,)),
    evans.PitchHandler(pitch_list=pitch.return_e_pentachords(index=18)),
    trinton.octavation(
        octave=1,
        selector=trinton.pleaves(
            exclude=[
                0,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 17)),
    abjad.slur,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    evans.PitchHandler(pitch_list=[["cs'", "as'", "cs''"]]),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    abjad.slur,
    voice=score["piano 1 voice"],
    beam_meter=True,
)

# lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    evans.RhythmHandler(
        evans.talea(
            [3, 2, 3, 1, 1, -1, 1, -1, 1, 2, 3, 2, 1, -2, 3, 1, 1, 1, 1, 1, 1, 1], 8
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.rewrite_meter_command(),
    voice=score["piano 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 17)),
    evans.PitchHandler(pitch_list=pitch.return_epsilon_chords(index=13, hand="lh")),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 14)),
    trinton.octavation(
        octave=1,
        selector=trinton.logical_ties(
            pitched=True, exclude=[1, 3, 7, 11, 16, 21, 23, -7, -6, -5, -4, -3, -2, -1]
        ),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 17)),
    trinton.octavation(
        octave=-1,
        selector=trinton.pitched_selector(pitches=["e"]),
    ),
    voice=score["piano 3 voice"],
)


def make_octaves():
    def octaves(argument):
        pties = abjad.select.logical_ties(argument, pitched=True)

        for tie in pties:
            first_leaf = tie[0]
            fundamental = first_leaf.written_pitch.number
            new_chord = [fundamental, fundamental + 12]
            handler = evans.PitchHandler(pitch_list=[new_chord])
            handler(tie)

    return octaves


trinton.make_music(
    lambda _: trinton.select_target(_, (11, 17)),
    make_octaves(),
    trinton.ottava_command(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [24, -1], pitched=True, first=True
        ),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 17)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_logical_ties_by_index(
            [2, -1], first=True, pitched=True
        ),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 13)),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(direction=abjad.UP), abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True, exclude=[-3, -2, -1]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    evans.PitchHandler(pitch_list=[["cs,,", "gs,,", "cs,"]]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    abjad.slur,
    voice=score["piano 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 19)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 3 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[19],
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

# for measure in [
#     1,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                tempo_string="138 3/4",
                previous_tempo_string=None,
                padding=10,
                string_only=False,
                parenthesis=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×18" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_before",
            ),
            abjad.BarLine(":|.", site="absolute_after"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f",
                site="absolute_after",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1, -1, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            library.boxed_markup(
                string=[
                    "Inneres Stück:",
                    "Trato de recordar que la ira del diablo",
                    "también se la dio Dios.",
                ],
                font_name="Bodoni72 Book Italic",
                fontsize=3,
                tweaks=[r"- \tweak padding #4"],
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
    lambda _: trinton.select_target(_, (16, 18)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                tempo_string="138 3/4",
                previous_tempo_string=None,
                string_only=True,
                parenthesis=True,
            ),
            r"""\markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #1 #2 #"49" } }""",
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=22,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

# beautification

library.handle_accidentals(score=score, force_accidentals=False)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (22, 23)),
#     trinton.detach_command(
#         detachments=[abjad.Articulation], selector=trinton.pleaves()
#     ),
#     voice=score["35 voice 1"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.detach_command(
#         detachments=[abjad.Articulation], selector=trinton.pleaves(exclude=[0, 1])
#     ),
#     trinton.attachment_command(
#         attachments=[abjad.Articulation("marcato")],
#         selector=trinton.select_leaves_by_index([-4, -1], pitched=True),
#     ),
#     voice=score["piano 1 voice"],
# )

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
    segment_path="/Users/trintonprater/scores/augsburg/augsburg/sections/12",
    build_path="/Users/trintonprater/scores/augsburg/augsburg/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
