    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.BarLine.transparent = ##f
            \pageBreak
            \tweak text "×3" \startMeasureSpanner
            \bar ".|:"
            \time 9/8
            s1 * 9/8
            - \tweak padding #8
            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #3 { \center-column { \line { Adumbrationsstück: } \line { a way to draw water }  } }
            ^ \markup {
              \raise #21 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-mixed-number-markup #3 #0 #2 #"75" #"3" #"5"  
              }
            }
            \noBreak
            \set Score.repeatCommands = #'((volta "1 - 3"))
            \time 5/4
            s1 * 5/4
            \bar ":|.|:"
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \set Score.repeatCommands = #'((volta "4"))
            \time 7/8
            s1 * 7/8
            \set Score.repeatCommands = #'((volta #f))
            \noBreak
            \time 3/4
            s1 * 3/4
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((Y-offset . 130))
            \stopMeasureSpanner
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        <<
                            \context Voice = "piano 1 voice temp"
                            {
                                <<
                                    \context Voice = "piano 1 voice temp temp"
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                        \times 6/5
                                        {
                                            \staff-line-count 5
                                            \tweak text "×4" \startMeasureSpanner
                                            \once \override Rest.staff-position = #12
                                            \override NoteHead.details.interrupt-color = \一
                                            \override NoteHead.details.switch-color = \一
                                            \override NoteHead.details.folow-color = \一
                                            \override NoteHead.details.hocket-color = \一
                                            \override Accidental.color = \一
                                            \override Beam.color = \一
                                            \override Dots.color = \一
                                            \override Flag.color = \一
                                            \override Glissando.color = \一
                                            \override MultiMeasureRest.color = \一
                                            \override NoteHead.color = \一
                                            \override RepeatTie.color = \一
                                            \override Rest.color = \一
                                            \override Slur.color = \一
                                            \override Stem.color = \一
                                            \override StemTremolo.color = \一
                                            \override Tie.color = \一
                                            \override TupletBracket.color = \一
                                            \override TupletNumber.color = \一
                                            \override Dots.staff-position = #2
                                            \override DynamicText.color = \一
                                            \voiceOne
                                            \clef "treble"
                                            \voiceOne
                                            r16
                                            [
                                            \once \override Staff.Accidental.stencil = ##f
                                            g'16
                                            - \tweak color \一
                                            - \natural-articulation
                                            ^ \ff
                                            - \tweak stencil #constante-hairpin
                                            ^ \<
                                            \once \override Staff.Accidental.stencil = ##f
                                            e''16
                                            - \tweak color \一
                                            - \natural-articulation
                                            (
                                            \once \override Staff.Accidental.stencil = ##f
                                            a'''16
                                            - \tweak color \一
                                            - \natural-articulation
                                            - \tweak color \一
                                            - \staccato
                                            )
                                            \once \override Staff.Accidental.stencil = ##f
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            g''16
                                            - \tweak color \一
                                            - \natural-articulation
                                        }
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                        \times 6/7
                                        {
                                            \once \override Rest.staff-position = #12
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            r16
                                            \once \override Staff.Accidental.stencil = ##f
                                            f'16
                                            - \tweak color \一
                                            - \natural-articulation
                                            (
                                            \once \override Staff.Accidental.stencil = ##f
                                            af'16
                                            - \tweak color \一
                                            - \flat-articulation
                                            - \tweak color \一
                                            - \staccato
                                            )
                                            \once \override Staff.Accidental.stencil = ##f
                                            g'16
                                            - \tweak color \一
                                            - \natural-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            b'16
                                            - \tweak color \一
                                            - \natural-articulation
                                            (
                                            \once \override Staff.Accidental.stencil = ##f
                                            d''16
                                            - \tweak color \一
                                            - \natural-articulation
                                            - \tweak color \一
                                            - \staccato
                                            )
                                            \once \override Staff.Accidental.stencil = ##f
                                            g''16
                                            - \tweak color \一
                                            - \natural-articulation
                                        }
                                        \once \override Rest.staff-position = #12
                                        r8
                                        \once \override Staff.Accidental.stencil = ##f
                                        fs''8
                                        - \tweak color \一
                                        - \sharp-articulation
                                        (
                                        ^ \>
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs''8
                                        - \tweak color \一
                                        - \sharp-articulation
                                        - \tweak color \一
                                        - \staccato
                                        )
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                        \times 8/7
                                        {
                                            r8
                                            fs'16
                                            _ (
                                            cs''16
                                            - \tweak color \一
                                            - \staccato
                                            ^ \p
                                            )
                                            r16
                                            d'16
                                            - \tweak color \一
                                            - \staccato
                                            ^ \pp
                                            r16
                                        }
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 6) (ly:make-duration 3 0))
                                        \times 6/9
                                        {
                                            r8
                                            g'8
                                            ^ \ff
                                            r8
                                            e'8
                                            - \tweak color \一
                                            - \tenuto
                                            ^ \mp
                                            r8
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 1
                                            a''8
                                            - \tweak color \一
                                            - \staccato
                                            ]
                                            r4
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 1
                                            c'8
                                            ^ \ppp
                                            [
                                            ^ \<
                                            _ (
                                            \stopMeasureSpanner
                                        }
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 7) (ly:make-duration 3 0))
                                        \times 7/10
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                            \times 6/7
                                            {
                                                \tweak text "×3" \startMeasureSpanner
                                                r8
                                                g'8
                                                b'8
                                                r8
                                                bf'8
                                                r8
                                                f''8
                                            }
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 4 0))
                                            \times 8/9
                                            {
                                                g''16
                                                ^ \ff
                                                )
                                                r16
                                                \once \override Staff.Accidental.stencil = ##f
                                                f'16
                                                - \tweak color \一
                                                - \natural-articulation
                                                - \tweak color \一
                                                - \staccato
                                                ^ \f
                                                r16
                                                \once \override Staff.Accidental.stencil = ##f
                                                af'16
                                                - \tweak color \一
                                                - \flat-articulation
                                                - \tweak color \一
                                                - \staccato
                                                r16
                                                \once \override Staff.Accidental.stencil = ##f
                                                g'16
                                                - \tweak color \一
                                                - \natural-articulation
                                                - \tweak color \一
                                                - \staccato
                                                r16
                                                \once \override Staff.Accidental.stencil = ##f
                                                b''16
                                                - \tweak color \一
                                                - \natural-articulation
                                                - \tweak color \一
                                                - \staccato
                                                ]
                                                \revert Accidental.color
                                                \revert Beam.color
                                                \revert Dots.color
                                                \revert Flag.color
                                                \revert Glissando.color
                                                \revert MultiMeasureRest.color
                                                \revert NoteHead.color
                                                \revert RepeatTie.color
                                                \revert Rest.color
                                                \revert Slur.color
                                                \revert Stem.color
                                                \revert StemTremolo.color
                                                \revert Tie.color
                                                \revert TupletBracket.color
                                                \revert TupletNumber.color
                                                \revert DynamicText.color
                                                \revert Dots.staff-position
                                            }
                                        }
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        f'16
                                        - \natural-articulation
                                        _ \fp
                                        _ [
                                        - \tweak stencil #abjad-flared-hairpin
                                        _ \<
                                        _ (
                                        \startTrillSpan gf'
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        ef'16
                                        - \flat-articulation
                                        \startTrillSpan f'
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        f'16
                                        - \natural-articulation
                                        \startTrillSpan gf'
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        ef'16
                                        - \flat-articulation
                                        \startTrillSpan gf'
                                        \once \override Staff.Accidental.stencil = ##f
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        f'16
                                        - \natural-articulation
                                        \startTrillSpan gf'
                                        s1 * 0
                                        _ \mp
                                        \stopTrillSpan
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! trinton.on_beat_grace_container(1)
                                                \set fontSize = #-5.5
                                                \my-hack-slash
                                                \override Beam.beam-thickness = #0.48
                                                \override Beam.length-fraction = #1
                                                \voiceOne
                                                ef'16 * 1/3
                                                [
                                                (
                                                \once \override Staff.Accidental.stencil = ##f
                                                e'16 * 1/3
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                a'16 * 1/3
                                                - \natural-articulation
                                                )
                                                ]
                                                \revert Beam.length-fraction
                                                \revert Beam.thickness
                                            }
                                            \context Voice = "RhythmMaker.Music Anchor"
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Stem.direction = #down
                                                \voiceTwo
                                                ef'16
                                                - \accent
                                                - \flat-articulation
                                            }
                                        >>
                                        \once \override Staff.Accidental.stencil = ##f
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        f'16
                                        - \natural-articulation
                                        _ \fp
                                        _ \<
                                        \startTrillSpan g'
                                        \once \override Staff.Accidental.stencil = ##f
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        ef'16
                                        - \flat-articulation
                                        \startTrillSpan ff'
                                        s1 * 0
                                        _ \mf
                                        \stopTrillSpan
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! trinton.on_beat_grace_container(1)
                                                \set fontSize = #-5.5
                                                \my-hack-slash
                                                \override Beam.beam-thickness = #0.48
                                                \override Beam.length-fraction = #1
                                                \voiceOne
                                                f'16 * 1/4
                                                [
                                                (
                                                \once \override Staff.Accidental.stencil = ##f
                                                f''16 * 1/4
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                af'16 * 1/4
                                                - \flat-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                g''16 * 1/4
                                                - \natural-articulation
                                                )
                                                ]
                                                \revert Beam.length-fraction
                                                \revert Beam.thickness
                                            }
                                            \context Voice = "RhythmMaker.Music Anchor"
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Stem.direction = #down
                                                \voiceTwo
                                                f'16
                                                - \accent
                                                - \natural-articulation
                                            }
                                        >>
                                        \once \override Staff.Accidental.stencil = ##f
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        ef'16
                                        - \flat-articulation
                                        \startTrillSpan gf'
                                        s1 * 0
                                        \stopTrillSpan
                                        <<
                                            \context Voice = "On_Beat_Grace_Container"
                                            {
                                                  %! trinton.on_beat_grace_container(1)
                                                \set fontSize = #-5.5
                                                \my-hack-slash
                                                \override Beam.beam-thickness = #0.48
                                                \override Beam.length-fraction = #1
                                                \voiceOne
                                                f'16 * 1/5
                                                [
                                                (
                                                \once \override Staff.Accidental.stencil = ##f
                                                d''16 * 1/5
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                ef''16 * 1/5
                                                - \flat-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                fs''16 * 1/5
                                                - \sharp-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'''16 * 1/5
                                                - \sharp-articulation
                                                )
                                                ]
                                                \revert Beam.length-fraction
                                                \revert Beam.thickness
                                            }
                                            \context Voice = "RhythmMaker.Music Anchor"
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Stem.direction = #down
                                                \voiceTwo
                                                f'16
                                                - \accent
                                                - \natural-articulation
                                            }
                                        >>
                                        \once \override Staff.Accidental.stencil = ##f
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 0
                                        \once \override Stem.direction = #down
                                        \pitchedTrill
                                        ef'16
                                        - \flat-articulation
                                        )
                                        ]
                                        \startTrillSpan ff'
                                        \stopMeasureSpanner
                                        s1 * 0
                                        \stopTrillSpan
                                    }
                                    \context Voice = "alpha imbrication"
                                    \with
                                    {
                                        \override TupletBracket.stencil = ##f
                                        \override TupletNumber.stencil = ##f
                                    }
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                        \times 6/5
                                        {
                                            \override NoteHead.details.interrupt-color = \一
                                            \override NoteHead.details.switch-color = \一
                                            \override NoteHead.details.folow-color = \一
                                            \override NoteHead.details.hocket-color = \一
                                            \override Accidental.color = \一
                                            \override Beam.color = \一
                                            \override Dots.color = \一
                                            \override Flag.color = \一
                                            \override Glissando.color = \一
                                            \override MultiMeasureRest.color = \一
                                            \override NoteHead.color = \一
                                            \override RepeatTie.color = \一
                                            \override Rest.color = \一
                                            \override Slur.color = \一
                                            \override Stem.color = \一
                                            \override StemTremolo.color = \一
                                            \override Tie.color = \一
                                            \override TupletBracket.color = \一
                                            \override TupletNumber.color = \一
                                            \override Dots.staff-position = #2
                                            \override DynamicText.color = \一
                                            \voiceTwo
                                            s16
                                            - \tweak Beam.positions #'(-24 . -24)
                                            [
                                              %! rmakers.beam_groups()
                                            \set stemLeftBeamCount = 2
                                              %! rmakers.beam_groups()
                                            \set stemRightBeamCount = 2
                                            g'16
                                            - \tweak color \一
                                            - \marcato
                                            s16
                                            s16
                                              %! rmakers.beam_groups()
                                            \set stemLeftBeamCount = 2
                                              %! rmakers.beam_groups()
                                            \set stemRightBeamCount = 1
                                            g''16
                                            - \tweak color \一
                                            - \marcato
                                        }
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                        \times 6/7
                                        {
                                            s16
                                            s16
                                            s16
                                              %! rmakers.beam_groups()
                                            \set stemLeftBeamCount = 2
                                              %! rmakers.beam_groups()
                                            \set stemRightBeamCount = 2
                                            g'16
                                            - \tweak color \一
                                            - \marcato
                                            s16
                                            s16
                                              %! rmakers.beam_groups()
                                            \set stemLeftBeamCount = 2
                                              %! rmakers.beam_groups()
                                            \set stemRightBeamCount = 1
                                            g''16
                                            - \tweak color \一
                                            - \marcato
                                        }
                                        s8
                                        s8
                                        s8
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                        \times 8/7
                                        {
                                            s8
                                            s16
                                            s16
                                            s16
                                            s16
                                            s16
                                        }
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 6) (ly:make-duration 3 0))
                                        \times 6/9
                                        {
                                            s8
                                              %! rmakers.beam_groups()
                                            \set stemLeftBeamCount = 1
                                              %! rmakers.beam_groups()
                                            \set stemRightBeamCount = 1
                                            g'8
                                            - \tweak color \一
                                            - \marcato
                                            s8
                                            s8
                                            s8
                                            s8
                                            s4
                                            s8
                                        }
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 7) (ly:make-duration 3 0))
                                        \times 7/10
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                            \times 6/7
                                            {
                                                s8
                                                s8
                                                s8
                                                s8
                                                s8
                                                s8
                                                s8
                                            }
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 4 0))
                                            \times 8/9
                                            {
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 2
                                                g''16
                                                - \tweak color \一
                                                - \marcato
                                                s16
                                                s16
                                                s16
                                                s16
                                                s16
                                                s16
                                                s16
                                                s16
                                                  %! rmakers.beam_groups()
                                                ]
                                                \revert Accidental.color
                                                \revert Beam.color
                                                \revert Dots.color
                                                \revert Flag.color
                                                \revert Glissando.color
                                                \revert MultiMeasureRest.color
                                                \revert NoteHead.color
                                                \revert RepeatTie.color
                                                \revert Rest.color
                                                \revert Slur.color
                                                \revert Stem.color
                                                \revert StemTremolo.color
                                                \revert Tie.color
                                                \revert TupletBracket.color
                                                \revert TupletNumber.color
                                                \revert DynamicText.color
                                                \revert Dots.staff-position
                                            }
                                        }
                                        s1 * 3/4
                                    }
                                >>
                                \oneVoice
                            }
                            \context Voice = "delta voice"
                            {
                                <<
                                    \context Voice = "delta voice temp"
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 3 0))
                                        \times 9/10
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                \override NoteHead.details.interrupt-color = \三
                                                \override NoteHead.details.switch-color = \三
                                                \override NoteHead.details.folow-color = \三
                                                \override NoteHead.details.hocket-color = \三
                                                \override Accidental.color = \三
                                                \override Beam.color = \三
                                                \override Dots.color = \三
                                                \override Flag.color = \三
                                                \override Glissando.color = \三
                                                \override MultiMeasureRest.color = \三
                                                \override NoteHead.color = \三
                                                \override RepeatTie.color = \三
                                                \override Rest.color = \三
                                                \override Slur.color = \三
                                                \override Stem.color = \三
                                                \override StemTremolo.color = \三
                                                \override Tie.color = \三
                                                \override TupletBracket.color = \三
                                                \override TupletNumber.color = \三
                                                \override Dots.staff-position = #2
                                                \override DynamicText.color = \三
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 0
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                \voiceTwo
                                                \voiceTwo
                                                a''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \fp
                                                _ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                                                - \tweak Beam.positions #'(-9 . -9)
                                                [
                                                _ \<
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                d'''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                (
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                ef'''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                _ \mf
                                                )
                                                - \tweak circled-tip ##t
                                                _ \>
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                af''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                cs'''64
                                                - \tweak color \三
                                                - \sharp-articulation
                                                \!
                                                (
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                a''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \fp
                                                )
                                                _ \<
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                a''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                e'''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \f
                                                (
                                                - \tweak circled-tip ##t
                                                _ \>
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                c'''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                )
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                af''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                \!
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                a''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                (
                                                _ \<
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                b'''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                )
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                a''64
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "s. f"))
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \<
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                f'''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                (
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                af'''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                \!
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \once \override Staff.Accidental.stencil = ##f
                                            g''16.
                                            - \tweak color \三
                                            - \natural-articulation
                                            _ \mp
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                fs''64
                                                - \tweak color \三
                                                - \sharp-articulation
                                                )
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                af''64
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "s. f"))
                                                - \tweak color \三
                                                - \flat-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                d''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \mp
                                                (
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                ef''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                )
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                a''64
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "s. f"))
                                                - \tweak color \三
                                                - \natural-articulation
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \once \override Staff.Accidental.stencil = ##f
                                            ef''16.
                                            - \tweak color \三
                                            - \flat-articulation
                                            - \tweak color \三
                                            - \tenuto
                                            _ \mp
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                af''64
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "s. f"))
                                                - \tweak color \三
                                                - \flat-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                cs''64
                                                - \tweak color \三
                                                - \sharp-articulation
                                                _ \p
                                                (
                                                _ \<
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                e''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                )
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                a''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \ff
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                c''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \f
                                                (
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \once \override Staff.Accidental.stencil = ##f
                                            af''16.
                                            - \tweak color \三
                                            - \flat-articulation
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \once \override Staff.Accidental.stencil = ##f
                                            g''16.
                                            - \tweak color \三
                                            - \natural-articulation
                                            )
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                af''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                _ \fp
                                                _ \<
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                bf''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                (
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                f''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \f
                                                - \tweak circled-tip ##t
                                                _ \>
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                bf''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                )
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 0
                                                a''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                _ \f
                                                  %! rmakers.beam_groups()
                                                ]
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \revert Accidental.color
                                            \revert Beam.color
                                            \revert Dots.color
                                            \revert Flag.color
                                            \revert Glissando.color
                                            \revert MultiMeasureRest.color
                                            \revert NoteHead.color
                                            \revert RepeatTie.color
                                            \revert Rest.color
                                            \revert Slur.color
                                            \revert Stem.color
                                            \revert StemTremolo.color
                                            \revert Tie.color
                                            \revert TupletBracket.color
                                            \revert TupletNumber.color
                                            \revert DynamicText.color
                                            \revert Dots.staff-position
                                        }
                                        \once \override Voice.Rest.transparent = ##t
                                        \once \override Voice.Dots.transparent = ##t
                                        r1
                                        \once \override Voice.Rest.transparent = ##t
                                        \once \override Voice.Dots.transparent = ##t
                                        r4
                                        \once \override Voice.Rest.transparent = ##t
                                        \once \override Voice.Dots.transparent = ##t
                                        r2..
                                        \once \override Voice.Rest.transparent = ##t
                                        \once \override Voice.Dots.transparent = ##t
                                        r2.
                                    }
                                    \context Voice = "delta imbrication"
                                    \with
                                    {
                                        \override TupletBracket.stencil = ##f
                                        \override TupletNumber.stencil = ##f
                                    }
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 3 0))
                                        \times 9/10
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                \override NoteHead.details.interrupt-color = \三
                                                \override NoteHead.details.switch-color = \三
                                                \override NoteHead.details.folow-color = \三
                                                \override NoteHead.details.hocket-color = \三
                                                \override Accidental.color = \三
                                                \override Beam.color = \三
                                                \override Dots.color = \三
                                                \override Flag.color = \三
                                                \override Glissando.color = \三
                                                \override MultiMeasureRest.color = \三
                                                \override NoteHead.color = \三
                                                \override RepeatTie.color = \三
                                                \override Rest.color = \三
                                                \override Slur.color = \三
                                                \override Stem.color = \三
                                                \override StemTremolo.color = \三
                                                \override Tie.color = \三
                                                \override TupletBracket.color = \三
                                                \override TupletNumber.color = \三
                                                \override Dots.staff-position = #2
                                                \override DynamicText.color = \三
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 0
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                \voiceOne
                                                a''64
                                                - \tweak color \三
                                                - \marcato
                                                - \tweak Beam.positions #'(26 . 26)
                                                [
                                                s64
                                                s64
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                af''64
                                                - \tweak color \三
                                                - \marcato
                                                s64
                                            }
                                            s32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                s64
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                a''64
                                                - \tweak color \三
                                                - \marcato
                                                s64
                                                s64
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                af''64
                                                - \tweak color \三
                                                - \marcato
                                            }
                                            s32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                s64
                                                s64
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                a''64
                                                - \tweak color \三
                                                - \marcato
                                                s64
                                                s64
                                            }
                                            s32
                                            s16.
                                            s32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                s64
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                af''64
                                                - \tweak color \三
                                                - \marcato
                                                s64
                                                s64
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                a''64
                                                - \tweak color \三
                                                - \marcato
                                            }
                                            s32
                                            s16.
                                            s32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                af''64
                                                - \tweak color \三
                                                - \marcato
                                                s64
                                                s64
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                a''64
                                                - \tweak color \三
                                                - \marcato
                                                s64
                                            }
                                            s32
                                            s16.
                                            s32
                                            s16.
                                            s32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                                            \times 6/5
                                            {
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                af''64
                                                - \tweak color \三
                                                - \marcato
                                                s64
                                                s64
                                                s64
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 0
                                                a''64
                                                - \tweak color \三
                                                - \marcato
                                                  %! rmakers.beam_groups()
                                                ]
                                            }
                                            s32
                                        }
                                        s1
                                        s4
                                        s2..
                                        s2.
                                        \revert Accidental.color
                                        \revert Beam.color
                                        \revert Dots.color
                                        \revert Flag.color
                                        \revert Glissando.color
                                        \revert MultiMeasureRest.color
                                        \revert NoteHead.color
                                        \revert RepeatTie.color
                                        \revert Rest.color
                                        \revert Slur.color
                                        \revert Stem.color
                                        \revert StemTremolo.color
                                        \revert Tie.color
                                        \revert TupletBracket.color
                                        \revert TupletNumber.color
                                        \revert DynamicText.color
                                        \revert Dots.staff-position
                                    }
                                >>
                                \oneVoice
                            }
                        >>
                        \oneVoice
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 9/8
                        s1 * 5/4
                        s1 * 7/8
                        s1 * 3/4
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                <<
                                    \context Voice = "piano 3 voice temp temp"
                                    {
                                        \staff-line-count 5
                                        \clef "bass"
                                        \voiceOne
                                        \voiceTwo
                                        <d,, d,>2.
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                        - \accent
                                        ~
                                        <d,, d,>4.
                                        \laissezVibrer
                                    }
                                    \context Voice = "bottom voice"
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                                        \times 5/6
                                        {
                                            \once \override NoteHead.duration-log = 1
                                            \override NoteHead.details.interrupt-color = \四
                                            \override NoteHead.details.switch-color = \四
                                            \override NoteHead.details.folow-color = \四
                                            \override NoteHead.details.hocket-color = \四
                                            \override Accidental.color = \四
                                            \override Beam.color = \四
                                            \override Dots.color = \四
                                            \override Flag.color = \四
                                            \override Glissando.color = \四
                                            \override MultiMeasureRest.color = \四
                                            \override NoteHead.color = \四
                                            \override RepeatTie.color = \四
                                            \override Rest.color = \四
                                            \override Slur.color = \四
                                            \override Stem.color = \四
                                            \override StemTremolo.color = \四
                                            \override Tie.color = \四
                                            \override TupletBracket.color = \四
                                            \override TupletNumber.color = \四
                                            \override Dots.staff-position = #2
                                            \override DynamicText.color = \四
                                            \voiceTwo
                                            <d,, d,>16.
                                            [
                                            r32
                                            e,16.
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                                            - \tweak color \四
                                            - \accent
                                            _ \<
                                            r32
                                            a,16.
                                            r32
                                            b,16.
                                            - \tweak color \四
                                            - \accent
                                            r32
                                            \once \override Staff.Accidental.stencil = ##f
                                            bf,16.
                                            - \tweak color \四
                                            - \flat-articulation
                                            r32
                                            f16.
                                            - \tweak color \四
                                            - \accent
                                            r32
                                        }
                                        \once \override Staff.Accidental.stencil = ##f
                                        af8.
                                        - \tweak color \四
                                        - \flat-articulation
                                        r16
                                        g8.
                                        - \tweak color \四
                                        - \accent
                                        _ \f
                                        r16
                                        ]
                                        \revert Accidental.color
                                        \revert Beam.color
                                        \revert Dots.color
                                        \revert Flag.color
                                        \revert Glissando.color
                                        \revert MultiMeasureRest.color
                                        \revert NoteHead.color
                                        \revert RepeatTie.color
                                        \revert Rest.color
                                        \revert Slur.color
                                        \revert Stem.color
                                        \revert StemTremolo.color
                                        \revert Tie.color
                                        \revert TupletBracket.color
                                        \revert TupletNumber.color
                                        \revert DynamicText.color
                                        \revert Dots.staff-position
                                    }
                                >>
                                \oneVoice
                            }
                            \context Voice = "top voice"
                            {
                                \override NoteHead.details.interrupt-color = \二
                                \override NoteHead.details.switch-color = \二
                                \override NoteHead.details.folow-color = \二
                                \override NoteHead.details.hocket-color = \二
                                \override Accidental.color = \二
                                \override Beam.color = \二
                                \override Dots.color = \二
                                \override Flag.color = \二
                                \override Glissando.color = \二
                                \override MultiMeasureRest.color = \二
                                \override NoteHead.color = \二
                                \override RepeatTie.color = \二
                                \override Rest.color = \二
                                \override Slur.color = \二
                                \override Stem.color = \二
                                \override StemTremolo.color = \二
                                \override Tie.color = \二
                                \override TupletBracket.color = \二
                                \override TupletNumber.color = \二
                                \override Dots.staff-position = #2
                                \override DynamicText.color = \二
                                \voiceOne
                                r16.
                                [
                                \once \override Accidental.stencil = ##f
                                <
                                    \tweak style #'la
                                    f,
                                    \tweak style #'la
                                    a,
                                    \tweak style #'la
                                    c
                                >32
                                - \tweak color \二
                                - \marcato
                                ^ \ff
                                - \tweak stencil #constante-hairpin
                                ^ \<
                                r16.
                                \once \override Accidental.stencil = ##f
                                <
                                    \tweak style #'la
                                    c
                                    \tweak style #'la
                                    e
                                    \tweak style #'la
                                    g
                                >32
                                - \tweak color \二
                                - \marcato
                                r16.
                                \once \override Accidental.stencil = ##f
                                <
                                    \tweak style #'la
                                    a,
                                    \tweak style #'la
                                    c
                                    \tweak style #'la
                                    e
                                >32
                                - \tweak color \二
                                - \marcato
                                ^ \>
                                r16.
                                \once \override Accidental.stencil = ##f
                                <
                                    \tweak style #'la
                                    c
                                    \tweak style #'la
                                    e
                                    \tweak style #'la
                                    g
                                >32
                                - \tweak color \二
                                - \marcato
                                r16.
                                \once \override Accidental.stencil = ##f
                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 1
                                <
                                    \tweak style #'la
                                    g
                                    \tweak style #'la
                                    b
                                    \tweak style #'la
                                    d'
                                >32
                                - \tweak color \二
                                - \marcato
                                ]
                                r4.
                                \once \override Accidental.stencil = ##f
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 0
                                <
                                    \tweak style #'la
                                    d'
                                    \tweak style #'la
                                    f'
                                    \tweak style #'la
                                    a'
                                >8
                                - \tweak color \二
                                - \marcato
                                ^ \mp
                                [
                                ]
                                \revert Accidental.color
                                \revert Beam.color
                                \revert Dots.color
                                \revert Flag.color
                                \revert Glissando.color
                                \revert MultiMeasureRest.color
                                \revert NoteHead.color
                                \revert RepeatTie.color
                                \revert Rest.color
                                \revert Slur.color
                                \revert Stem.color
                                \revert StemTremolo.color
                                \revert Tie.color
                                \revert TupletBracket.color
                                \revert TupletNumber.color
                                \revert DynamicText.color
                                \revert Dots.staff-position
                            }
                        >>
                        \oneVoice
                        <c,, c,>2.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                        - \accent
                        ~
                        <c,, c,>2
                        \laissezVibrer
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                \voiceTwo
                                <c,, c,>2..
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                - \accent
                                \laissezVibrer
                                <d,, d,>2.
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                - \accent
                                \laissezVibrer
                            }
                            \context Voice = "beta voice"
                            {
                                \voiceOne
                                \override Voice.DynamicLineSpanner.padding = 14
                                r16
                                \once \override Staff.Accidental.stencil = ##f
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                ef'16
                                - \flat-articulation
                                - \tweak Beam.positions #'(11 . 11)
                                [
                                - \tweak circled-tip ##t
                                ^ \<
                                _ (
                                \startTrillSpan ff'
                                \once \override Staff.Accidental.stencil = ##f
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                df'16
                                - \flat-articulation
                                \startTrillSpan ef'
                                \once \override Staff.Accidental.stencil = ##f
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                ef'16
                                - \flat-articulation
                                \startTrillSpan ff'
                                \once \override Staff.Accidental.stencil = ##f
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                df'16
                                - \flat-articulation
                                \startTrillSpan ff'
                                s1 * 0
                                \stopTrillSpan
                                <<
                                    \context Voice = "On_Beat_Grace_Container"
                                    {
                                          %! trinton.on_beat_grace_container(1)
                                        \set fontSize = #-5.5
                                        \my-hack-slash
                                        \override Beam.beam-thickness = #0.48
                                        \override Beam.length-fraction = #1
                                        \voiceOne
                                        ef'16 * 1/3
                                        - \tweak Beam.positions #'(16 . 16)
                                        [
                                        (
                                        \once \override Staff.Accidental.stencil = ##f
                                        g16 * 1/3
                                        - \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        b16 * 1/3
                                        - \natural-articulation
                                        )
                                        ]
                                        \revert Beam.length-fraction
                                        \revert Beam.thickness
                                    }
                                    \context Voice = "RhythmMaker.Music Anchor"
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Stem.direction = #up
                                        \voiceTwo
                                        ef'16
                                        - \accent
                                        - \flat-articulation
                                    }
                                >>
                                \once \override Staff.Accidental.stencil = ##f
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                df'16
                                - \flat-articulation
                                \startTrillSpan eff'
                                \once \override Staff.Accidental.stencil = ##f
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                ef'16
                                - \flat-articulation
                                \startTrillSpan f'
                                \once \override Staff.Accidental.stencil = ##f
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                df'16
                                - \flat-articulation
                                \startTrillSpan eff'
                                s1 * 0
                                \stopTrillSpan
                                <<
                                    \context Voice = "On_Beat_Grace_Container"
                                    {
                                          %! trinton.on_beat_grace_container(1)
                                        \set fontSize = #-5.5
                                        \my-hack-slash
                                        \override Beam.beam-thickness = #0.48
                                        \override Beam.length-fraction = #1
                                        \voiceOne
                                        ef'16 * 1/4
                                        - \tweak Beam.positions #'(16 . 16)
                                        [
                                        (
                                        \once \override Staff.Accidental.stencil = ##f
                                        f16 * 1/4
                                        - \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        fs16 * 1/4
                                        - \sharp-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs16 * 1/4
                                        - \sharp-articulation
                                        )
                                        ]
                                        \revert Beam.length-fraction
                                        \revert Beam.thickness
                                    }
                                    \context Voice = "RhythmMaker.Music Anchor"
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Stem.direction = #up
                                        \voiceTwo
                                        ef'16
                                        - \accent
                                        - \flat-articulation
                                    }
                                >>
                                \once \override Staff.Accidental.stencil = ##f
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                df'16
                                - \flat-articulation
                                \startTrillSpan ff'
                                \once \override Staff.Accidental.stencil = ##f
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                ef'16
                                - \flat-articulation
                                \startTrillSpan ff'
                                s1 * 0
                                \stopTrillSpan
                                <<
                                    \context Voice = "On_Beat_Grace_Container"
                                    {
                                          %! trinton.on_beat_grace_container(1)
                                        \set fontSize = #-5.5
                                        \my-hack-slash
                                        \override Beam.beam-thickness = #0.48
                                        \override Beam.length-fraction = #1
                                        \voiceOne
                                        df'16 * 1/5
                                        - \tweak Beam.positions #'(16 . 16)
                                        [
                                        (
                                        \once \override Staff.Accidental.stencil = ##f
                                        ef'16 * 1/5
                                        - \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        a16 * 1/5
                                        - \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        c16 * 1/5
                                        - \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        e,16 * 1/5
                                        - \natural-articulation
                                        )
                                        ]
                                        \revert Beam.length-fraction
                                        \revert Beam.thickness
                                    }
                                    \context Voice = "RhythmMaker.Music Anchor"
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Stem.direction = #up
                                        \voiceTwo
                                        df'16
                                        - \accent
                                        - \flat-articulation
                                    }
                                >>
                                \once \override Staff.Accidental.stencil = ##f
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                \once \override Stem.direction = #up
                                \pitchedTrill
                                ef'16
                                - \flat-articulation
                                ^ \fp
                                )
                                \startTrillSpan f'
                                s1 * 0
                                \stopTrillSpan
                                \change Staff = "piano 1 staff"
                                \once \override Stem.direction = #down
                                f'16
                                ]
                                \change Staff = "piano 3 staff"
                                r8.
                                r2
                            }
                        >>
                        \oneVoice
                    }
                }
                \context thirdStaff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 9/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/4
                        \stopStaff \startStaff
                    }
                }
            >>
            \context lowPassStaff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 9/8
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/8
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
