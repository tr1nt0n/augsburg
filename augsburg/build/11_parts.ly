    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #5.5 \with-dimensions-from \null
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
            - \tweak padding #12
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \fontsize #7 { Rall. } \hspace #0.5 }
            \startTextSpan
            \time 4/4
            s1 * 1
            \time 3/2
            s1 * 3/2
            \stopTextSpan
            ^ \markup {
              \raise #7 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-markup #2 #0 #2 #"72" 
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            #(ly:expect-warning "strange time signature found")
            \time 37/12
            s1 * 37/12
            ^ \markup {
              \raise #10.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            #(ly:expect-warning "strange time signature found")
            \time 37/20
            s1 * 37/20
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 5/16
            s1 * 5/16
            ^ \markup {
              \raise #20 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #32 #35 #2 #0 #'(1 . 1)]
              }
            }
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 11/8
            s1 * 11/8
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 5/4
            s1 * 5/4
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
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
                                - \markup \fontsize #4 { \override #'(font-name . "Bodoni72 Book Italic") { leggierissimo } }
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
                        \staff-line-count 1
                        \override Staff.Stem.direction = #UP
                        \clef "percussion"
                        c'2
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tastaturabdeckung }
                        \revert Staff.Stem.direction
                        r1
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'\longa
                                            ~
                                            c'2
                                            ~
                                            c'8
                                        }
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override Staff.Stem.direction = #UP
                            \once \override Beam.grow-direction = #right
                            c'32 * 127/32
                            [
                            c'32 * 127/32
                            c'32 * 63/16
                            c'32 * 31/8
                            c'32 * 61/16
                            c'32 * 15/4
                            c'32 * 117/32
                            c'32 * 57/16
                            c'32 * 55/16
                            c'32 * 107/32
                            c'32 * 103/32
                            c'32 * 99/32
                            c'32 * 95/32
                            c'32 * 23/8
                            c'32 * 11/4
                            c'32 * 85/32
                            c'32 * 41/16
                            c'32 * 79/32
                            c'32 * 19/8
                            c'32 * 73/32
                            c'32 * 71/32
                            c'32 * 17/8
                            c'32 * 33/16
                            c'32 * 2
                            c'32 * 31/16
                            \override Staff.Accidental.stencil = ##f
                            c'32 * 61/32
                            c'32 * 59/32
                            c'32 * 29/16
                            c'32 * 57/32
                            c'32 * 7/4
                            c'32 * 55/32
                            c'32 * 27/16
                            c'32 * 53/32
                            c'32 * 13/8
                            c'32 * 13/8
                            c'32 * 51/32
                            c'32 * 51/32
                            c'32 * 51/32
                            c'32 * 151/96
                            ]
                            \revert Staff.Accidental.stencil
                            \revert Staff.Stem.direction
                        }
                        \revert TupletNumber.text
                        \staff-line-count 5
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
                        \clef "treble"
                        <ds'''' e'''' g'''' a''''>32
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
                        \clef "treble"
                        <ds'''' e'''' g'''' a''''>32
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 1 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \override Staff.Accidental.X-extent = ##f
                        \change Staff = "piano 3 staff"
                        \revert Staff.Accidental.X-extent
                        <ds'''' e'''' g'''' a''''>32
                        \ottava 0
                        \override Staff.Accidental.X-extent = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        \tweak edge-height #'(0.7 . 0)
                        \times 128/160
                        {
                            \change Staff = "piano 1 staff"
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
                                    - \tweak padding #15.5
                                    - \tweak whiteout-style #'outline- \tweak layer 2
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \一 { \musicglyph #"m" \musicglyph #"p" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \hocket
                                    a''''8
                                    ~
                                }
                                a''''8
                                \stopTextSpan
                                \hocket
                                a''''4
                                - \tweak padding #15.5
                                - \abjad-solid-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \一 { \musicglyph #"p" \musicglyph #"p" \musicglyph #"p" \musicglyph #"p" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -2
                                \startTextSpan
                                \hocket
                                a''''4
                                \hocket
                                a''''4
                                \hocket
                                a''''4
                                \hocket
                                a''''4
                                \stopTextSpan
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                \times 6/5
                                {
                                    \hocket
                                    a''''8
                                    - \tweak padding #15.5
                                    - \tweak whiteout-style #'outline- \tweak layer 2
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \一 { \musicglyph #"m" \musicglyph #"p" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
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
                                    \stopTextSpan
                                    \hocket
                                    a''''4
                                    - \tweak padding #15.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \一 { \musicglyph #"p" \musicglyph #"p" \musicglyph #"p" \musicglyph #"p" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \hocket
                                    a''''4
                                    \stopTextSpan
                                }
                                \hocket
                                g''''8..
                                - \tweak padding #15.5
                                - \tweak whiteout-style #'outline- \tweak layer 2
                                - \abjad-solid-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \一 { \musicglyph #"m" \musicglyph #"p" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -2
                                \startTextSpan
                                \hocket
                                g''''8..
                                \stopTextSpan
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
                        s1 * 3/2
                        s1 * 37/12
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
                        \crossStaff {
                        \clef "bass"
                        d,2
                        - \accent
                        ^ \f
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Tasten ) }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            d,2
                            - \tenuto
                            ^ \mf
                            d,16
                            - \accent
                            ^ \ff
                            \sustainOn
                            r2
                            r8.
                        }
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'\longa
                                            ~
                                            c'2
                                            ~
                                            c'8
                                        }
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \once \override Staff.TupletBracket.stencil = ##f
                            \once \override Staff.TupletNumber.stencil = ##f
                            \once \override Staff.Beam.stencil = ##f
                            \once \override Beam.grow-direction = #right
                            d,32 * 127/32
                            \ppppp
                            [
                            \<
                            d,32 * 127/32
                            d,32 * 63/16
                            d,32 * 31/8
                            d,32 * 61/16
                            d,32 * 15/4
                            d,32 * 117/32
                            d,32 * 57/16
                            d,32 * 55/16
                            d,32 * 107/32
                            d,32 * 103/32
                            d,32 * 99/32
                            d,32 * 95/32
                            d,32 * 23/8
                            d,32 * 11/4
                            d,32 * 85/32
                            d,32 * 41/16
                            d,32 * 79/32
                            d,32 * 19/8
                            d,32 * 73/32
                            d,32 * 71/32
                            d,32 * 17/8
                            d,32 * 33/16
                            d,32 * 2
                            d,32 * 31/16
                            \override Staff.Accidental.stencil = ##f
                            d,32 * 61/32
                            d,32 * 59/32
                            d,32 * 29/16
                            d,32 * 57/32
                            d,32 * 7/4
                            d,32 * 55/32
                            d,32 * 27/16
                            d,32 * 53/32
                            d,32 * 13/8
                            d,32 * 13/8
                            d,32 * 51/32
                            d,32 * 51/32
                            d,32 * 51/32
                            d,32 * 151/96
                            \!
                            \sustainOff
                            ]
                            }
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        \ottava 2
                        \clef "treble"
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
                                    - \tweak padding #12
                                    - \tweak whiteout-style #'outline- \tweak layer 2
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \二 { \musicglyph #"f" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
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
                                    \stopTextSpan
                                    \hocket
                                    \override Staff.Accidental.stencil = ##f
                                    e''2
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \二 { \musicglyph #"p" \musicglyph #"p" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
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
                                    \stopTextSpan
                                    \hocket
                                    e'''8
                                    - \tweak padding #12
                                    - \tweak whiteout-style #'outline- \tweak layer 2
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \二 { \musicglyph #"f" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
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
                                    \stopTextSpan
                                    \hocket
                                    e'''4
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \二 { \musicglyph #"p" \musicglyph #"p" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
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
                                    \stopTextSpan
                                    \hocket
                                    e''''4
                                    - \tweak padding #12
                                    - \tweak whiteout-style #'outline- \tweak layer 2
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \二 { \musicglyph #"f" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    \hocket
                                    e''''8
                                    ~
                                    e''''32
                                    \stopTextSpan
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
                        R1 * 3/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 37/12
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
                    \override Dots.staff-position = #2
                    a'1.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        ef\longa
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
                        ef2
                        ~
                        \afterGrace
                        ef8
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
                    }
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
