    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.BarLine.transparent = ##f
            \tweak text "×3" \startMeasureSpanner
            \bar ".|:"
            \time 9/8
            s1 * 9/8
            - \tweak padding #4
            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #3 { \center-column { \line { Adumbrationsstück: } \line { a way to draw water }  } }
            ^ \markup {
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-mixed-number-markup #3 #0 #2 #"75" #"3" #"5"  
              }
            }
            \set Score.repeatCommands = #'((volta "1 - 3"))
            \time 5/4
            s1 * 5/4
            \bar ":|.|:"
            \once \override Score.BarLine.transparent = ##f
            \set Score.repeatCommands = #'((volta "4"))
            \time 7/8
            s1 * 7/8
            \set Score.repeatCommands = #'((volta #f))
            \time 3/4
            s1 * 3/4
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
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
                                            \voiceOne
                                            r16
                                            [
                                            \once \override Staff.Accidental.stencil = ##f
                                            g'16
                                            - \tweak color \一
                                            - \natural-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            e''16
                                            - \tweak color \一
                                            - \natural-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            a'''16
                                            - \tweak color \一
                                            - \natural-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            g''16
                                            - \tweak color \一
                                            - \natural-articulation
                                        }
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                        \times 6/7
                                        {
                                            \once \override Rest.staff-position = #12
                                            r16
                                            \once \override Staff.Accidental.stencil = ##f
                                            f'16
                                            - \tweak color \一
                                            - \natural-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            af'16
                                            - \tweak color \一
                                            - \flat-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            g'16
                                            - \tweak color \一
                                            - \natural-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            b'16
                                            - \tweak color \一
                                            - \natural-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            d''16
                                            - \tweak color \一
                                            - \natural-articulation
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
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs''8
                                        - \tweak color \一
                                        - \sharp-articulation
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                        \times 8/7
                                        {
                                            r8
                                            fs'16
                                            cs''16
                                            r16
                                            d'16
                                            r16
                                        }
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 6) (ly:make-duration 3 0))
                                        \times 6/9
                                        {
                                            r8
                                            g'8
                                            r8
                                            e'8
                                            r8
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 1
                                            a''8
                                            ]
                                            r4
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 1
                                            c'8
                                            [
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
                                                r16
                                                \once \override Staff.Accidental.stencil = ##f
                                                f'16
                                                - \tweak color \一
                                                - \natural-articulation
                                                r16
                                                \once \override Staff.Accidental.stencil = ##f
                                                af'16
                                                - \tweak color \一
                                                - \flat-articulation
                                                r16
                                                \once \override Staff.Accidental.stencil = ##f
                                                g'16
                                                - \tweak color \一
                                                - \natural-articulation
                                                r16
                                                \once \override Staff.Accidental.stencil = ##f
                                                b''16
                                                - \tweak color \一
                                                - \natural-articulation
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
                                        \stopMeasureSpanner
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
                                            \tweak Beam.positions #'(-24 . -24)
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
                                            }
                                        }
                                        s1 * 3/4
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
                                                \tweak Beam.positions #'(-9 . -9)
                                                [
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                d'''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                ef'''64
                                                - \tweak color \三
                                                - \flat-articulation
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
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                c'''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                af''64
                                                - \tweak color \三
                                                - \flat-articulation
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
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                b'''64
                                                - \tweak color \三
                                                - \natural-articulation
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
                                                f'''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                af'''64
                                                - \tweak color \三
                                                - \flat-articulation
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \once \override Staff.Accidental.stencil = ##f
                                            g''16.
                                            - \tweak color \三
                                            - \natural-articulation
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
                                                \set stemRightBeamCount = 4
                                                d''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                ef''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                a''64
                                                - \tweak color \三
                                                - \natural-articulation
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
                                            \once \override Staff.Accidental.stencil = ##f
                                            ef''16.
                                            - \tweak color \三
                                            - \flat-articulation
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
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                cs''64
                                                - \tweak color \三
                                                - \sharp-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                e''64
                                                - \tweak color \三
                                                - \natural-articulation
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
                                                \set stemRightBeamCount = 1
                                                c''64
                                                - \tweak color \三
                                                - \natural-articulation
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
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                bf''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                f''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 4
                                                bf''64
                                                - \tweak color \三
                                                - \flat-articulation
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 4
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 0
                                                a''64
                                                - \tweak color \三
                                                - \natural-articulation
                                                  %! rmakers.beam_groups()
                                                ]
                                            }
                                            \once \override Rest.staff-position = #-2
                                            r32
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
                                                \tweak Beam.positions #'(26 . 26)
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
                        s1 * 9/8
                        s1 * 5/4
                        s1 * 7/8
                        s1 * 3/4
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
