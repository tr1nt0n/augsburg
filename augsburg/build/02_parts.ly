    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 1/4
            s1 * 1/4
            \time 9/16
            s1 * 9/16
            ^ \markup {
              \raise #13.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4" 
              }
            }
            \time 5/8
            s1 * 5/8
            \time 3/8
            s1 * 3/8
            \time 8/16
            s1 * 1/2
            \time 7/16
            s1 * 7/16
            \time 3/16
            s1 * 3/16
            \time 5/16
            s1 * 5/16
            \time 4/16
            s1 * 1/4
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
            \time 13/8
            s1 * 13/8
            ^ \markup {
              \raise #5 \with-dimensions-from \null
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
            \time 11/8
            s1 * 11/8
            - \tweak padding #10
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #2 #"60"  ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"97" #"1" #"2"  [\abjad-metric-modulation-tuplet-lhs #3 #0 #16 #13 #2 #0 #'(1 . 1)] } }
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
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Auf den Saiten mit einem Plektrum }
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
                            \override Score.Stem.direction = #UP
                            \override Staff.TupletBracket.direction = #UP
                            \clef "percussion"
                            r32
                            [
                            \change Staff = "piano 3 staff"
                            \set suggestAccidentals = ##t
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            ]
                            \set suggestAccidentals = ##f
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                        \times 6/7
                        {
                            r32
                            [
                            \change Staff = "piano 3 staff"
                            \set suggestAccidentals = ##t
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
                            \set suggestAccidentals = ##f
                        }
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
                            r16
                            [
                            \change Staff = "piano 3 staff"
                            c'16
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
                            r32
                            [
                            \change Staff = "piano 3 staff"
                            \set suggestAccidentals = ##t
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
                            c'16
                            [
                            \set suggestAccidentals = ##f
                            r32
                            \change Staff = "piano 1 staff"
                            c'16
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                        \times 8/7
                        {
                            c'32
                            [
                            r64
                            \change Staff = "piano 3 staff"
                            \set suggestAccidentals = ##t
                            c'32
                            \set suggestAccidentals = ##f
                            r64
                            \change Staff = "piano 1 staff"
                            \set suggestAccidentals = ##t
                            c'64
                            ]
                            ~
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                        \times 2/3
                        {
                            c'16
                            [
                            \set suggestAccidentals = ##f
                            r16
                            \change Staff = "piano 3 staff"
                            c'16
                            ]
                            ~
                        }
                        c'2
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                        \times 8/7
                        {
                            r64
                            [
                            \change Staff = "piano 1 staff"
                            \set suggestAccidentals = ##t
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
                            ]
                            \set suggestAccidentals = ##f
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                        \times 2/3
                        {
                            r16
                            [
                            \change Staff = "piano 1 staff"
                            \set suggestAccidentals = ##t
                            c'16
                            \change Staff = "piano 3 staff"
                            c'16
                            ]
                            \set suggestAccidentals = ##f
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                        \times 6/5
                        {
                            r32
                            [
                            \change Staff = "piano 1 staff"
                            \set suggestAccidentals = ##t
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
                            c'32
                            [
                            \set suggestAccidentals = ##f
                            r64
                            \change Staff = "piano 3 staff"
                            \set suggestAccidentals = ##t
                            c'32
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                        \times 8/7
                        {
                            c'64
                            [
                            \set suggestAccidentals = ##f
                            r128
                            \change Staff = "piano 1 staff"
                            \set suggestAccidentals = ##t
                            c'64
                            \set suggestAccidentals = ##f
                            r128
                            \change Staff = "piano 3 staff"
                            \set suggestAccidentals = ##t
                            c'128
                            ]
                            ~
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            [
                            \set suggestAccidentals = ##f
                            r32
                            \change Staff = "piano 1 staff"
                            c'32
                            ]
                            ~
                        }
                        c'4
                        ~
                        c'16
                        ~
                        c'32..
                        r128
                        \change Staff = "piano 3 staff"
                        c'16
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                        \times 8/7
                        {
                            r128
                            \change Staff = "piano 1 staff"
                            c'32.
                            ~
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            [
                            r32
                            \change Staff = "piano 3 staff"
                            \set suggestAccidentals = ##t
                            c'32
                            ]
                            \set suggestAccidentals = ##f
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                        \times 2/3
                        {
                            r16
                            [
                            \change Staff = "piano 1 staff"
                            \set suggestAccidentals = ##t
                            c'16
                            \change Staff = "piano 3 staff"
                            c'16
                            ]
                            \set suggestAccidentals = ##f
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                        \times 4/5
                        {
                            r32
                            [
                            \change Staff = "piano 1 staff"
                            \set suggestAccidentals = ##t
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            \change Staff = "piano 1 staff"
                            c'32
                            \change Staff = "piano 3 staff"
                            c'32
                            ]
                            \set suggestAccidentals = ##f
                        }
                        r64
                        [
                        \change Staff = "piano 1 staff"
                        \set suggestAccidentals = ##t
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
                        \set suggestAccidentals = ##f
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 5 0))
                        \times 4/6
                        {
                            r32
                            [
                            \change Staff = "piano 3 staff"
                            \set suggestAccidentals = ##t
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
                            \set suggestAccidentals = ##f
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                        \times 6/7
                        {
                            r32
                            [
                            \change Staff = "piano 1 staff"
                            \set suggestAccidentals = ##t
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
                            \set suggestAccidentals = ##f
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 3 0))
                        \times 7/6
                        {
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                            \times 2/3
                            {
                                r4
                                \change Staff = "piano 1 staff"
                                c'4
                                \change Staff = "piano 3 staff"
                                c'4
                            }
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                            \times 4/5
                            {
                                r16
                                [
                                \change Staff = "piano 1 staff"
                                \set suggestAccidentals = ##t
                                c'16
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
                                \set suggestAccidentals = ##f
                            }
                        }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 13/8
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 11/8
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
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 13/8
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 11/8
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
                        <b''''! bs''''!>4
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
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
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 13/8
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 11/8
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
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
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
                    R1 * 5/16
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
                    R1 * 11/16
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
                    R1 * 13/8
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
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 11/8
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
