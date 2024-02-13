    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/2
            s1 * 5/2
            ^ \markup {
              \raise #7 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" 
              }
            }
            \time 7/4
            s1 * 7/4
            \time 3/2
            s1 * 3/2
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #21.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
              }
            }
            \time 7/4
            s1 * 7/4
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" 
              }
            }
            \time 5/2
            s1 * 5/2
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #19 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
              }
            }
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \time 3/2
            s1 * 3/2
            ^ \markup {
              \raise #7 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" 
              }
            }
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #19 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
              }
            }
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        r4.
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-6 . 0)
                        \override Dots.staff-position = #2
                        \staff-line-count 5
                        \once \override Voice.Accidental.font-size = 5
                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'!8
                        ^ \markup \center-align { \concat { -15 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
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
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'4
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'4
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'4
                        \once \override Voice.Accidental.font-size = 5
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \natural-one-syntonic-comma-down  }
                        g!4
                        ^ \markup \center-align { \concat { -45 } }
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
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \natural-one-syntonic-comma-down  }
                        g4.
                        \once \override Voice.Accidental.font-size = 5
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef'!8
                        ^ \markup \center-align { \concat { -31 } }
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
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef'2
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        r4
                        \staff-line-count 1
                        \clef "percussion"
                        c'2
                        :32
                        \mf
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Magnetgruppe } \line { mit der Handfläche }  } }
                        \>
                        ~
                        c'4
                        :32
                        \pp
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-5 . 0)
                        \staff-line-count 5
                        \once \override Voice.Accidental.font-size = 5
                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef'!4
                        ^ \markup \center-align { \concat { -31 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
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
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef'4.
                        \once \override Voice.Accidental.font-size = 5
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs!8
                        ^ \markup \center-align { \concat { +2 } }
                        r2
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >1
                        :32
                        - \espressivo
                        \mp
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Die Saiten in der höchsten Oktave } \line { auf ihrer Rückseite klimpern }  } }
                        <<
                            \context Voice = "37 voice temp"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    \interrupt
                                    \ottava 2
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
                                    g''''4
                                    ^ \pp
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                                    ^ \>
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    a''''4
                                    ^ \ppp
                                    \interrupt
                                    a''''4
                                    \interrupt
                                    a''''8
                                    ~
                                    a''''32
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
                            \context Voice = "35 voice"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    \interrupt
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
                                    \voiceTwo
                                    g''''4
                                    \pp
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''16.
                                    \!
                                    \ottava 0
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
                        >>
                        \oneVoice
                        r4
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs!4
                        ^ \markup \center-align { \concat { +2 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
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
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs4
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs4
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs4
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs4.
                        \once \override Voice.Accidental.font-size = 5
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        e!8
                        ^ \markup \center-align { \concat { F-49 } }
                        r2
                        r8
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >4.
                        :32
                        - \espressivo
                        \mp
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Die Saiten in der höchsten Oktave } \line { auf ihrer Rückseite klimpern }  } }
                        ~
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >4
                        :32
                        \staff-line-count 1
                        \clef "percussion"
                        c'4
                        :32
                        \mf
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Magnetgruppe } \line { mit der Handfläche }  } }
                        \>
                        ~
                        c'4.
                        :32
                        \pp
                        \staff-line-count 5
                        \once \override Voice.Accidental.font-size = 5
                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        e!8
                        ^ \markup \center-align { \concat { F-49 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        e2
                        <<
                            \context Voice = "37 voice temp 1"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    \interrupt
                                    \ottava 2
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
                                    \voiceOne
                                    g''''4
                                    _ \ff
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                                    - \tweak stencil #constante-hairpin
                                    _ \<
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    a''''4
                                    _ \>
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    a''''8
                                    ~
                                    a''''32
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    a''''16.
                                    \interrupt
                                    a''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    a''''4
                                    \interrupt
                                    a''''4
                                    \interrupt
                                    a''''16
                                    _ \p
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    a''''8.
                                    \interrupt
                                    a''''4
                                    \interrupt
                                    a''''4
                                    \interrupt
                                    a''''4
                                    \interrupt
                                    a''''8..
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
                            \context Voice = "35 voice 1"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    \interrupt
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
                                    \voiceTwo
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g'''4
                                    \interrupt
                                    g''''16.
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g''''8
                                    ~
                                    g''''32
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g'''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g'''8.
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g'''16
                                    \interrupt
                                    g'''4
                                    \interrupt
                                    g'''4
                                    \interrupt
                                    g'''4
                                    \interrupt
                                    g'''4
                                    \interrupt
                                    g'''32
                                    \ottava 0
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
                        >>
                        \oneVoice
                        r4.
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        e!8
                        ^ \markup \center-align { \concat { F-49 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
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
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        e4
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        e4
                        \once \override Voice.Accidental.font-size = 5
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f!8
                        ^ \markup \center-align { \concat { -14 } }
                        \staff-line-count 1
                        \clef "percussion"
                        c'4.
                        :32
                        \mp
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Magnetgruppe } \line { mit der Handfläche }  } }
                        <<
                            \context Voice = "37 voice temp 2"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    \staff-line-count 5
                                    \hocket
                                    \ottava 2
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
                                    \clef "treble"
                                    \voiceOne
                                    a''''4
                                    _ \pp
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                                    - \tweak stencil #constante-hairpin
                                    _ \<
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''8
                                    ~
                                    a''''32
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    a''''16.
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''16
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    a''''8.
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''8..
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    a''''32
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''8
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    a''''8
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''32
                                    \!
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
                            \context Voice = "35 voice 2"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    \hocket
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
                                    \voiceTwo
                                    g'''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g''''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g''''16.
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g''''8
                                    ~
                                    g''''32
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''8.
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g'''16
                                    \hocket
                                    g''''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g''''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''32
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g'''8..
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g''''4
                                    \hocket
                                    g'''8
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g'''8
                                    \hocket
                                    g''''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''8..
                                    \ottava 0
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
                        >>
                        \oneVoice
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 5/2
                        s1 * 7/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 7/4
                        s1 * 5/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        <<
                            \context Voice = "RhythmMaker.Music temp"
                            {
                                \clef "bass"
                                \voiceOne
                                <c' ds' gs' b'>1.
                                ^ \f
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Tasten ) }
                                ~
                                <c' ds' gs' b'>1
                                <ds a bf>1..
                                ^ \p
                                <b c' f' bf'>1.
                                ^ \p
                            }
                            \context Voice = "epsilon intermittent voice 2"
                            {
                                \voiceTwo
                                f,,1.
                                _ \fff
                                - \tweak stencil #constante-hairpin
                                _ \<
                                ~
                                f,,1
                                b,,,1..
                                df,,1.
                                \!
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "13 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    \interrupt
                                    \ottava 2
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
                                    \clef "treble"
                                    \voiceOne
                                    g''''4
                                    ^ \mp
                                    ^ \>
                                    \interrupt
                                    e''''4
                                    \interrupt
                                    g''''4
                                    ^ \p
                                    \interrupt
                                    e''''16
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
                            \context Voice = "4 voice"
                            {
                                \interrupt
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
                                g''''4
                                \mp
                                - \tweak stencil #constante-hairpin
                                \<
                                \interrupt
                                g''''4
                                \interrupt
                                ds''''4
                                \interrupt
                                ds''''4
                                \!
                                \ottava 0
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
                        <<
                            \context Voice = "RhythmMaker.Music temp"
                            {
                                \clef "bass"
                                \voiceOne
                                <ds a bf>1..
                                ^ \p
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Tasten ) }
                                <c' ds' gs' b'>1.
                                ^ \p
                                ~
                                <c' ds' gs' b'>1
                            }
                            \context Voice = "epsilon intermittent voice 2 1"
                            {
                                \voiceTwo
                                b,,,1..
                                _ \fff
                                f,,1.
                                _ \fff
                                ~
                                f,,1
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "13 voice temp 1"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    \interrupt
                                    \ottava 2
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
                                    \clef "treble"
                                    \voiceOne
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    e''''16
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    e''''8.
                                    \interrupt
                                    e''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    e''''8
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    e''''8
                                    \interrupt
                                    e''''4
                                    \interrupt
                                    e''''4
                                    \interrupt
                                    e''''8.
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
                            \context Voice = "4 voice 1"
                            {
                                \interrupt
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
                                \voiceTwo
                                g''''4
                                \interrupt
                                g''''4
                                \interrupt
                                ds''''4
                                \interrupt
                                g''''4
                                \interrupt
                                g''''4
                                \interrupt
                                g''''4
                                \interrupt
                                ds''''4
                                \interrupt
                                ds''''4
                                \interrupt
                                g''''4
                                \interrupt
                                ds''''4
                                \interrupt
                                ds'''4
                                \interrupt
                                ds'''4
                                \ottava 0
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
                        <<
                            \context Voice = "RhythmMaker.Music temp"
                            {
                                \clef "bass"
                                \voiceOne
                                <b c' f' bf'>1.
                                ^ \p
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Tasten ) }
                            }
                            \context Voice = "epsilon intermittent voice 2 2"
                            {
                                \voiceTwo
                                df,,1.
                                _ \fff
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "13 voice temp 2"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    \hocket
                                    \ottava 2
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
                                    \clef "treble"
                                    \voiceOne
                                    e''''4
                                    \hocket
                                    e''''4
                                    \hocket
                                    e''''4
                                    \hocket
                                    e''''16
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    e''''8.
                                    \hocket
                                    e'''4
                                    \hocket
                                    e'''4
                                    \hocket
                                    e''''8
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    e''''8
                                    \sustainOn
                                    \ottava 0
                                    \hocket
                                    \ottava 1
                                    e'''4
                                    \hocket
                                    e'''4
                                    \hocket
                                    e'''8.
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    e'''16
                                    \hocket
                                    e'''4
                                    \hocket
                                    e'''4
                                    \hocket
                                    e'''4
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    \hocket
                                    e'''4
                                    \hocket
                                    e'''4
                                    \hocket
                                    e'''4
                                    \hocket
                                    e'''16
                                    \sustainOff
                                    \ottava 0
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
                            \context Voice = "4 voice 2"
                            {
                                \hocket
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
                                \voiceTwo
                                ds'''4
                                \hocket
                                ds'''4
                                \hocket
                                ds'''4
                                \hocket
                                ds'''4
                                \hocket
                                ds'''4
                                \hocket
                                ds'''4
                                \hocket
                                ds'''4
                                \hocket
                                ds'''4
                                \hocket
                                ds'''4
                                \hocket
                                ds''4
                                \hocket
                                ds''4
                                \hocket
                                ds''4
                                \hocket
                                ds'''4
                                \hocket
                                ds''4
                                \hocket
                                ds''4
                                \hocket
                                ds''4
                                \hocket
                                ds'''4
                                \hocket
                                ds''4
                                \hocket
                                ds''4
                                \hocket
                                ds''4
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
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
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
                        R1 * 5/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
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
                    \afterGrace
                    ef2
                    {
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        a16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/2
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    \afterGrace
                    a1..
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        e'16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/2
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    \afterGrace
                    e'1.
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        a'16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
