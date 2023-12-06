import abjad
import baca
import evans
import trinton
import fractions
import itertools
import math
import random
import quicktions
from abjadext import rmakers
from itertools import cycle
from augsburg import library


def rhythm_a(index=0, stage=1):
    def rhythm(durations):
        beat_regions = []
        for i, duration in enumerate(durations):
            if i % 2 == 1:
                beat_regions.append(duration)
            else:
                numerator = int(duration.numerator)
                denominator = int(duration.denominator)
                meter = abjad.Meter(duration)

                if numerator % 3 == 0:
                    regions = []
                    if meter.is_compound is True:
                        range_limit = int(numerator / 3)
                        for _ in range(0, range_limit):
                            regions.append(abjad.Duration((3, denominator)))

                    else:
                        for _ in range(0, numerator):
                            regions.append(abjad.Duration((1, denominator)))

                    beat_regions.append(regions)

                if numerator % 2 == 0 and numerator % 3 != 0:
                    regions = []
                    for _ in range(0, numerator):
                        regions.append(abjad.Duration((1, denominator)))

                    beat_regions.append(regions)

                def is_prime(n):
                    for i in range(2, n):
                        if (n % i) == 0:
                            return False
                        else:
                            return True

                if is_prime(numerator) is True and numerator > 3 and numerator % 9 != 0:
                    regions = []
                    regions.append(abjad.Duration((3, denominator)))

                    for _ in range(0, numerator):
                        if sum(regions) == numerator / denominator:
                            pass
                        else:
                            regions.append(abjad.Duration((2, denominator)))

                    regions = trinton.rotated_sequence(regions, 1)

                    beat_regions.append(regions)

        tuplet_ratios = []

        new_index = index

        for region in beat_regions:
            if isinstance(region, list):
                for subregion, i in zip(
                    region,
                    library.logistic_map_sequence(
                        index=new_index % len(library.logistic_map)
                    ),
                ):
                    tuplet_list = [1 for _ in range(i)]
                    tuplet_tuple = tuple(tuplet_list)
                    tuplet_ratios.append(tuplet_tuple)
                    new_index += 1

                else:
                    map_sequence = library.logistic_map_sequence(
                        index=new_index % len(library.logistic_map)
                    )
                    i = map_sequence[0]
                    tuplet_list = [math.ceil(i / 2), math.floor(i / 2)]
                    tuplet_tuple = tuple(tuplet_list)
                    tuplet_ratios.append(tuplet_tuple)
                    new_index += 1

        components = rmakers.tuplet(abjad.sequence.flatten(beat_regions), tuplet_ratios)

        components = abjad.Container(components)

        rmakers.rewrite_dots(components)
        rmakers.trivialize(components)
        rmakers.rewrite_rest_filled(components)
        rmakers.rewrite_sustained(components)

        tuplets = abjad.select.tuplets(components)

        for tuplet in tuplets:
            rmakers.rewrite_dots(tuplet)

        library.respell_tuplets(tuplets)

        map_sequence = library.logistic_map_sequence(index=index)

        nested_ratios = []

        for i in map_sequence:
            tuplet_list = [1 for _ in range(i)]
            tuplet_tuple = tuple(tuplet_list)
            nested_ratios.append(tuplet_tuple)

        measures = abjad.select.partition_by_durations(
            components,
            durations,
            cyclic=False,
            fill=abjad.EXACT,
            in_seconds=False,
            overhang=False,
        )

        for i, measure in enumerate(measures):
            measure_ties = abjad.select.logical_ties(measure)
            tie_durations = [
                abjad.get.duration(tie, preprolated=True) for tie in measure_ties
            ]
            if i % 2 == 1:
                tuplets = rmakers.tuplet(tie_durations, nested_ratios)
                rmakers.rewrite_dots(tuplets)
                rmakers.trivialize(tuplets)
                rmakers.rewrite_rest_filled(tuplets)
                rmakers.rewrite_sustained(tuplets)
                for tie, tuplet in zip(measure_ties, tuplets):
                    abjad.mutate.replace(tie, tuplet)
            else:
                pass

        if stage == 2:
            tuplets = abjad.select.tuplets(components)
            for tuplet in tuplets:
                rmakers.force_rest(abjad.select.leaf(tuplet, 0))

        else:
            measures = abjad.select.partition_by_durations(
                components,
                durations,
                cyclic=False,
                fill=abjad.EXACT,
                in_seconds=False,
                overhang=False,
            )

            for i, measure in zip(map_sequence, measures):
                rmakers.force_rest(abjad.select.logical_ties(measure))
                ties = abjad.select.logical_ties(measure)
                pulse_amount = len(ties)

                if i >= pulse_amount:
                    selections = abjad.select.exclude(ties, [0])

                else:
                    initial_attack = int(pulse_amount / i)

                    attacks = [initial_attack]

                    multiplier = 2

                    for _ in range(1, i):
                        attack = int(math.floor(pulse_amount * multiplier / i))
                        attack = attack - 1
                        attacks.append(attack)
                        multiplier += 1

                    attacks = trinton.remove_adjacent(attacks)

                    selector = trinton.patterned_tie_index_selector(
                        attacks, pulse_amount
                    )

                    selections = selector(ties)

                rmakers.force_note(selections)

        tuplets = abjad.select.tuplets(components)

        for tuplet in tuplets:
            if isinstance(abjad.get.parentage(tuplet).parent, abjad.Tuplet):
                library.respell_tuplets([tuplet])
            rmakers.rewrite_rest_filled(tuplets)
            rmakers.rewrite_sustained(tuplets)
            # abjad.beam(tuplet, beam_rests=False)

        rmakers.extract_trivial(components)

        selections = abjad.mutate.eject_contents(components)

        return selections

    return rhythm
