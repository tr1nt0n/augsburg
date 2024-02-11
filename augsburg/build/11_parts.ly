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
            \noBreak
            \time 11/8
            s1 * 11/8
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 5/4
            s1 * 5/4
            \noBreak
            \time 7/16
            s1 * 7/16
            \noBreak
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
                        \change Staff = "piano 3 staff"
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
                        \override Staff.Stem.direction = #UP
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        _ \ffff
                        - \tweak padding #1
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Prolatiert mit der Taktart nicht ) }
                        [
                        - \tweak stencil #constante-hairpin
                        _ \<
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \ottava 2
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>64
                        \ottava 0
                        \override Staff.Accidental.X-extent = ##f
                        \tweak edge-height #'(0.7 . 0)
                        \times 128/160
                        {
                            \change Staff = "piano 3 staff"
                            \revert Staff.Accidental.X-extent
                            <ds'''' e'''' g'''' a''''>128
                            \!
                            ]
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.X-extent = ##f
                            \revert NoteHead.details.interrupt-color
                            \revert  NoteHead.details.switch-color
                            \revert NoteHead.details.folow-color
                            \revert  NoteHead.details.hocket-color
                            \revert  Accidental.color
                            \revert  Beam.color
                            \revert  Dots.color
                            \revert  Flag.color
                            \revert  Glissando.color
                            \revert  MultiMeasureRest.color
                            \revert  NoteHead.color
                            \revert  RepeatTie.color
                            \revert  Rest.color
                            \revert  Slur.color
                            \revert  Stem.color
                            \revert  StemTremolo.color
                            \revert  Tie.color
                            \revert  TupletBracket.color 
                            \revert  TupletNumber.color
                            \revert  Dots.staff-position
                            \revert  Staff.Stem.direction
                        }
                        <<
                            \context Voice = "37 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 5/6
                                {
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
                                    \override DynamicText.color = \一
                                    \voiceOne
                                    a''''4
                                    ^ \mp
                                    - \tweak stencil #constante-hairpin
                                    ^ \<
                                    \hocket
                                    a''''8
                                    ~
                                }
                                a''''8
                                \!
                                \hocket
                                a''''4
                                ^ \pppp
                                - \tweak stencil #constante-hairpin
                                ^ \<
                                \hocket
                                a''''4
                                \hocket
                                a''''4
                                \hocket
                                a''''4
                                \hocket
                                a''''4
                                \!
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                \times 6/5
                                {
                                    \hocket
                                    a''''8
                                    ^ \mp
                                    - \tweak stencil #constante-hairpin
                                    ^ \<
                                    \hocket
                                    a''''8
                                    \hocket
                                    a''''16
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) (ly:make-duration 3 0))
                                \times 10/11
                                {
                                    a''''8
                                    \!
                                    \hocket
                                    a''''4
                                    ^ \pppp
                                    - \tweak stencil #constante-hairpin
                                    ^ \<
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \!
                                }
                                \hocket
                                g''''8..
                                ^ \mp
                                - \tweak stencil #constante-hairpin
                                ^ \<
                                \hocket
                                g''''8..
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
                            \context Voice = "35 voice"
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
                                \override DynamicText.color = \三
                                \voiceTwo
                                g'''4
                                _ \mf
                                - \tweak stencil #constante-hairpin
                                _ \<
                                \hocket
                                g'''16
                                ~
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 22) (ly:make-duration 4 0))
                                \times 22/21
                                {
                                    g'''8.
                                    \!
                                    \hocket
                                    g'''4
                                    _ \ppp
                                    - \tweak stencil #constante-hairpin
                                    _ \<
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g'''8
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 12) (ly:make-duration 5 0))
                                \times 12/9
                                {
                                    g'''16
                                    \!
                                    \hocket
                                    g'''8
                                    _ \mf
                                    - \tweak stencil #constante-hairpin
                                    _ \<
                                    \hocket
                                    g'''16.
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) (ly:make-duration 4 0))
                                \times 20/21
                                {
                                    g'''16
                                    \!
                                    \hocket
                                    \override Staff.Accidental.stencil = ##f
                                    g'''4
                                    _ \ppp
                                    - \tweak stencil #constante-hairpin
                                    _ \<
                                    \revert Staff.Accidental.stencil
                                    \hocket
                                    g''''4
                                    \hocket
                                    g'''4
                                    \hocket
                                    g''''4
                                    \hocket
                                    g'''4
                                    \!
                                }
                                \hocket
                                g''''4
                                _ \mf
                                - \tweak stencil #constante-hairpin
                                _ \<
                                \hocket
                                g'''8.
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
                        >>
                        \oneVoice
                        <<
                            \context Voice = "37 voice temp 1"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    \interrupt
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
                                    \interrupt
                                    g''''4
                                    _ \fff
                                    \interrupt
                                    g''''4
                                    _ \p
                                    \interrupt
                                    g''''4
                                    _ \fff
                                    \interrupt
                                    g''''8
                                    _ \p
                                    ~
                                    g''''32
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
                                    \override DynamicText.color = \三
                                    \voiceTwo
                                    g''''4
                                    _ \fff
                                    \interrupt
                                    g''''4
                                    _ \p
                                    \interrupt
                                    g''''4
                                    _ \f
                                    \interrupt
                                    g''''4
                                    _ \p
                                    \interrupt
                                    g''''16.
                                    _ \fff
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
                                _ #(make-dynamic-script (markup #:whiteout #:italic "s. p"))
                            \sustainOff
                            \<
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
                        \ottava 2
                        s1 * 37/20
                        \ottava 0
                        <<
                            \context Voice = "13 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) (ly:make-duration 5 0))
                                \times 10/11
                                {
                                    \hocket
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
                                    e''4
                                    ^ \f
                                    - \tweak stencil #constante-hairpin
                                    ^ \<
                                    \hocket
                                    e''16.
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 33 22) (ly:make-duration 4 0))
                                \times 22/33
                                {
                                    e''4
                                    ~
                                    e''16
                                    \!
                                    \hocket
                                    \override Staff.Accidental.stencil = ##f
                                    e''2
                                    ^ \pp
                                    - \tweak stencil #constante-hairpin
                                    ^ \<
                                    \revert Staff.Accidental.stencil
                                    \hocket
                                    e''2
                                    \hocket
                                    e''2
                                    \hocket
                                    e''4
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 24) (ly:make-duration 6 0))
                                \times 24/21
                                {
                                    \ottava 1
                                    e''16
                                    \!
                                    \hocket
                                    e'''8
                                    ^ \f
                                    - \tweak stencil #constante-hairpin
                                    ^ \<
                                    \hocket
                                    e''8
                                    \hocket
                                    e''''64
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 33 40) (ly:make-duration 5 0))
                                \times 40/33
                                {
                                    e''''8..
                                    \!
                                    \hocket
                                    e'''4
                                    ^ \pp
                                    - \tweak stencil #constante-hairpin
                                    ^ \<
                                    \hocket
                                    e''''4
                                    \hocket
                                    e''4
                                    \hocket
                                    e'''16
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 19 14) (ly:make-duration 5 0))
                                \times 14/19
                                {
                                    e'''8.
                                    \!
                                    \hocket
                                    e''''4
                                    ^ \f
                                    - \tweak stencil #constante-hairpin
                                    ^ \<
                                    \hocket
                                    e''''8
                                    ~
                                    e''''32
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
                            \context Voice = "4 voice"
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
                                \override DynamicText.color = \四
                                \voiceTwo
                                ds'4
                                _ \ff
                                - \tweak stencil #constante-hairpin
                                _ \<
                                \sustainOn
                                ~
                                ds'16
                                ~
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 51 44) (ly:make-duration 5 0))
                                \times 44/51
                                {
                                    ds'16.
                                    \!
                                    \hocket
                                    ds'4
                                    _ \p
                                    - \tweak stencil #constante-hairpin
                                    _ \<
                                    \hocket
                                    ds'4
                                    \hocket
                                    ds'4
                                    \hocket
                                    ds'4
                                    \hocket
                                    ds''4
                                    \hocket
                                    ds'4
                                    \!
                                }
                                \hocket
                                ds''4.
                                _ \ff
                                - \tweak stencil #constante-hairpin
                                _ \<
                                ~
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 47 40) (ly:make-duration 5 0))
                                \times 40/47
                                {
                                    ds''32
                                    \!
                                    \hocket
                                    \override Staff.Accidental.stencil = ##f
                                    ds''4
                                    _ \p
                                    - \tweak stencil #constante-hairpin
                                    _ \<
                                    \revert Staff.Accidental.stencil
                                    \hocket
                                    ds'''4
                                    \hocket
                                    ds'''4
                                    \hocket
                                    ds''''4
                                    \hocket
                                    ds'''4
                                    \hocket
                                    ds''8.
                                    ~
                                }
                                ds''8
                                \!
                                \hocket
                                ds'''4
                                _ \ff
                                - \tweak stencil #constante-hairpin
                                _ \<
                                ~
                                ds'''16
                                \!
                                \sustainOff
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
                                    \override DynamicText.color = \二
                                    \voiceOne
                                    g''''4
                                    \interrupt
                                    g''''4
                                    ^ \fff
                                    \interrupt
                                    g''''4
                                    ^ \mp
                                    \interrupt
                                    g''''16
                                    ^ \pp
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
                                \override DynamicText.color = \四
                                \voiceTwo
                                g''''4
                                ^ \fff
                                \interrupt
                                g''''4
                                ^ \pp
                                \interrupt
                                g''''4
                                ^ \ff
                                \interrupt
                                g''''4
                                ^ \mf
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
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \override Dots.staff-position = #2
                        a'8
                        - \abjad-zero-padding-glissando
                        \glissando
                        ef\breve
                        - \abjad-zero-padding-glissando
                        \glissando
                        a8
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        a'16
                    }
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
