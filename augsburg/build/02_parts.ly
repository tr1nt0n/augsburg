    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 1/4
            s1 * 1/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 9/16
            s1 * 9/16
            ^ \markup {
              \raise #20.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4" 
              }
            }
            \time 5/8
            s1 * 5/8
            \time 3/8
            s1 * 3/8
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 8/16
            s1 * 1/2
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 7/16
            s1 * 7/16
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 3/16
            s1 * 3/16
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 5/16
            s1 * 5/16
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 4/16
            s1 * 1/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 11/16
            s1 * 11/16
            \time 7/8
            s1 * 7/8
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 13/8
            s1 * 13/8
            ^ \markup {
              \raise #10 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #13 #16 #2 #0 #'(1 . 1)]
              }
            }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 11/8
            s1 * 11/8
            - \tweak padding #16.5
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #2 #"60"  ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #2 #"33"  [\abjad-metric-modulation-tuplet-lhs #1 #0 #32 #35 #2 #0 #'(1 . 1)] } }
            - \tweak bound-details.right.padding 15
            \startTextSpan
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \stopTextSpan
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
                        \override Staff.NoteHead.X-extent = #'(0 . 0)
                        \override Staff.NoteHead.transparent = ##t
                        \override Staff.NoteHead.no-ledgers = ##t
                        \key c \major
                        \afterGrace
                        a''4
                        \ffff
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Auf den Saiten mit } \line { einem Plektrum }  } }
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        {
                            \once \override Flag.stroke-style = #"grace" 
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            c'16
                            \!
                            )
                            \breathe
                            \revert Staff.NoteHead.X-extent
                            \revert Staff.NoteHead.transparent
                            \revert Staff.NoteHead.no-ledgers
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                        \times 6/5
                        {
                            \staff-line-count 1
                            \change Staff = "piano 1 staff"
                            \override Score.Stem.direction = #UP
                            \override Staff.TupletBracket.direction = #UP
                            \clef "percussion"
                            r32
                            - \tweak padding #12
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Auf dem Deckel } \line { mit Styroporkugeln }  } }
                            [
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            - \tweak stencil #constante-hairpin
                            \<
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                        \times 6/7
                        {
                            \change Staff = "piano 1 staff"
                            r32
                            [
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \change Staff = "piano 1 staff"
                        r16
                        [
                        \change Staff = "piano 3 staff"
                        c'16
                        \change Staff = "piano 1 staff"
                        c'16
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                        \times 6/5
                        {
                            \change Staff = "piano 1 staff"
                            r16
                            [
                            \change Staff = "piano 3 staff"
                            c'16
                            \>
                            \change Staff = "piano 1 staff"
                            c'16
                            \change Staff = "piano 3 staff"
                            c'16
                            \change Staff = "piano 1 staff"
                            c'16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                        \times 8/7
                        {
                            \change Staff = "piano 1 staff"
                            r32
                            [
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                        \times 4/5
                        {
                            \change Staff = "piano 3 staff"
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'16
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "p"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            [
                            \<
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r32
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                        \times 8/7
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'32
                            [
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r64
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r64
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'64
                            ]
                            ~
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                        \times 2/3
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'16
                            [
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r16
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ]
                            \>
                            ~
                        }
                        c'2
                        \revert Staff.Accidental.stencil
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                        \times 8/7
                        {
                            \change Staff = "piano 1 staff"
                            \once \override TupletBracket.bracket-visibility = ##f
                            r64
                            [
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'64
                            \change Staff = "piano 3 staff"
                            c'64
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \change Staff = "piano 1 staff"
                            c'64
                            \change Staff = "piano 3 staff"
                            c'64
                            \change Staff = "piano 1 staff"
                            c'64
                            \change Staff = "piano 3 staff"
                            c'64
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                        \times 2/3
                        {
                            \change Staff = "piano 1 staff"
                            \once \override TupletBracket.bracket-visibility = ##f
                            r16
                            [
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \change Staff = "piano 3 staff"
                            c'16
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                        \times 6/5
                        {
                            \change Staff = "piano 1 staff"
                            r32
                            [
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 6 0))
                        \times 4/5
                        {
                            \change Staff = "piano 1 staff"
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'32
                            [
                            \>
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r64
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                        \times 8/7
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'64
                            [
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r128
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'64
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r128
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'128
                            ]
                            ~
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'32
                            [
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r32
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "p"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ]
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            ~
                        }
                        c'4
                        ~
                        c'16
                        ~
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        c'32..
                        [
                        \revert Staff.Accidental.stencil
                        \change Staff = "piano 1 staff"
                        r128
                        ]
                        \change Staff = "piano 3 staff"
                        \once \override Stem.cross-staff = ##t
                        \once \override Stem.Y-extent = #'(0 . 0)
                        \once \override Stem.details.lengths = #'(30)
                        \once \override Flag.cross-staff = ##t
                        \once \override Flag.Y-extent = #'(0 . 0)
                        \once \override StaffGroup.Flag.Y-offset = 30
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        \override Staff.Accidental.stencil = ##f
                        c'16
                        \revert Staff.Accidental.stencil
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                        \times 8/7
                        {
                            \change Staff = "piano 1 staff"
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            r128
                            [
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32.
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ]
                            ~
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'32
                            [
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r32
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                        \times 2/3
                        {
                            \change Staff = "piano 1 staff"
                            \once \override TupletBracket.bracket-visibility = ##f
                            r16
                            [
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \change Staff = "piano 3 staff"
                            c'16
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                        \times 4/5
                        {
                            \change Staff = "piano 1 staff"
                            \once \override TupletBracket.bracket-visibility = ##f
                            r32
                            [
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \change Staff = "piano 1 staff"
                        \once \override TupletBracket.bracket-visibility = ##f
                        r64
                        [
                        \change Staff = "piano 1 staff"
                        \override Staff.Accidental.stencil = ##f
                        c'64
                        \change Staff = "piano 3 staff"
                        c'64
                        \change Staff = "piano 1 staff"
                        c'64
                        \change Staff = "piano 3 staff"
                        c'64
                        \change Staff = "piano 1 staff"
                        c'64
                        \change Staff = "piano 3 staff"
                        c'64
                        \change Staff = "piano 1 staff"
                        c'64
                        ]
                        \revert Staff.Accidental.stencil
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 5 0))
                        \times 4/6
                        {
                            \change Staff = "piano 1 staff"
                            \once \override TupletBracket.bracket-visibility = ##f
                            r32
                            [
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                        \times 6/7
                        {
                            \change Staff = "piano 1 staff"
                            r32
                            [
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 3 0))
                        \times 7/6
                        {
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                            \times 2/3
                            {
                                \change Staff = "piano 1 staff"
                                r4
                                \change Staff = "piano 1 staff"
                                c'4
                                \change Staff = "piano 3 staff"
                                \once \override Stem.cross-staff = ##t
                                \once \override Stem.Y-extent = #'(0 . 0)
                                \once \override Stem.details.lengths = #'(30)
                                \once \override Flag.cross-staff = ##t
                                \once \override Flag.Y-extent = #'(0 . 0)
                                \once \override StaffGroup.Flag.Y-offset = 30
                                c'4
                            }
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                            \times 4/5
                            {
                                \change Staff = "piano 1 staff"
                                r16
                                [
                                \change Staff = "piano 1 staff"
                                \override Staff.Accidental.stencil = ##f
                                c'16
                                _ #(make-dynamic-script
                                    (markup
                                        #:whiteout
                                        #:line (
                                            #:general-align Y -2 #:normal-text #:larger "“"
                                            #:hspace -0.1
                                            #:dynamic "pp"
                                            #:hspace -0.25
                                            #:general-align Y -2 #:normal-text #:larger "”"
                                            )
                                        )
                                    )
                                \change Staff = "piano 3 staff"
                                c'16
                                \change Staff = "piano 1 staff"
                                c'16
                                \change Staff = "piano 3 staff"
                                c'16
                                ]
                                \revert Score.Stem.direction
                                \override Staff.TupletBracket.direction = #UP
                                \change Staff = "piano 1 staff"
                                \revert Staff.Accidental.stencil
                            }
                        }
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 13) (ly:make-duration 3 0))
                        \times 13/14
                        {
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \staff-line-count 5
                            \ottava -1
                            \clef "bass"
                            c,,16.
                            \ppp
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            r32
                            \override Staff.Accidental.stencil = ##f
                            cs,,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            ef,,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            e,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            fs,,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            g,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            af,,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            a,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            b,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            a,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            ef,,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            cs,,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            af,,16.
                            - \flat-articulation
                            \!
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r32
                            ]
                        }
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 11) (ly:make-duration 3 0))
                        \times 11/12
                        {
                            \ottava -1
                            c,,16.
                            \mp
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            r32
                            \override Staff.Accidental.stencil = ##f
                            cs,,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            ef,,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            e,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            fs,,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            g,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            af,,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            a,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            b,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            a,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            ef,,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c,,16.
                            - \natural-articulation
                            \!
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r32
                            ]
                        }
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 1/4
                        s1 * 9/16
                        s1 * 5/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 7/16
                        s1 * 3/16
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 11/16
                        s1 * 7/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 13/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 11/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \key c \major
                        \ottava 2
                        \revert Staff.Accidental.X-extent
                        \clef "treble"
                        \afterGrace
                        <bf''''! b''''!>4
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Tasten ) }
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        \sustainOn
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \ottava -2
                            \revert Staff.Accidental.X-extent
                            \clef "bass"
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            <a,,,! as,,,!>16
                            )
                            \sustainOff
                            \ottava 0
                            \ottava 0
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \override Staff.Accidental.X-extent = ##f
                        \staff-line-count 1
                        \override Score.Stem.direction = #UP
                        \override Staff.TupletBracket.direction = #UP
                        \clef "percussion"
                        s1 * 9/16
                        s1 * 5/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 7/16
                        s1 * 3/16
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 11/16
                        s1 * 7/8
                        \revert Score.Stem.direction
                        \override Staff.TupletBracket.direction = #DOWN
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \staff-line-count 5
                        \clef "bass"
                        r16.
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                        [
                        \ottava -1
                        af,,32
                        \p
                        - \tweak stencil #constante-hairpin
                        \<
                        r16.
                        e,,32
                        r16.
                        fs,,32
                        r16.
                        g,,32
                        r16.
                        af,,32
                        r16.
                        e,,32
                        r16.
                        fs,,32
                        r16.
                        a,,32
                        r16.
                        b,,32
                        r16.
                        cs,32
                        r16.
                        ef,,32
                        r16.
                        c,,32
                        r16.
                        cs,,32
                        \!
                        ]
                        \ottava 0
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        r16.
                        [
                        \ottava -1
                        cs,32
                        \pp
                        - \tweak stencil #constante-hairpin
                        \<
                        r16.
                        ef,,32
                        r16.
                        fs,,32
                        r16.
                        g,32
                        r16.
                        af,,32
                        r16.
                        e,32
                        r16.
                        b,,32
                        r16.
                        a,,32
                        r16.
                        b,,32
                        r16.
                        ef,,32
                        r16.
                        c,,32
                        \!
                        ]
                        \ottava 0
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
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
                        R1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 9/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 11/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 13/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 11/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
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
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 9/16
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/8
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/2
                    \stopStaff \startStaff
                    a'4..
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    a'8.
                    \once \override Dots.staff-position = #2
                    a'4
                    ~
                    \once \override Dots.staff-position = #2
                    a'16
                    \once \override Dots.staff-position = #2
                    a'4
                    \once \override Dots.staff-position = #2
                    a'2
                    ~
                    \once \override Dots.staff-position = #2
                    a'8.
                    \once \override Dots.staff-position = #2
                    \afterGrace
                    a'2..
                    {
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        ef16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \stopStaff \startStaff
                    ef2.
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    ef16
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    g2.
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    g16
                    {
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        ef16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \stopStaff \startStaff
                    ef2
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    ef8.
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    a2
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    a8.
                    {
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        ef16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
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
