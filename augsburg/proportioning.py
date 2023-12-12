import abjad
import baca
import evans
import trinton
import fractions
import itertools
import random
from augsburg import library
from itertools import cycle


def determine_section_clock_times(
    piece_duration_in_seconds,
    section_proportional_factors,
    tempo_modulations=None,
):
    section_number = 1
    for factor in section_proportional_factors:
        numerator = factor * piece_duration_in_seconds
        denominator = sum(section_proportional_factors)

        seconds_length = numerator / denominator
        print("")
        print(f"Section {section_number} is {seconds_length} seconds long.")
        print(f"In 60 BPM, section {section_number} lasts {seconds_length} beat(s).")

        if tempo_modulations is not None:
            relevant_modulation = tempo_modulations[section_number - 1]

            numerator = relevant_modulation[-1]
            denominator = relevant_modulation[0]

            beat_count = seconds_length * numerator
            beat_count = beat_count / denominator

            new_tempo = 60 * numerator
            new_tempo = new_tempo / denominator

            print(
                f"You would like to modulate this tempo by {denominator}:{numerator}."
            )
            print(f"In this prolation, the new tempo is {new_tempo} BPM.")
            print(
                f"At this tempo, section {section_number} lasts {beat_count} beat(s)."
            )

        print("")

        section_number += 1


determine_section_clock_times(
    piece_duration_in_seconds=900,
    section_proportional_factors=[3, 5, 8, 1, 2],
    tempo_modulations=[],
)
