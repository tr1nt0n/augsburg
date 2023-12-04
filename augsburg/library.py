import abjad
import baca
import evans
import fractions
import itertools
import trinton
import random
import quicktions
from abjadext import rmakers
from abjadext import microtones
from itertools import cycle
from augsburg import pitch
from augsburg import rhythm
from augsburg import library

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
