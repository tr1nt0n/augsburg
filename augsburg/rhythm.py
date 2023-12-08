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

            if stage > 2:
                rests = abjad.select.rests(components)
                rest_groups = abjad.select.group_by_contiguity(rests)
                for group in rest_groups:
                    if len(group) == 1:
                        force_note_group = group
                    else:
                        force_note_group = abjad.select.exclude(group, [-1])
                    rmakers.force_note(force_note_group)

                tuplets = abjad.select.tuplets(components)

                relevant_tuplets = []

                for tuplet in tuplets:
                    tuplet_contents = abjad.get.contents(tuplet)[1:]
                    if any(isinstance(item, abjad.Tuplet) for item in tuplet_contents):
                        pass
                    else:
                        relevant_tuplets.append(tuplet)

                for tuplet in relevant_tuplets:
                    tuplet_pleaves = abjad.select.leaves(tuplet, pitched=True)
                    tuplet_leaves = abjad.select.leaves(tuplet)
                    fuse_groups = abjad.select.group_by_contiguity(tuplet_pleaves)
                    for group in fuse_groups:
                        abjad.mutate.fuse(group)

        tuplets = abjad.select.tuplets(components)

        if stage < 3:
            for tuplet in tuplets:
                if isinstance(abjad.get.parentage(tuplet).parent, abjad.Tuplet):
                    library.respell_tuplets([tuplet])
                    rmakers.rewrite_rest_filled(tuplet)
                    rmakers.rewrite_sustained(tuplet)
                # abjad.beam(tuplet, beam_rests=False)
                # rmakers.extract_trivial(components)

        else:
            parent_tuplets = []

            for tuplet in tuplets:
                tuplet_contents = abjad.get.contents(tuplet)[1:]
                if any(isinstance(item, abjad.Tuplet) for item in tuplet_contents):
                    parent_tuplets.append(tuplet)

            for tuplet in parent_tuplets:
                tuplet_contents = abjad.get.contents(tuplet)[1:]
                tuplet_pleaves = abjad.select.leaves(tuplet_contents, pitched=True)
                pleaves_duration = abjad.get.duration(tuplet_pleaves)
                tuplet_duration = abjad.get.duration(tuplet)

                if pleaves_duration == tuplet_duration:
                    full_measure = rmakers.tuplet([tuplet_duration], [(1,)])
                    container = abjad.Container(full_measure)
                    full_measure = abjad.mutate.eject_contents(container)
                    abjad.mutate.replace(tuplet, full_measure)

            tuplets = abjad.select.tuplets(components)

            for tuplet in tuplets:
                library.respell_tuplets([tuplet])
                rmakers.rewrite_rest_filled(tuplet)
                rmakers.rewrite_sustained(tuplet)

            tiable_tuplets = abjad.select.exclude(tuplets, [-1])

            for tuplet in tiable_tuplets:
                last_leaf = abjad.select.leaf(tuplet, -1)
                if isinstance(last_leaf, abjad.Rest):
                    pass
                else:
                    next_leaf = abjad.select.with_next_leaf(last_leaf)[-1]
                    if isinstance(next_leaf, abjad.Note):
                        abjad.attach(abjad.Tie(), last_leaf)

        rmakers.extract_trivial(components)

        selections = abjad.mutate.eject_contents(components)

        return selections

    return rhythm


def rhythm_b(index=0, stage=1, grace=False, grace_selector=None):
    def rhythm(durations):
        if stage == 1:
            talea_durations = [26, 6, 3, 2, 15, 12, 6, 4, 4, 18, 8, 1, 6, 17]
            talea_durations = trinton.rotated_sequence(
                talea_durations, index % len(talea_durations)
            )
            talea_denominator = 32

        if stage == 2:
            root_talea_durations = [8, 7, 6, 5, 4, 3, 2]

            partitioned_talea_durations = abjad.sequence.partition_by_counts(
                sequence=root_talea_durations,
                counts=[
                    2,
                    3,
                    2,
                ],
                overhang=True,
            )

            helianthated_durations = baca.sequence.helianthate(
                partitioned_talea_durations, n=-1, m=1
            )
            flattened_talea_durations = abjad.sequence.flatten(helianthated_durations)
            rotated_talea_durations = trinton.rotated_sequence(
                flattened_talea_durations, 6
            )
            talea_durations = trinton.rotated_sequence(
                rotated_talea_durations, index % len(rotated_talea_durations)
            )
            talea_denominator = 8

        if stage == 3:
            talea_durations = [1]
            talea_denominator = 4

        components = rmakers.talea(durations, talea_durations, talea_denominator)
        components = abjad.Container(components)
        rmakers.trivialize(components)
        rmakers.rewrite_rest_filled(components)
        rmakers.rewrite_sustained(components)
        rmakers.extract_trivial(components)
        components = abjad.mutate.eject_contents(components)
        components = rmakers.wrap_in_time_signature_staff(components, durations)
        rmakers.rewrite_meter(components)
        rmakers.unbeam(components)

        if grace is True:
            for leaf in abjad.select.leaves(components):
                abjad.override(leaf).Stem.direction = abjad.DOWN

            if stage == 1:
                before_grace_amounts = [
                    _ for _ in library.logistic_map_sequence(index=index) if _ < 8
                ]

            if stage == 2:
                before_grace_amounts = trinton.rotated_sequence(
                    talea_durations, index % len(talea_durations)
                )

            if stage == 3:
                before_grace_amounts = trinton.rotated_sequence(
                    [2, 3, 4, 5, 6, 7], index % 6
                )

            onbeat_grace_amounts = [
                _ for _ in trinton.rotated_sequence(before_grace_amounts, 1) if _ > 3
            ]
            after_grace_amounts = trinton.rotated_sequence(before_grace_amounts, 2)

            if grace_selector is not None:
                ties = grace_selector(components)
                ties = abjad.select.logical_ties(ties)

            else:
                if stage == 1:
                    ties = [
                        _
                        for _ in abjad.select.logical_ties(components)
                        if abjad.get.duration(_, preprolated=True)
                        > abjad.Duration((3, 16))
                    ]

                else:
                    ties = abjad.select.logical_ties(components)

            name_count = 1

            for (
                tie,
                before_grace_amount,
                onbeat_grace_amount,
                after_grace_amount,
            ) in zip(
                ties,
                itertools.cycle(before_grace_amounts),
                itertools.cycle(onbeat_grace_amounts),
                itertools.cycle(after_grace_amounts),
            ):
                first_leaf = tie[0]
                last_leaf = tie[-1]
                first_leaf_duration = abjad.get.duration(first_leaf)

                notes_list = ["c'16" for _ in range(1, before_grace_amount)]

                notes_string = ""

                for note in notes_list:
                    notes_string = notes_string + note
                    notes_string = notes_string + ""

                before_grace_container = abjad.BeforeGraceContainer(notes_string)

                abjad.attach(before_grace_container, first_leaf)

                onbeat_durations = [
                    abjad.Duration(1, 16) for _ in range(1, onbeat_grace_amount)
                ]
                grace_name = f"graces {name_count}"
                first_leaf_of_tie_duration = abjad.get.duration(first_leaf)
                nested_music = rmakers.note(onbeat_durations)
                nested_music_logical_ties = abjad.select.logical_ties(nested_music)
                leaf_denominator = len(nested_music_logical_ties)
                leaf_duration = first_leaf_of_tie_duration / leaf_denominator
                onbeat_grace_components = abjad.Container(nested_music)
                onbeat_grace_components = abjad.mutate.eject_contents(
                    onbeat_grace_components
                )

                trinton.on_beat_grace_container(
                    contents=onbeat_grace_components,
                    anchor_voice_selection=tie,
                    leaf_duration=leaf_duration,
                    do_not_slur=False,
                    name=grace_name,
                    font_size=-5.5,
                )

                name_count += 1

                notes_list = ["c'16" for _ in range(1, after_grace_amount)]

                notes_string = ""

                for note in notes_list:
                    notes_string = notes_string + note
                    notes_string = notes_string + ""

                after_grace_container = abjad.AfterGraceContainer(notes_string)

                abjad.attach(after_grace_container, last_leaf)

            grace_groups = []

            for leaf in abjad.select.leaves(components):
                before_grace_container = abjad.get.before_grace_container(leaf)
                after_grace_container = abjad.get.after_grace_container(leaf)
                grace_groups.append(before_grace_container)
                grace_groups.append(after_grace_container)

            for group in grace_groups:
                if group is not None:
                    if len(group) == 1:
                        start_slash_literal = abjad.LilyPondLiteral(
                            r"""\once \override Flag.stroke-style = #"grace" """,
                            site="before",
                        )

                    else:
                        abjad.beam(group)
                        abjad.slur(group)

                        start_slash_literal = abjad.LilyPondLiteral(
                            r"\my-hack-slash", site="before"
                        )

                    start_stem_literal = abjad.LilyPondLiteral(
                        r"\stemUp", site="before"
                    )

                    stop_stem_literal = abjad.LilyPondLiteral(
                        r"\stemNeutral", site="after"
                    )

                    abjad.attach(start_slash_literal, group[0])
                    abjad.attach(start_stem_literal, group[0])
                    abjad.attach(stop_stem_literal, group[-1])

            onbeat_graces = []

            for leaf in abjad.select.leaves(components):
                parentage = abjad.get.parentage(leaf).parent
                if isinstance(parentage, abjad.OnBeatGraceContainer):
                    onbeat_graces.append(leaf)

            onbeat_graces = abjad.select.group_by_contiguity(onbeat_graces)

            for container in onbeat_graces:
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\override Beam.beam-thickness = #0.48", site="before"
                    ),
                    container[0],
                )
                abjad.attach(
                    abjad.LilyPondLiteral(r"\revert Beam.thickness", site="after"),
                    container[-1],
                )

                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\override Beam.length-fraction = #1", site="before"
                    ),
                    container[0],
                )
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\revert Beam.length-fraction", site="after"
                    ),
                    container[-1],
                )

        selections = abjad.mutate.eject_contents(components)

        return selections

    return rhythm
