    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #10.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
              }
            }
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            - \tweak padding #18
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #2 #"60"  ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #2 #"33"  [\abjad-metric-modulation-tuplet-lhs #1 #0 #32 #35 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            \time 4/4
            s1 * 1
            #(ly:expect-warning "strange time signature found")
            \time 37/20
            s1 * 37/20
            \stopTextSpan
            \time 5/16
            s1 * 5/16
            \time 11/8
            s1 * 11/8
            \time 3/8
            s1 * 3/8
            \time 5/4
            s1 * 5/4
            \time 7/16
            s1 * 7/16
            \time 4/4
            s1 * 1
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \tweak padding #6
                        \times 4/5
                        {
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \tweak direction #DOWN
                            \times 6/5
                            {
                                \once \override Staff.Clef.X-extent = ##f
                                \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                \staff-line-count 5
                                \ottava -1
                                \override Staff.Accidental.stencil = ##f
                                \clef "bass"
                                e,,32
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                - \markup \fontsize #2 { \override #'(font-name . "Bodoni72 Book Italic") { leggierissimo } }
                                [
                                _ (
                                b,,32
                                - \accent
                                - \natural-articulation
                                a,,32
                                - \accent
                                - \natural-articulation
                                cs,32
                                - \sharp-articulation
                                ef,32
                                - \flat-articulation
                                \ottava 0
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \tweak direction #DOWN
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                c32
                                - \natural-articulation
                                \>
                                cs32
                                - \sharp-articulation
                                ef32
                                - \flat-articulation
                                e32
                                - \natural-articulation
                                fs32
                                - \sharp-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \tweak direction #DOWN
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                g32
                                - \natural-articulation
                                af32
                                - \flat-articulation
                                a32
                                - \accent
                                - \natural-articulation
                                b32
                                - \accent
                                - \natural-articulation
                                a32
                                - \accent
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \tweak direction #DOWN
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                \clef "treble"
                                ef'32
                                - \flat-articulation
                                c''32
                                - \natural-articulation
                                cs''32
                                - \sharp-articulation
                                af''32
                                - \flat-articulation
                                e''32
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \tweak direction #DOWN
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                fs''32
                                - \sharp-articulation
                                g''32
                                - \natural-articulation
                                af''32
                                - \flat-articulation
                                e''32
                                - \natural-articulation
                                fs''32
                                - \sharp-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 2 0))
                        \tweak padding #6
                        \times 3/4
                        {
                            \override Staff.Accidental.stencil = ##f
                            a''8.
                            - \accent
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \tweak direction #DOWN
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                b''32
                                - \accent
                                - \natural-articulation
                                cs'''32
                                - \sharp-articulation
                                ef'''32
                                - \flat-articulation
                                \ppp
                                \<
                                c'''32
                                - \natural-articulation
                                cs'''32
                                - \sharp-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \override Staff.Accidental.stencil = ##f
                            ef'''8.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \tweak direction #DOWN
                            \times 6/5
                            {
                                \ottava 2
                                \override Staff.Accidental.stencil = ##f
                                fs'''32
                                - \sharp-articulation
                                g'''32
                                - \natural-articulation
                                af'''32
                                - \flat-articulation
                                \f
                                e''''32
                                - \natural-articulation
                                b''''32
                                - \accent
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 2 0))
                        \tweak padding #6
                        \times 3/4
                        {
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \tweak direction #DOWN
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                a''''32
                                - \accent
                                - \natural-articulation
                                [
                                b''''32
                                - \accent
                                - \natural-articulation
                                ef''''32
                                - \flat-articulation
                                c'''''32
                                - \natural-articulation
                                cs''''32
                                - \sharp-articulation
                                - \tweak circled-tip ##t
                                \>
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \override Staff.Accidental.stencil = ##f
                            e''''8.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            fs''''8.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            g''''8.
                            - \natural-articulation
                            \!
                            )
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r16
                            ]
                        }
                        s1 * 1
                        s1 * 37/20
                        s1 * 5/16
                        s1 * 11/8
                        s1 * 3/8
                        s1 * 5/4
                        s1 * 7/16
                        s1 * 1
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 1
                        s1 * 37/20
                        s1 * 5/16
                        s1 * 11/8
                        s1 * 3/8
                        s1 * 5/4
                        s1 * 7/16
                        s1 * 1
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        r8.
                        [
                        \sustainOn
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            \ottava -1
                            \override Staff.TupletBracket.direction = #UP
                            \override Staff.TupletBracket.stencil = ##f
                            \clef "bass"
                            a,,,32
                            - \accent
                            \sustainOff
                            _ (
                            \override Staff.Accidental.stencil = ##f
                            cs,,32
                            - \sharp-articulation
                            ef,,32
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c,,32
                            \override Staff.Accidental.stencil = ##f
                            cs,,32
                            - \sharp-articulation
                            ef,,32
                            - \flat-articulation
                            \ottava 0
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            e,32
                            \override Staff.Accidental.stencil = ##f
                            fs,32
                            - \sharp-articulation
                            g,32
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            af,32
                            \override Staff.Accidental.stencil = ##f
                            a,32
                            - \accent
                            - \natural-articulation
                            b,32
                            - \accent
                            - \natural-articulation
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        [
                        a16
                        - \accent
                        \sustainOn
                        \override Staff.TupletBracket.direction = #DOWN
                        r8.
                        \sustainOff
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            \clef "treble"
                            ef'32
                            \override Staff.Accidental.stencil = ##f
                            c''32
                            - \natural-articulation
                            cs''32
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \sustainOn
                        af''16
                        ]
                        r8.
                        [
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            e''32
                                ^ #(make-dynamic-script (markup #:whiteout #:italic "s. p"))
                            \sustainOff
                            ^ \<
                            \override Staff.Accidental.stencil = ##f
                            fs''32
                            - \sharp-articulation
                            g''32
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        af''16
                        r8.
                        \ottava 1
                        e'''16
                        - \accent
                        ]
                        r8.
                        [
                        fs'''16
                        - \accent
                        r8.
                        a'''16
                        - \accent
                        - \accent
                        r8.
                        b'''16
                        - \accent
                        - \accent
                        r8.
                        cs''''16
                        - \accent
                        \!
                        )
                        ]
                        \ottava 0
                        \revert Staff.TupletBracket.stencil
                        s1 * 37/20
                        s1 * 5/16
                        s1 * 11/8
                        s1 * 3/8
                        s1 * 5/4
                        s1 * 7/16
                        s1 * 1
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
                        R1 * 3/4
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
                        R1 * 37/20
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
                        R1 * 11/8
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
                        R1 * 5/4
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
                        R1 * 1
                        \stopStaff \startStaff
                    }
                }
            >>
            \context lowPassStaff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \override Dots.staff-position = #2
                    a'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    d'2..
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
                    d'2
                    ~
                    d'8
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    ef8
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
                    ef2
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    a4.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \revert Dots.staff-position
                    a'8
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 37/20
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
                    R1 * 11/8
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
                    R1 * 5/4
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
                    R1 * 1
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
