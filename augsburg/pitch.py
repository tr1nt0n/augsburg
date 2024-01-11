import abjad
import baca
import evans
import trinton
import fractions
import itertools
import math
import random
import quicktions
from itertools import cycle
from augsburg import library


# nonochord

nonochord = [0, 1, 3, 4, 6, 7, 8, 9, 11]

partitioned_nonochord = abjad.sequence.partition_by_counts(
    sequence=nonochord,
    counts=[3, 4, 2],
    overhang=True,
)

helianthated_nonochord = baca.sequence.helianthate(partitioned_nonochord, n=1, m=1)

nonochord_sequence = abjad.sequence.flatten(helianthated_nonochord)

seed_sequence = trinton.remove_adjacent(nonochord_sequence)


def return_seed_pitch_sequence(index=0):
    return trinton.rotated_sequence(seed_sequence, index % len(seed_sequence))


# pentachords

raw_e_pentachords = abjad.sequence.partition_by_counts(
    sequence=seed_sequence,
    counts=[5 for _ in range(int(len(seed_sequence) / 5))],
    overhang=True,
)

e_pentachords = []

for pentachord in raw_e_pentachords:
    new_pentachord = []
    pentachord = sorted(pentachord)
    pentachord = trinton.remove_adjacent(pentachord)
    new_pentachord.append(pentachord[-1] - 12)
    for pitch_class in pentachord[:-2]:
        new_pentachord.append(pitch_class)

    e_pentachords.append(new_pentachord)


def return_e_pentachords(index=0):
    return trinton.rotated_sequence(e_pentachords, index % len(e_pentachords))


# epsilon chords

epsilon_chord_pairs = [
    (["c'", "ds'", "gs'", "b'"], "f,,"),  # rh mf lh fff
    (["ds", "a", "bf"], "b,,,"),  # rh p lh fff
    (["b", "c'", "f'", "bf'"], "df,,"),  # rh p lh fff
    (["gs''", "c'''", "f'''", "a'''"], "e,"),  # rh p lh ff
    (["g", "c'", "df'"], "ef,,"),  # rh f lh fff
]

epsilon_chord_sequence = trinton.random_walk(chord=epsilon_chord_pairs, seed=1)


def return_epsilon_chords(index, hand):
    chord_sequence = trinton.rotated_sequence(
        epsilon_chord_sequence, index % len(epsilon_chord_sequence)
    )
    chord_sequence = trinton.remove_adjacent(chord_sequence)

    out = []

    for pair in chord_sequence:
        if hand == "rh":
            out.append(pair[0])
        if hand == "lh":
            out.append(pair[-1])

    return out
