import abjad
import baca
import evans
import trinton
import fractions
import itertools
import random
from augsburg import library
from itertools import cycle

# monotonically descending helianthated time signatures

monotonically_descending_numerators = [14, 13, 11, 10, 9, 8, 7, 6, 5, 4, 3]

partitioned_numerators = abjad.sequence.partition_by_counts(
    sequence=monotonically_descending_numerators,
    counts=[
        3,
        2,
        3,
        3,
    ],
    overhang=True,
)

helianthated_numerators = baca.sequence.helianthate(partitioned_numerators, n=-1, m=1)

numerator_sequence = abjad.sequence.flatten(helianthated_numerators)

numerator_sequence = trinton.rotated_sequence(numerator_sequence, 11)


def return_descending_ts(
    index=0, cut_time=False, double_time=False, chaos=False, reduce=False
):
    out = []
    denominator = 8
    denominators = []

    if cut_time is True:
        denominator = int(denominator * 2)

    if double_time is True:
        denominator = int(denominator / 2)

    if chaos is True:
        logistic_map = [
            _ for _ in library.logistic_map_sequence(index=index) if _ > 3 and _ < 8
        ]
        _integer_to_denominator = {4: 2, 5: 4, 6: 8, 7: 16}

        for _ in logistic_map:
            denominators.append(_integer_to_denominator[_])

    numerators = trinton.rotated_sequence(
        numerator_sequence, index % len(numerator_sequence)
    )

    if chaos is False:
        for _ in numerators:
            pair = (_, denominator)
            out.append(pair)

    else:
        denominators = itertools.cycle(denominators)
        for numerator, denominator in zip(numerators, denominators):
            pair = (numerator, denominator)

            out.append(pair)

    if reduce is True:
        new_out = []
        for pair in out:
            if pair[0] > 5 and pair[0] != 8:
                reduced_fraction = fractions.Fraction(pair[0], pair[-1])
                pair = (reduced_fraction.numerator, reduced_fraction.denominator)
                new_out.append(pair)
            else:
                new_out.append(pair)

        out = new_out

    return out
