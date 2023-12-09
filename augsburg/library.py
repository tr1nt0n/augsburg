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


# def respell_tuplets(tuplets):
#     for tuplet in tuplets:
#         prolation = tuplet.implied_prolation
#         if prolation.denominator == 3 and prolation.numerator % 2 == 0:
#             rmakers.force_diminution(tuplet)
#         if prolation.denominator == 5 and prolation.numerator % 3 == 0:
#             rmakers.force_augmentation(tuplet)
#         if prolation.denominator % 5 == 0 and prolation.numerator % 9 == 0:
#             rmakers.force_diminution(tuplet)
#         if prolation.denominator == 7 and prolation.numerator % 4 == 0:
#             rmakers.force_augmentation(tuplet)
#         if prolation.denominator == 7 and prolation.numerator % 5 == 0:
#             rmakers.force_augmentation(tuplet)
#         if prolation.denominator == 7 and prolation.numerator % 6 == 0:
#             rmakers.force_diminution(tuplet)
#         if prolation.denominator % 2 == 0 and prolation.numerator % 7 == 0:
#             rmakers.force_diminution(tuplet)
#         if prolation.denominator % 3 == 0 and prolation.numerator % 7 == 0:
#             rmakers.force_augmentation(tuplet)
#         if prolation.denominator == 9 and prolation.numerator % 5 == 0:
#             rmakers.force_augmentation(tuplet)
#         if prolation.denominator == 9 and prolation.numerator % 7 == 0:
#             rmakers.force_diminution(tuplet)
#         if prolation.denominator % 9 == 0 and prolation.numerator % 11 == 0:
#             rmakers.force_augmentation(tuplet)
#             tuplet.denominator = 11
#         if prolation.denominator % 10 == 0 and prolation.numerator % 11 == 0:
#             rmakers.force_augmentation(tuplet)
#         if prolation.denominator == 11 and prolation.numerator % 3 == 0:
#             rmakers.force_augmentation(tuplet)
#         if prolation.denominator == 15 and prolation.numerator % 2 == 0:
#             rmakers.force_augmentation(tuplet)


def respell_tuplets(tuplets):
    for tuplet in tuplets:
        prolation = tuplet.implied_prolation
        numerator = prolation.denominator
        denominator = prolation.numerator
        if numerator == 3 and denominator == 2:
            pass

        else:
            double_denominator = denominator * 2
            half_denominator = int(denominator / 2)

            current_difference = abs(numerator - denominator)
            double_difference = abs(numerator - double_denominator)
            half_difference = abs(numerator - half_denominator)

            difference_array = [current_difference, double_difference, half_difference]
            difference_array = sorted(difference_array)

            smallest = difference_array[0]

            if smallest == current_difference:
                pass

            if smallest == half_difference:
                rmakers.force_diminution(tuplet)

            if smallest == double_difference:
                rmakers.force_augmentation(tuplet)


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
