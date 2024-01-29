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


def rhythm_a(index=0, stage=1, hand_swapping=False):
    def rhythm(durations):
        beat_regions = []
        for i, duration in enumerate(durations):
            if i % 2 == 1:
                beat_regions.append(duration)
            else:
                numerator = int(duration.numerator)
                denominator = int(duration.denominator)
                meter = abjad.Meter(duration)

                if numerator % 3 == 0 and numerator != 15:
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

        trinton.respell_tuplets(tuplets)

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

            map_sequence = itertools.cycle(map_sequence)

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
                    trinton.respell_tuplets([tuplet])
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

                for tuplet in abjad.select.tuplets(tuplet_contents):
                    tuplet_leaf_duration = abjad.get.duration(
                        abjad.select.leaves(tuplet), preprolated=True
                    )
                    pitched_tuplet_leaf_duration = abjad.get.duration(
                        abjad.select.leaves(tuplet, pitched=True), preprolated=True
                    )
                    tuplet_multiplied_duration = tuplet.multiplied_duration
                    if tuplet_leaf_duration == pitched_tuplet_leaf_duration:
                        new_leaf = rmakers.note([tuplet_multiplied_duration])
                        container = abjad.Container(new_leaf)
                        new_leaf = abjad.mutate.eject_contents(container)
                        abjad.mutate.replace(tuplet, new_leaf)

            tuplets = abjad.select.tuplets(components)

            for tuplet in tuplets:
                trinton.respell_tuplets([tuplet])
                rmakers.rewrite_rest_filled(tuplet)
                rmakers.rewrite_sustained(tuplet)

            tiable_ties = abjad.select.logical_ties(components, pitched=True)
            tiable_ties = abjad.select.exclude(tiable_ties, [-1])

            for tie in tiable_ties:
                next_leaf = abjad.select.with_next_leaf(tie)[-1]
                if isinstance(next_leaf, abjad.Note):
                    abjad.attach(abjad.Tie(), tie[-1])

        tuplets = abjad.select.tuplets(components)

        for tuplet in tuplets:
            trinton.respell_tuplets([tuplet])
            rmakers.rewrite_rest_filled(tuplet)
            rmakers.rewrite_sustained(tuplet)

            rests = abjad.select.rests(tuplet)
            for rest_group in abjad.select.group_by_contiguity(rests):
                parental_groups = abjad.select.group_by(
                    rest_group, predicate=lambda _: abjad.get.parentage(_).parent
                )
                for parental_group in parental_groups:
                    abjad.mutate.fuse(parental_group)

        if hand_swapping is True:
            p_ties = abjad.select.logical_ties(components, pitched=True)

            for i, tie in enumerate(p_ties):
                if i % 2 == 0:
                    abjad.attach(library.change_to_lh, tie[0])
                else:
                    abjad.attach(library.change_to_rh, tie[0])

            rests = abjad.select.rests(components)

            for rest in rests:
                abjad.attach(library.change_to_rh, rest)

            abjad.attach(library.revert_to_rh, p_ties[-1][-1])

        tuplets = abjad.select.tuplets(components)

        for tuplet in tuplets:
            tuplet_contents = abjad.get.contents(tuplet)[1:]

            if any(isinstance(item, abjad.Tuplet) for item in tuplet_contents):
                pass

            else:
                leaves = abjad.select.leaves(tuplet)
                beam_groups = []
                for leaf in leaves:
                    leaf_duration = leaf.written_duration
                    if leaf_duration < abjad.Duration(1, 4):
                        beam_groups.append(leaf)

                beam_groups = abjad.select.group_by_contiguity(beam_groups)

                for group in beam_groups:
                    # group_pleaves = abjad.select.leaves(group, pitched=True)
                    # if len(group_pleaves) > 1:
                    abjad.beam(group, beam_lone_notes=False)

            # tuplet_parent = abjad.get.parentage(tuplet).parent
            # if isinstance(tuplet_parent, abjad.Tuplet):
            #     rmakers.trivialize(tuplet)

        rmakers.extract_trivial(components)

        selections = abjad.mutate.eject_contents(components)

        return selections

    return rhythm


def rhythm_b(
    index=0,
    stage=1,
    grace=False,
    grace_selector=None,
    before_grace=False,
    after_grace=False,
):
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

            relevant_leaves = []

            measures = abjad.select.partition_by_durations(
                components,
                durations,
                cyclic=False,
                fill=abjad.EXACT,
                in_seconds=False,
                overhang=False,
            )

            for measure in measures:
                exclude_first = abjad.select.exclude(abjad.select.leaves(measure), [0])
                for leaf in exclude_first:
                    relevant_leaves.append(leaf)

            if grace_selector is not None:
                ties = grace_selector(relevant_leaves)
                ties = abjad.select.logical_ties(ties)

            else:
                if stage == 1:
                    ties = [
                        _
                        for _ in abjad.select.logical_ties(relevant_leaves)
                        if abjad.get.duration(_, preprolated=True)
                        > abjad.Duration((3, 16))
                    ]

                else:
                    ties = abjad.select.logical_ties(relevant_leaves)

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

                if before_grace is True:
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

                if after_grace is True:
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


def rhythm_g(index=0, stage=1, hand="rh", voice_number=None):
    def rhythm(durations):
        _counts_dictionary = {
            "voice 1": [],
            "voice 2": [],
            "voice 3": [],
            "voice 4": [],
        }

        for duration in durations:
            thirty_second_multiplier = int(32 / duration.denominator)
            thirty_second_amount = int(duration.numerator * thirty_second_multiplier)

            thirty_seven_count = 37 - thirty_second_amount
            thirty_five_count = 35 - thirty_second_amount
            thirteen_count = 26 - thirty_second_amount

            _counts_dictionary["voice 1"].append(thirty_seven_count)
            _counts_dictionary["voice 2"].append(thirty_five_count)
            _counts_dictionary["voice 3"].append(thirteen_count)
            _counts_dictionary["voice 4"].append(0)

        if stage > 1:
            count_additions = [
                _
                for _ in library.logistic_map_sequence(index=index)
                if _ % 3 != 0 and _ < 8
            ]

            fundamental_counts = []

            for i, count in enumerate(count_additions):
                if i % 2 == 0:
                    count = count * -1
                else:
                    count = count

                fundamental_counts.append(count)

            for counts_list in [
                _counts_dictionary["voice 1"],
                _counts_dictionary["voice 2"],
                _counts_dictionary["voice 3"],
                _counts_dictionary["voice 4"],
            ]:
                for counts_index, counts_addition, original_count in zip(
                    range(0, len(counts_list)), fundamental_counts, counts_list
                ):
                    new_count = original_count + counts_addition
                    counts_list[counts_index] = new_count

        if hand == "rh":
            voice_name = "37 voice"
            extra_counts = _counts_dictionary["voice 1"]

        else:
            voice_name = "13 voice"
            extra_counts = _counts_dictionary["voice 3"]

        components = rmakers.talea(durations, [8], 32, extra_counts=extra_counts)
        components = abjad.Voice(components, name=voice_name)

        if hand == "rh":
            if voice_number is not None:
                voice_name = f"35 voice {voice_number}"
            else:
                voice_name = "35 voice"
            extra_counts = _counts_dictionary["voice 2"]

        if hand == "lh":
            if voice_number is not None:
                voice_name = f"4 voice {voice_number}"
            else:
                voice_name = "4 voice"
            extra_counts = _counts_dictionary["voice 4"]

        literal1 = abjad.LilyPondLiteral(r"\voiceOne")
        literal2 = abjad.LilyPondLiteral(r"\voiceTwo")
        closing_literal = abjad.LilyPondLiteral(r"\oneVoice", site="after")

        duration = [abjad.get.duration(components[:])]
        container = abjad.Container(simultaneous=True)
        if voice_number is not None:
            original_voice = abjad.Voice(name=f"{components.name} temp {voice_number}")
        else:
            original_voice = abjad.Voice(name=f"{components.name} temp")

        intermittent_voice = abjad.Voice(name=voice_name)
        new_components = rmakers.talea(durations, [8], 32, extra_counts=extra_counts)
        intermittent_voice.extend(new_components)

        selections = trinton.get_top_level_components_from_leaves(components)
        abjad.mutate.wrap(selections, original_voice)
        abjad.mutate.wrap(original_voice, container)
        container.append(intermittent_voice)
        abjad.attach(literal1, abjad.select.leaf(original_voice, 0))
        abjad.attach(literal2, abjad.select.leaf(intermittent_voice, 0))
        abjad.attach(closing_literal, container)

        trinton.respell_tuplets(abjad.select.tuplets(components))
        rmakers.rewrite_sustained(components)
        rmakers.rewrite_rest_filled(components)

        rmakers.rewrite_dots(components)
        rmakers.trivialize(components)
        rmakers.extract_trivial(components)

        selections = abjad.mutate.eject_contents(components)

        return selections

    return rhythm


def rhythm_d(stage=1, hand="rh", tuplet_selector=None):
    def rhythm(durations):
        tuplet_ratios = []
        for duration in durations:
            if hand == "rh":
                range_limit = duration.numerator + 1
            else:
                range_limit = duration.numerator

            tuplet_ratio = []

            for _ in range(0, range_limit):
                if hand == "rh":
                    tuplet_ratio.append(3)
                    tuplet_ratio.append(-1)
                else:
                    tuplet_ratio.append(-3)
                    tuplet_ratio.append(1)

            tuplet_ratio = tuple(tuplet_ratio)

            tuplet_ratios.append(tuplet_ratio)

        components = rmakers.tuplet(durations, tuplet_ratios)
        components = abjad.Container(components)

        tuplets = abjad.select.tuplets(components)
        trinton.respell_tuplets(tuplets, rewrite_brackets=True)
        rmakers.rewrite_sustained(components)
        rmakers.rewrite_rest_filled(components)
        rmakers.rewrite_dots(components)
        rmakers.trivialize(components)

        if stage > 1:
            if tuplet_selector is not None:
                ties = tuplet_selector(components)
            else:
                ties = abjad.select.logical_ties(components, pitched=True)

            for tie in ties:
                tie_duration = abjad.get.duration(tie, preprolated=True)

                if hand == "rh":
                    tuplet_ratio = (1, 1, 1, 1, 1)
                else:
                    tuplet_ratio = (1, 1, 1)

                nested_tuplet = rmakers.tuplet([tie_duration], [tuplet_ratio])
                nested_tuplet_duration = abjad.get.duration(nested_tuplet)
                # if nested_tuplet_duration < abjad.Duration(3, 16):
                #     abjad.attach(
                #         abjad.LilyPondLiteral(
                #             r"\once \override TupletBracket.bracket-visibility = ##f",
                #             site="before",
                #         ),
                #         abjad.select.tuplet(nested_tuplet, 0),
                #     )
                # if hand == "rh":
                #     bracket_direction_literal = abjad.LilyPondLiteral(
                #         r"\once \override TupletBracket.direction = #DOWN",
                #         site="before",
                #     )
                #
                # if hand == "lh":
                #     bracket_direction_literal = abjad.LilyPondLiteral(
                #         r"\once \override TupletBracket.direction = #UP",
                #         site="before",
                #     )
                #
                # abjad.attach(
                #     bracket_direction_literal, abjad.select.tuplet(nested_tuplet, 0)
                # )
                rmakers.rewrite_dots(nested_tuplet)
                rmakers.trivialize(nested_tuplet)
                rmakers.rewrite_rest_filled(nested_tuplet)
                rmakers.rewrite_sustained(nested_tuplet)
                abjad.mutate.replace(tie, nested_tuplet)
            else:
                pass

        tuplets = abjad.select.tuplets(components)

        for tuplet in tuplets:
            tuplet_parent = abjad.get.parentage(tuplet).parent
            if isinstance(tuplet_parent, abjad.Tuplet):
                pass
            else:
                leaves = abjad.select.leaves(tuplet)
                beam_groups = []
                for leaf in leaves:
                    leaf_duration = leaf.written_duration
                    if leaf_duration < abjad.Duration((1, 4)):
                        beam_groups.append(leaf)

                beam_groups = abjad.select.group_by_contiguity(beam_groups)

                for group in beam_groups:
                    group_pleaves = abjad.select.leaves(group, pitched=True)
                    if len(group_pleaves) > 1:
                        abjad.beam(group, beam_lone_notes=False)

        rmakers.extract_trivial(components)

        selections = abjad.mutate.eject_contents(components)
        return selections

    return rhythm


def rhythm_e(hand="rh", voice_number=None):
    def rhythm(durations):

        if hand == "rh":
            components = rmakers.incised(
                durations,
                prefix_talea=[-2, 4, -2, 4, -2, 6],
                prefix_counts=[2],
                extra_counts=[0, 1, 0, 2, 0],
                talea_denominator=8,
            )

            components = abjad.Container(components)

        if hand == "lh":
            components = rmakers.note(durations)
            components = abjad.Voice(components, name="epsilon intermittent voice 1")
            components = abjad.mutate.eject_contents(components)
            components = rmakers.wrap_in_time_signature_staff(components, durations)
            rmakers.rewrite_meter(components)
            rmakers.unbeam(components)

        if hand == "lh":
            literal1 = abjad.LilyPondLiteral(r"\voiceOne")
            literal2 = abjad.LilyPondLiteral(r"\voiceTwo")
            closing_literal = abjad.LilyPondLiteral(r"\oneVoice", site="after")

            duration = [abjad.get.duration(components[:])]
            container = abjad.Container(simultaneous=True)
            original_voice = abjad.Voice(name=f"{components.name} temp")

            if voice_number is not None:
                intermittent_voice = abjad.Voice(
                    name=f"epsilon intermittent voice 2 {voice_number}"
                )
            else:
                intermittent_voice = abjad.Voice(name="epsilon intermittent voice 2")
            new_components = abjad.mutate.copy(components)
            intermittent_voice.extend(new_components)

            selections = trinton.get_top_level_components_from_leaves(components)
            abjad.mutate.wrap(selections, original_voice)
            abjad.mutate.wrap(original_voice, container)
            container.append(intermittent_voice)
            abjad.attach(literal1, abjad.select.leaf(original_voice, 0))
            abjad.attach(literal2, abjad.select.leaf(intermittent_voice, 0))
            abjad.attach(closing_literal, container)

        tuplets = abjad.select.tuplets(components)
        trinton.respell_tuplets(tuplets)
        rmakers.rewrite_sustained(components)
        rmakers.rewrite_rest_filled(components)
        rmakers.rewrite_dots(components)
        rmakers.trivialize(components)

        rmakers.extract_trivial(components)

        selections = abjad.mutate.eject_contents(components)
        return selections

    return rhythm
