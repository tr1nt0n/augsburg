import abjad
import baca
import evans
import fractions
import itertools
import trinton
import random
import quicktions
from itertools import cycle
from augsburg import pitch
from abjadext import rmakers

# score


def augsburg_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
        ],
        groups=[
            3,
            1,
        ],
        staff_types=[
            [
                "Staff",
                "timeSignatureStaff",
                "Staff",
            ],
            "lowPassStaff",
        ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# sequences

logistic_map = [_ for _ in trinton.logistic_map(x=4, r=3.57, n=9) if _ > 2]

logistic_map = trinton.remove_adjacent(logistic_map)


def logistic_map_sequence(index):
    return trinton.rotated_sequence(logistic_map, index)


# notation tools


def interruptive_polyphony(
    score, selector=lambda _: trinton.select_target(_, (1, 2)), stage=1
):
    for voice_name, color in zip(
        ["37 voice temp", "35 voice", "13 voice temp", "4 voice"],
        ["darkmagenta", "magenta", "cyan", "darkcyan"],
    ):
        selections = selector(score[voice_name])
        leaves = abjad.select.leaves(selections)

        abjad.attach(
            abjad.LilyPondLiteral(
                [
                    rf"\override NoteHead.details.interrupt-color = {color}",
                    rf"\override NoteHead.details.switch-color = {color}",
                    rf"\override NoteHead.details.folow-color = {color}",
                    rf"\override NoteHead.details.hocket-color = {color}",
                ],
                site="before",
            ),
            leaves[0],
        )

        if voice_name == "37 voice temp":
            leaves = leaves
        else:
            leaves = abjad.select.exclude(leaves, [0])

        # abjad.attach(
        #     abjad.LilyPondLiteral(r"\start-explicit-interrupt", "before"),
        #     leaves[0]
        # )
        #
        # abjad.attach(
        #     abjad.LilyPondLiteral(r"\stop-explicit-interrupt", "after"),
        #     leaves[-1]
        # )

        for leaf in leaves:
            if stage == 1:
                literal_string = r"\interrupt"
            else:
                literal_string = r"\hocket"

            abjad.attach(abjad.LilyPondLiteral(literal_string, site="before"), leaf)


# tempi

# metronome_marks = {
#     "48": abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 48),
#     "57 3/5": abjad.MetronomeMark.make_tempo_equation_markup(
#         (1, 4), quicktions.Fraction(288, 5)
#     ),
#     "72": abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 72),
#     "96": abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 96),
#     "144": abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 144),
#     # slower
#     "2.=4": abjad.MetricModulation(
#         left_rhythm=abjad.Note("c2."), right_rhythm=abjad.Note("c4")
#     ),
#     "4:5(2)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("4:5", "c2"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "2=4": abjad.MetricModulation(
#         left_rhythm=abjad.Note("c2"), right_rhythm=abjad.Note("c4")
#     ),
#     "5:6(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("5:6", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "4:5(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("4:5", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "3:5(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("3:5", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "3:4(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("3:4", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "4.=4": abjad.MetricModulation(
#         left_rhythm=abjad.Note("c4."), right_rhythm=abjad.Note("c4")
#     ),
#     # faster
#     "6:5(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("6:5", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "5:4(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("5:4", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "5:4(8)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("5:4", "c8"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "5:3(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("5:3", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "4:3(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("4:3", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "3:2(4)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("3:2", "c4"),
#         right_rhythm=abjad.Note("c4"),
#     ),
#     "8=4": abjad.MetricModulation(
#         left_rhythm=abjad.Note("c8"), right_rhythm=abjad.Note("c4")
#     ),
#     "3:2(8)=4": abjad.MetricModulation(
#         left_rhythm=abjad.Tuplet("3:2", "c8"),
#         right_rhythm=abjad.Note("c4"),
#     ),
# }


# def metronome_markups(
#     met_string, mod_string=None, string_only=False, parenthesis=False
# ):
#     if mod_string is None:
#         if parenthesis is False:
#             mark = abjad.LilyPondLiteral(
#                 [
#                     r"^ \markup {",
#                     r"  \raise #9 \with-dimensions-from \null",
#                     r"  \override #'(font-size . 5.5)",
#                     r"  \concat {",
#                     f"      {met_string.string[8:]}",
#                     r"  }",
#                     r"}",
#                 ],
#                 site="after",
#             )
#             return mark
#         else:
#             mark = f"\markup {{ \override #'(font-size . 5.5) \concat {{ ( {met_string.string[8:]} ) }} }}"
#             return mark
#
#     else:
#         if string_only is True:
#             mark = f"\markup {{ \override #'(font-size . 5.5) \concat {{ {met_string.string[8:]} [{abjad.lilypond(mod_string)[8:]}] }} }}"
#         else:
#             mark = abjad.LilyPondLiteral(
#                 [
#                     r"^ \markup {",
#                     r"  \raise #9 \with-dimensions-from \null",
#                     r"  \override #'(font-size . 5.5)",
#                     r"  \concat {",
#                     f"      {met_string.string[8:]}",
#                     f"      [{abjad.lilypond(mod_string)[8:]}]",
#                     r"  }",
#                     r"}",
#                 ],
#                 site="after",
#             )
#         return mark

# markups


def boxed_markup(string, tweaks, font_name="Bodoni72 Book", fontsize=8):
    markup = abjad.Markup(
        rf"""\markup \override #'(font-name . " {font_name} ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #{fontsize} \box \line {{ {string} }}""",
    )

    for tweak in tweaks:
        markup = abjad.bundle(markup, tweak)

    return markup
