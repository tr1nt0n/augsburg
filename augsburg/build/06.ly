    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 37/16
            s1 * 37/16
            ^ \markup {
              \raise #14.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #35 #32 #2 #0 #'(1 . 1)]
              }
            }
            \time 3/2
            s1 * 3/2
            ^ \markup {
              \raise #8 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-markup #2 #0 #2 #"72" 
              }
            }
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'\breve
                                        ~
                                        c'4
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \staff-line-count 1
                              %! +SCORE
                            \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                            \override Staff.Stem.direction = #UP
                            \once \override Beam.grow-direction = #right
                            \clef "percussion"
                            c'32 * 127/32
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tastaturabdeckung }
                            [
                            c'32 * 127/32
                            c'32 * 125/32
                            c'32 * 123/32
                            c'32 * 119/32
                            c'32 * 115/32
                            c'32 * 55/16
                            c'32 * 53/16
                            c'32 * 101/32
                            c'32 * 3
                            c'32 * 91/32
                            c'32 * 43/16
                            c'32 * 41/16
                            c'32 * 39/16
                            c'32 * 37/16
                            c'32 * 71/32
                            c'32 * 17/8
                            c'32 * 65/32
                            c'32 * 31/16
                            \set suggestAccidentals = ##t
                            c'32 * 15/8
                            c'32 * 29/16
                            c'32 * 57/32
                            c'32 * 55/32
                            c'32 * 27/16
                            c'32 * 53/32
                            c'32 * 13/8
                            c'32 * 13/8
                            c'32 * 51/32
                            c'32 * 25/16
                            ]
                            \revert Staff.Stem.direction
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.direction = #UP
                        c'2
                        \revert Staff.Stem.direction
                        \set suggestAccidentals = ##f
                        r1
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 37/16
                        s1 * 3/2
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'\breve
                                        ~
                                        c'4
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \staff-line-count 5
                            \crossStaff {
                            \once \override Staff.TupletBracket.stencil = ##f
                            \once \override Staff.TupletNumber.stencil = ##f
                            \once \override Staff.Beam.stencil = ##f
                              %! +SCORE
                            \revert Staff.BarLine.bar-extent
                            \once \override Beam.grow-direction = #right
                            \clef "bass"
                            \once \override Staff.DynamicLineSpanner.staff-padding = 7
                            d,32 * 127/32
                            \ppp
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Tasten ) }
                            [
                            \<
                            \sustainOn
                            d,32 * 127/32
                            d,32 * 125/32
                            d,32 * 123/32
                            d,32 * 119/32
                            d,32 * 115/32
                            d,32 * 55/16
                            d,32 * 53/16
                            d,32 * 101/32
                            d,32 * 3
                            d,32 * 91/32
                            d,32 * 43/16
                            d,32 * 41/16
                            d,32 * 39/16
                            d,32 * 37/16
                            d,32 * 71/32
                            d,32 * 17/8
                            d,32 * 65/32
                            d,32 * 31/16
                            \set suggestAccidentals = ##t
                            d,32 * 15/8
                            d,32 * 29/16
                            d,32 * 57/32
                            d,32 * 55/32
                            d,32 * 27/16
                            d,32 * 53/32
                            d,32 * 13/8
                            d,32 * 13/8
                            d,32 * 51/32
                            d,32 * 25/16
                            ]
                        }
                        \revert TupletNumber.text
                        \once \override Stem.cross-staff = ##t
                        \once \override Stem.Y-extent = #'(0 . 0)
                        \once \override Stem.details.lengths = #'(33)
                        d,2
                        - \accent
                        \f
                        }
                        \set suggestAccidentals = ##f
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            d,2
                            - \tenuto
                            \mf
                            d,16
                            - \accent
                            \ff
                            \sustainOff
                            r2
                            r8.
                        }
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
                        R1 * 37/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/2
                        \stopStaff \startStaff
                    }
                }
            >>
            \context lowPassStaff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \override Dots.staff-position = #2
                    ef\breve
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    ef4
                    ~
                    ef16
                    ~
                    ef2
                    ~
                    ef16
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    \afterGrace
                    g'2...
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        ef16
                    }
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
