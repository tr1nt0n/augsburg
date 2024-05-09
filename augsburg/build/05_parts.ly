    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 11/4
            s1 * 11/4
            ^ \markup {
              \raise #8 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4"
                  [\abjad-metric-modulation #1 #0 #2 #0 #'(1 . 1)]
              }
            }
            \time 5/2
            s1 * 5/2
            \time 8/4
            s1 * 2
            \time 7/4
            s1 * 7/4
            \time 3/2
            s1 * 3/2
            \time 4/4
            s1 * 1
            - \tweak padding #19
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4"  ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #2 #"60"  [\abjad-metric-modulation-tuplet-lhs #2 #0 #13 #16 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            \time 6/8
            s1 * 3/4
            \time 5/8
            s1 * 5/8
            \time 2/4
            s1 * 1/2
            \time 3/8
            s1 * 3/8
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \short-fermata
            \stopTextSpan
            \once \override Score.BarLine.transparent = ##f
            \time 7/8
            s1 * 7/8
            \time 2/8
            s1 * 1/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 15/16
            s1 * 15/16
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 3/16
            s1 * 3/16
            \time 7/4
            s1 * 7/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 3/16
            s1 * 3/16
            \time 3/4
            s1 * 3/4
            ^ \markup {
              \raise #18 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33"
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #32 #35 #2 #0 #'(1 . 1)]
              }
            }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \long-fermata
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
                        \staff-line-count 1
                        \change Staff = "piano 1 staff"
                        \override Score.Stem.direction = #UP
                        \override Staff.TupletBracket.direction = #UP
                        \clef "percussion"
                        r4.
                        \change Staff = "piano 3 staff"
                        \once \override Stem.cross-staff = ##t
                        \once \override Stem.Y-extent = #'(0 . 0)
                        \once \override Stem.details.lengths = #'(33)
                        \once \override Flag.cross-staff = ##t
                        \once \override Flag.Y-extent = #'(0 . 0)
                        \once \override StaffGroup.Flag.Y-offset = 33
                        c'16
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "pppp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \tweak stencil #constante-hairpin
                        _ \<
                        \change Staff = "piano 1 staff"
                        r16
                        - \tweak padding #12
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Auf dem Deckel } \line { mit Styroporkugeln }  } }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 3 0))
                        \times 4/6
                        {
                            \change Staff = "piano 1 staff"
                            r4.
                            \change Staff = "piano 1 staff"
                            c'8
                            \change Staff = "piano 1 staff"
                            r4
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                        \times 8/7
                        {
                            \change Staff = "piano 1 staff"
                            r8.
                            [
                            \change Staff = "piano 3 staff"
                            c'16
                            \change Staff = "piano 1 staff"
                            r8.
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            \change Staff = "piano 1 staff"
                            r2
                            \change Staff = "piano 1 staff"
                            c'4
                        }
                        \once \override TupletBracket.padding = 8
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                        \times 6/7
                        {
                            \change Staff = "piano 1 staff"
                            r2.
                            \change Staff = "piano 3 staff"
                            \once \override Stem.cross-staff = ##t
                            \once \override Stem.Y-extent = #'(0 . 0)
                            \once \override Stem.details.lengths = #'(33)
                            \once \override Flag.cross-staff = ##t
                            \once \override Flag.Y-extent = #'(0 . 0)
                            \once \override StaffGroup.Flag.Y-offset = 33
                            c'8
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 27 20) (ly:make-duration 3 0))
                        \times 20/27
                        {
                            \change Staff = "piano 1 staff"
                            r4.
                            \change Staff = "piano 1 staff"
                            c'4.
                            _ \<
                            \change Staff = "piano 3 staff"
                            \once \override Stem.cross-staff = ##t
                            \once \override Stem.Y-extent = #'(0 . 0)
                            \once \override Stem.details.lengths = #'(33)
                            \once \override Flag.cross-staff = ##t
                            \once \override Flag.Y-extent = #'(0 . 0)
                            \once \override StaffGroup.Flag.Y-offset = 33
                            c'4.
                            \change Staff = "piano 1 staff"
                            r4.
                            \change Staff = "piano 1 staff"
                            c'4.
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 2 0))
                            \times 6/7
                            {
                                \change Staff = "piano 3 staff"
                                \once \override Stem.cross-staff = ##t
                                \once \override Stem.Y-extent = #'(0 . 0)
                                \once \override Stem.details.lengths = #'(33)
                                \once \override Flag.cross-staff = ##t
                                \once \override Flag.Y-extent = #'(0 . 0)
                                \once \override StaffGroup.Flag.Y-offset = 33
                                c'4
                                \change Staff = "piano 1 staff"
                                r4
                                \change Staff = "piano 1 staff"
                                c'4
                                \change Staff = "piano 1 staff"
                                r4
                                \change Staff = "piano 3 staff"
                                \once \override Stem.cross-staff = ##t
                                \once \override Stem.Y-extent = #'(0 . 0)
                                \once \override Stem.details.lengths = #'(33)
                                \once \override Flag.cross-staff = ##t
                                \once \override Flag.Y-extent = #'(0 . 0)
                                \once \override StaffGroup.Flag.Y-offset = 33
                                c'4
                                \change Staff = "piano 1 staff"
                                r4
                                \change Staff = "piano 1 staff"
                                c'4
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
                                - \tweak stencil #constante-hairpin
                                _ \<
                            }
                        }
                        \change Staff = "piano 1 staff"
                        r4
                        \change Staff = "piano 1 staff"
                        r4
                        \once \override TupletBracket.padding = 8
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                            \change Staff = "piano 1 staff"
                            r4
                            \change Staff = "piano 3 staff"
                            \once \override Stem.cross-staff = ##t
                            \once \override Stem.Y-extent = #'(0 . 0)
                            \once \override Stem.details.lengths = #'(33)
                            \once \override Flag.cross-staff = ##t
                            \once \override Flag.Y-extent = #'(0 . 0)
                            \once \override StaffGroup.Flag.Y-offset = 33
                            c'8
                        }
                        \change Staff = "piano 1 staff"
                        r4
                        \change Staff = "piano 1 staff"
                        r4
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 4 0))
                        \times 4/6
                        {
                            \change Staff = "piano 1 staff"
                            c'16
                            \change Staff = "piano 1 staff"
                            r4
                            r16
                        }
                        \change Staff = "piano 1 staff"
                        r4
                        \once \override TupletBracket.padding = 8
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                            \change Staff = "piano 1 staff"
                            r4
                            \change Staff = "piano 3 staff"
                            \once \override Stem.cross-staff = ##t
                            \once \override Stem.Y-extent = #'(0 . 0)
                            \once \override Stem.details.lengths = #'(33)
                            \once \override Flag.cross-staff = ##t
                            \once \override Flag.Y-extent = #'(0 . 0)
                            \once \override StaffGroup.Flag.Y-offset = 33
                            c'8
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            \change Staff = "piano 1 staff"
                            r2
                            \change Staff = "piano 1 staff"
                            c'4
                            _ \>
                            \change Staff = "piano 3 staff"
                            \once \override Stem.cross-staff = ##t
                            \once \override Stem.Y-extent = #'(0 . 0)
                            \once \override Stem.details.lengths = #'(33)
                            \once \override Flag.cross-staff = ##t
                            \once \override Flag.Y-extent = #'(0 . 0)
                            \once \override StaffGroup.Flag.Y-offset = 33
                            c'4
                            \change Staff = "piano 1 staff"
                            r4
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                        \times 6/7
                        {
                            \change Staff = "piano 1 staff"
                            r8
                            [
                            \change Staff = "piano 1 staff"
                            c'8
                            \change Staff = "piano 1 staff"
                            r8
                            \change Staff = "piano 3 staff"
                            c'8
                            ]
                            \change Staff = "piano 1 staff"
                            r4
                            \change Staff = "piano 1 staff"
                            c'8
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            _ \<
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 4 0))
                        \times 8/9
                        {
                            \change Staff = "piano 1 staff"
                            r8
                            [
                            \change Staff = "piano 3 staff"
                            c'16
                            \change Staff = "piano 1 staff"
                            r16
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r16
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r8
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            \change Staff = "piano 1 staff"
                            c'8
                            \change Staff = "piano 1 staff"
                            r4
                            \change Staff = "piano 3 staff"
                            \once \override Stem.cross-staff = ##t
                            \once \override Stem.Y-extent = #'(0 . 0)
                            \once \override Stem.details.lengths = #'(33)
                            \once \override Flag.cross-staff = ##t
                            \once \override Flag.Y-extent = #'(0 . 0)
                            \once \override StaffGroup.Flag.Y-offset = 33
                            c'8
                            \change Staff = "piano 1 staff"
                            r8
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                        \times 8/7
                        {
                            \change Staff = "piano 1 staff"
                            c'16
                            [
                            \change Staff = "piano 1 staff"
                            r8
                            \change Staff = "piano 3 staff"
                            c'16
                            \change Staff = "piano 1 staff"
                            r8
                            \change Staff = "piano 1 staff"
                            c'16
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 1 0))
                        \times 2/3
                        {
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                            \times 4/5
                            {
                                \change Staff = "piano 1 staff"
                                r2
                                \change Staff = "piano 3 staff"
                                \once \override Stem.cross-staff = ##t
                                \once \override Stem.Y-extent = #'(0 . 0)
                                \once \override Stem.details.lengths = #'(33)
                                \once \override Flag.cross-staff = ##t
                                \once \override Flag.Y-extent = #'(0 . 0)
                                \once \override StaffGroup.Flag.Y-offset = 33
                                c'4
                                \change Staff = "piano 1 staff"
                                c'4
                                \change Staff = "piano 1 staff"
                                r4
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                            \times 8/7
                            {
                                \change Staff = "piano 3 staff"
                                c'16
                                [
                                \change Staff = "piano 1 staff"
                                r16
                                \change Staff = "piano 1 staff"
                                \override Staff.Accidental.stencil = ##f
                                c'16
                                \revert Staff.Accidental.stencil
                                \change Staff = "piano 1 staff"
                                r16
                                \change Staff = "piano 3 staff"
                                \override Staff.Accidental.stencil = ##f
                                c'16
                                \revert Staff.Accidental.stencil
                                \change Staff = "piano 1 staff"
                                r16
                                \change Staff = "piano 1 staff"
                                \override Staff.Accidental.stencil = ##f
                                c'16
                                ]
                                \revert Staff.Accidental.stencil
                            }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                        \times 6/5
                        {
                            \change Staff = "piano 1 staff"
                            r16
                            [
                            \change Staff = "piano 3 staff"
                            c'16
                            \change Staff = "piano 1 staff"
                            c'16
                            \change Staff = "piano 1 staff"
                            r16
                            \change Staff = "piano 3 staff"
                            c'16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 3 0))
                        \times 3/4
                        {
                            \change Staff = "piano 1 staff"
                            r16
                            [
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r16
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r16
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r16
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 3 0))
                        \times 5/4
                        {
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                            \times 4/5
                            {
                                \change Staff = "piano 1 staff"
                                r4
                                \change Staff = "piano 1 staff"
                                c'16
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                            \times 8/7
                            {
                                \change Staff = "piano 1 staff"
                                r16
                                [
                                \change Staff = "piano 3 staff"
                                c'32
                                \change Staff = "piano 1 staff"
                                r16.
                                \change Staff = "piano 1 staff"
                                c'32
                                ]
                            }
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
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r32
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r32
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                            \change Staff = "piano 3 staff"
                            c'8
                            [
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r8
                            \change Staff = "piano 1 staff"
                            c'8
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                        \times 6/7
                        {
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                            \times 4/5
                            {
                                \change Staff = "piano 1 staff"
                                r16
                                [
                                \change Staff = "piano 3 staff"
                                \override Staff.Accidental.stencil = ##f
                                c'16
                                \revert Staff.Accidental.stencil
                                \change Staff = "piano 1 staff"
                                r16
                                \change Staff = "piano 1 staff"
                                \override Staff.Accidental.stencil = ##f
                                c'16
                                \change Staff = "piano 3 staff"
                                c'16
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                            \times 6/7
                            {
                                \change Staff = "piano 1 staff"
                                c'32
                                [
                                \revert Staff.Accidental.stencil
                                \change Staff = "piano 1 staff"
                                r32
                                \change Staff = "piano 3 staff"
                                \override Staff.Accidental.stencil = ##f
                                c'32
                                \change Staff = "piano 1 staff"
                                c'32
                                \change Staff = "piano 3 staff"
                                c'32
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
                                            #:dynamic "mf"
                                            #:hspace -0.2
                                            #:general-align Y -2 #:normal-text #:larger "”"
                                            )
                                        )
                                    )
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
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 3 0))
                        \times 7/8
                        {
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \staff-line-count 5
                            \ottava -1
                            \clef "bass"
                            e,,16.
                                _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                            [
                            - \tweak stencil #constante-hairpin
                            \<
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
                            a,,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            b,,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                            \override Staff.Accidental.stencil = ##f
                            ef,16.
                            - \flat-articulation
                            \ff
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            df,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            ef,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 15) (ly:make-duration 4 0))
                        \times 15/16
                        {
                            \override Staff.Accidental.stencil = ##f
                            cs,,32.
                            - \sharp-articulation
                            \mp
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            fs,,32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            g,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            e,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            b,,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            a,,,32.
                            - \natural-articulation
                            \f
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            b,,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            c,,32.
                            - \natural-articulation
                            \p
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            cs,,32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            e,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            fs,,32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            g,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 4 0))
                        \times 3/4
                        {
                            \override Staff.Accidental.stencil = ##f
                            a,32.
                            - \natural-articulation
                            \fff
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            df,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 2 0))
                        \times 7/8
                        {
                            \override Staff.Accidental.stencil = ##f
                            a,,,8.
                            - \natural-articulation
                            \pp
                            [
                            \<
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            cs,,8.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            ef,,8.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            c,,8.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            cs,,8.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            ef,,8.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            g,,8.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            af,,8.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 4 0))
                        \times 3/4
                        {
                            \override Staff.Accidental.stencil = ##f
                            a,32.
                            - \natural-articulation
                            \ffff
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            df,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,32.
                            - \flat-articulation
                            \!
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r64
                            ]
                        }
                        <<
                            \context Voice = "37 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 48) (ly:make-duration 6 0))
                                \times 48/37
                                {
                                    \interrupt
                                    \ottava 2
                                      %! +SCORE
                                %%% \override NoteHead.details.interrupt-color = \一
                                      %! +SCORE
                                %%% \override NoteHead.details.switch-color = \一
                                      %! +SCORE
                                %%% \override NoteHead.details.folow-color = \一
                                      %! +SCORE
                                %%% \override NoteHead.details.hocket-color = \一
                                      %! +SCORE
                                %%% \override Accidental.color = \一
                                      %! +SCORE
                                %%% \override Beam.color = \一
                                      %! +SCORE
                                %%% \override Dots.color = \一
                                      %! +SCORE
                                %%% \override Flag.color = \一
                                      %! +SCORE
                                %%% \override Glissando.color = \一
                                      %! +SCORE
                                %%% \override MultiMeasureRest.color = \一
                                      %! +SCORE
                                %%% \override NoteHead.color = \一
                                      %! +SCORE
                                %%% \override RepeatTie.color = \一
                                      %! +SCORE
                                %%% \override Rest.color = \一
                                      %! +SCORE
                                %%% \override Slur.color = \一
                                      %! +SCORE
                                %%% \override Stem.color = \一
                                      %! +SCORE
                                %%% \override StemTremolo.color = \一
                                      %! +SCORE
                                %%% \override Tie.color = \一
                                      %! +SCORE
                                %%% \override TupletBracket.color = \一
                                      %! +SCORE
                                %%% \override TupletNumber.color = \一
                                      %! +SCORE
                                %%% \override Dots.staff-position = #2
                                      %! +SCORE
                                %%% \override DynamicText.color = \一
                                    \clef "treble"
                                    \voiceOne
                                    g''''8
                                    ^ \mf
                                    \interrupt
                                    g''''8
                                    \interrupt
                                    g''''8
                                    \interrupt
                                    g''''8
                                    \interrupt
                                    g''''16
                                    ~
                                    g''''64
                                %     \revert Accidental.color
                                %     \revert Beam.color
                                %     \revert Dots.color
                                %     \revert Flag.color
                                %     \revert Glissando.color
                                %     \revert MultiMeasureRest.color
                                %     \revert NoteHead.color
                                %     \revert RepeatTie.color
                                %     \revert Rest.color
                                %     \revert Slur.color
                                %     \revert Stem.color
                                %     \revert StemTremolo.color
                                %     \revert Tie.color
                                %     \revert TupletBracket.color
                                %     \revert TupletNumber.color
                                %     \revert DynamicText.color
                                %     \revert Dots.staff-position
                                }
                            }
                            \context Voice = "35 voice"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 24) (ly:make-duration 5 0))
                                \times 24/35
                                {
                                    \interrupt
                                      %! +SCORE
                                %%% \override NoteHead.details.interrupt-color = \三
                                      %! +SCORE
                                %%% \override NoteHead.details.switch-color = \三
                                      %! +SCORE
                                %%% \override NoteHead.details.folow-color = \三
                                      %! +SCORE
                                %%% \override NoteHead.details.hocket-color = \三
                                      %! +SCORE
                                %%% \override Accidental.color = \三
                                      %! +SCORE
                                %%% \override Beam.color = \三
                                      %! +SCORE
                                %%% \override Dots.color = \三
                                      %! +SCORE
                                %%% \override Flag.color = \三
                                      %! +SCORE
                                %%% \override Glissando.color = \三
                                      %! +SCORE
                                %%% \override MultiMeasureRest.color = \三
                                      %! +SCORE
                                %%% \override NoteHead.color = \三
                                      %! +SCORE
                                %%% \override RepeatTie.color = \三
                                      %! +SCORE
                                %%% \override Rest.color = \三
                                      %! +SCORE
                                %%% \override Slur.color = \三
                                      %! +SCORE
                                %%% \override Stem.color = \三
                                      %! +SCORE
                                %%% \override StemTremolo.color = \三
                                      %! +SCORE
                                %%% \override Tie.color = \三
                                      %! +SCORE
                                %%% \override TupletBracket.color = \三
                                      %! +SCORE
                                %%% \override TupletNumber.color = \三
                                      %! +SCORE
                                %%% \override Dots.staff-position = #2
                                      %! +SCORE
                                %%% \override DynamicText.color = \三
                                    \voiceTwo
                                    g''''4
                                    _ \mp
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''16.
                                    \ottava 0
                                %     \revert Accidental.color
                                %     \revert Beam.color
                                %     \revert Dots.color
                                %     \revert Flag.color
                                %     \revert Glissando.color
                                %     \revert MultiMeasureRest.color
                                %     \revert NoteHead.color
                                %     \revert RepeatTie.color
                                %     \revert Rest.color
                                %     \revert Slur.color
                                %     \revert Stem.color
                                %     \revert StemTremolo.color
                                %     \revert Tie.color
                                %     \revert TupletBracket.color
                                %     \revert TupletNumber.color
                                %     \revert DynamicText.color
                                %     \revert Dots.staff-position
                                }
                            }
                        >>
                        \oneVoice
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
                        s1 * 11/4
                        s1 * 5/2
                        s1 * 2
                        s1 * 7/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 3/4
                        s1 * 5/8
                        s1 * 1/2
                        s1 * 3/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 7/8
                        s1 * 1/4
                        s1 * 15/16
                        s1 * 3/16
                        s1 * 7/4
                        s1 * 3/16
                        s1 * 3/4
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
                        \staff-line-count 1
                        \override Score.Stem.direction = #UP
                        \override Staff.TupletBracket.direction = #UP
                        \clef "percussion"
                        s1 * 11/4
                        s1 * 5/2
                        s1 * 2
                        s1 * 7/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 3/4
                        s1 * 5/8
                        s1 * 1/2
                        s1 * 3/8
                        \revert Score.Stem.direction
                        \override Staff.TupletBracket.direction = #UP
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        r16.
                        [
                        \staff-line-count 5
                        \ottava -1
                        \clef "bass"
                        \once \override Staff.DynamicLineSpanner.staff-padding = 14
                        af,,32
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                        - \tweak stencil #constante-hairpin
                        \<
                        r16.
                        e,,32
                        r16.
                        fs,,32
                        \ff
                        - \tweak stencil #constante-hairpin
                        \<
                        \sustainOn
                        r16.
                        g,,32
                        r16.
                        af,,32
                        \pp
                        - \tweak stencil #constante-hairpin
                        \<
                        r16.
                        e,,32
                        \sustainOff
                        r16.
                        fs,,32
                        ]
                        r16.
                        [
                        ef,32
                        \ff
                        - \tweak stencil #constante-hairpin
                        \<
                        r16.
                        df,32
                        ]
                        r32.
                        [
                        \override Staff.Accidental.stencil = ##f
                        cs,,64
                        - \sharp-articulation
                        \mf
                        - \tweak stencil #constante-hairpin
                        \<
                        \sustainOn
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,,64
                        - \flat-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        c,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        cs,,64
                        - \sharp-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,,64
                        - \flat-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        fs,,64
                        - \sharp-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        g,,64
                        - \natural-articulation
                        \ff
                        - \tweak stencil #constante-hairpin
                        \<
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        af,,64
                        - \flat-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        e,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        b,,,64
                        - \natural-articulation
                        \sustainOff
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        a,,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        b,,,64
                        - \natural-articulation
                        \mf
                        - \tweak stencil #constante-hairpin
                        \<
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,,64
                        - \flat-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        c,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        cs,,64
                        - \sharp-articulation
                        ]
                        \revert Staff.Accidental.stencil
                        r32.
                        [
                        \override Staff.Accidental.stencil = ##f
                        ef,64
                        - \flat-articulation
                        \fff
                        - \tweak stencil #constante-hairpin
                        \<
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        a,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,64
                        - \flat-articulation
                        ]
                        \revert Staff.Accidental.stencil
                        r8.
                        [
                        af,,16
                        r8.
                        e,,16
                        \ppp
                        \<
                        \sustainOn
                        r8.
                        fs,,16
                        r8.
                        g,,16
                        r8.
                        b,,,16
                        r8.
                        a,,,16
                        r8.
                        cs,,16
                        \sustainOff
                        ]
                        r32.
                        [
                        \override Staff.Accidental.stencil = ##f
                        df,64
                        - \flat-articulation
                        \ffff
                        - \tweak stencil #constante-hairpin
                        \<
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,64
                        - \flat-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        a,64
                        - \natural-articulation
                        \!
                        ]
                        \ottava 0
                        \revert Staff.Accidental.stencil
                        <<
                            \context Voice = "13 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 4 0))
                                \times 12/13
                                {
                                    \interrupt
                                    \ottava 2
                                      %! +SCORE
                                %%% \override NoteHead.details.interrupt-color = \二
                                      %! +SCORE
                                %%% \override NoteHead.details.switch-color = \二
                                      %! +SCORE
                                %%% \override NoteHead.details.folow-color = \二
                                      %! +SCORE
                                %%% \override NoteHead.details.hocket-color = \二
                                      %! +SCORE
                                %%% \override Accidental.color = \二
                                      %! +SCORE
                                %%% \override Beam.color = \二
                                      %! +SCORE
                                %%% \override Dots.color = \二
                                      %! +SCORE
                                %%% \override Flag.color = \二
                                      %! +SCORE
                                %%% \override Glissando.color = \二
                                      %! +SCORE
                                %%% \override MultiMeasureRest.color = \二
                                      %! +SCORE
                                %%% \override NoteHead.color = \二
                                      %! +SCORE
                                %%% \override RepeatTie.color = \二
                                      %! +SCORE
                                %%% \override Rest.color = \二
                                      %! +SCORE
                                %%% \override Slur.color = \二
                                      %! +SCORE
                                %%% \override Stem.color = \二
                                      %! +SCORE
                                %%% \override StemTremolo.color = \二
                                      %! +SCORE
                                %%% \override Tie.color = \二
                                      %! +SCORE
                                %%% \override TupletBracket.color = \二
                                      %! +SCORE
                                %%% \override TupletNumber.color = \二
                                      %! +SCORE
                                %%% \override Dots.staff-position = #2
                                      %! +SCORE
                                %%% \override DynamicText.color = \二
                                    \clef "treble"
                                    \voiceOne
                                    g''''4
                                    ^ \p
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''16
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    % \revert DynamicText.color
                                    % \revert Dots.staff-position
                                }
                            }
                            \context Voice = "4 voice"
                            {
                                \interrupt
                                  %! +SCORE
                            %%% \override NoteHead.details.interrupt-color = \四
                                  %! +SCORE
                            %%% \override NoteHead.details.switch-color = \四
                                  %! +SCORE
                            %%% \override NoteHead.details.folow-color = \四
                                  %! +SCORE
                            %%% \override NoteHead.details.hocket-color = \四
                                  %! +SCORE
                            %%% \override Accidental.color = \四
                                  %! +SCORE
                            %%% \override Beam.color = \四
                                  %! +SCORE
                            %%% \override Dots.color = \四
                                  %! +SCORE
                            %%% \override Flag.color = \四
                                  %! +SCORE
                            %%% \override Glissando.color = \四
                                  %! +SCORE
                            %%% \override MultiMeasureRest.color = \四
                                  %! +SCORE
                            %%% \override NoteHead.color = \四
                                  %! +SCORE
                            %%% \override RepeatTie.color = \四
                                  %! +SCORE
                            %%% \override Rest.color = \四
                                  %! +SCORE
                            %%% \override Slur.color = \四
                                  %! +SCORE
                            %%% \override Stem.color = \四
                                  %! +SCORE
                            %%% \override StemTremolo.color = \四
                                  %! +SCORE
                            %%% \override Tie.color = \四
                                  %! +SCORE
                            %%% \override TupletBracket.color = \四
                                  %! +SCORE
                            %%% \override TupletNumber.color = \四
                                  %! +SCORE
                            %%% \override Dots.staff-position = #2
                                  %! +SCORE
                            %%% \override DynamicText.color = \四
                                \voiceTwo
                                g''''4
                                _ \pp
                                \interrupt
                                g''''4
                                \interrupt
                                g''''4
                                \ottava 0
                            %     \revert Accidental.color
                            %     \revert Beam.color
                            %     \revert Dots.color
                            %     \revert Flag.color
                            %     \revert Glissando.color
                            %     \revert MultiMeasureRest.color
                            %     \revert NoteHead.color
                            %     \revert RepeatTie.color
                            %     \revert Rest.color
                            %     \revert Slur.color
                            %     \revert Stem.color
                            %     \revert StemTremolo.color
                            %     \revert Tie.color
                            %     \revert TupletBracket.color
                            %     \revert TupletNumber.color
                            %     \revert DynamicText.color
                            %     \revert Dots.staff-position
                            }
                        >>
                        \oneVoice
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
                        R1 * 11/4
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
                        R1 * 2
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
                        R1 * 3/4
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
                        R1 * 1/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/8
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
                        R1 * 7/8
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
                        R1 * 15/16
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
                        R1 * 7/4
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
                        R1 * 3/4
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
                    ef2.
                    ~
                    ef\breve
                    ~
                    ef2
                    ~
                    ef\breve
                    ~
                    ef1..
                    ~
                    \afterGrace
                    ef1.
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
                    R1 * 3/4
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
                    R1 * 1/2
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                    \stopStaff \startStaff
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
                    R1 * 1/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 15/16
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/16
                    \stopStaff \startStaff
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
                    R1 * 3/16
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    b2
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
                    b8..
                    \revert Dots.staff-position
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    ef32
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
