  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/augsburg/augsburg/build/section-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            #(ly:expect-warning "strange time signature found")
            \time 37/12
            s1 * 37/12
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
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 11/16
            s1 * 11/16
            - \tweak padding #23
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { (  \abjad-metronome-mark-markup #2 #0 #2 #"72" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4"  } }
            \startTextSpan
            \time 7/8
            s1 * 7/8
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 13/16
            s1 * 13/16
            \stopTextSpan
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 7/16
            s1 * 7/16
            \time 3/8
            s1 * 3/8
            \time 6/4
            s1 * 3/2
            ^ \markup {
              \raise #11 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #13 #16 #2 #0 #'(1 . 1)]
              }
            }
            \time 7/4
            s1 * 7/4
            ^ \markup {
              \raise #14.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4" 
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #16 #13 #2 #0 #'(1 . 1)]
              }
            }
            \time 5/4
            s1 * 5/4
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
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \staff-line-count 1
                            \override Staff.Stem.direction = #UP
                            \once \override Beam.grow-direction = #right
                            \clef "percussion"
                            c'32 * 127/32
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tastaturabdeckung }
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
                            \revert Staff.Stem.direction
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.direction = #UP
                        c'2
                        \revert Staff.Accidental.stencil
                        \revert Staff.Stem.direction
                        r1
                        \staff-line-count 1
                        \change Staff = "piano 3 staff"
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        \override Score.Stem.direction = #UP
                        \override Staff.TupletBracket.direction = #UP
                        \clef "percussion"
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
                        [
                        \<
                        ~
                        c'64
                        \change Staff = "piano 1 staff"
                        r64
                        - \tweak padding #12
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Auf dem Deckel } \line { mit Styroporkugeln }  } }
                        \change Staff = "piano 1 staff"
                        \override Staff.Accidental.stencil = ##f
                        c'32
                        ]
                        ~
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                        \times 2/3
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'16
                            [
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r32
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16.
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
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
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
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                        \times 6/7
                        {
                            c'8
                            [
                            ~
                            c'32
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r32
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            ]
                            ~
                        }
                        c'2..
                        ~
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        c'8
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                        \times 8/7
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'16
                            [
                            ~
                            c'64
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r64
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'64
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "f"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ]
                            ~
                        }
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        c'8
                        ~
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        c'8
                        \revert Staff.Accidental.stencil
                        \change Staff = "piano 1 staff"
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        r64
                        [
                        \change Staff = "piano 1 staff"
                        \override Staff.Accidental.stencil = ##f
                        c'16..
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
                        ]
                        ~
                        c'8
                        [
                        \revert Staff.Accidental.stencil
                        \change Staff = "piano 1 staff"
                        r32
                        \change Staff = "piano 3 staff"
                        \override Staff.Accidental.stencil = ##f
                        c'32
                        ]
                        ~
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                        \times 4/5
                        {
                            c'16
                            [
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r16
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'8.
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "fp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ]
                            \<
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
                            c'8
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r32
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'32
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
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ]
                            - \tweak stencil #constante-hairpin
                            \<
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
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            ]
                            ~
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 6 0))
                        \times 8/9
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
                            c'16
                            \revert Staff.Accidental.stencil
                            \change Staff = "piano 1 staff"
                            r64
                            \change Staff = "piano 1 staff"
                            \override Staff.Accidental.stencil = ##f
                            c'64
                            \!
                            ]
                            \revert Score.Stem.direction
                            \override Staff.TupletBracket.direction = #UP
                            \change Staff = "piano 1 staff"
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 2 0))
                        \times 6/7
                        {
                            \staff-line-count 5
                            \ottava -1
                            \clef "bass"
                            fs,8.
                            - \sharp-articulation
                            \p
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            g,,8.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            b,,8.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            a,8.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            cs,8.
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
                            \!
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r16
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 3 0))
                        \times 4/6
                        {
                            \staff-line-count 1
                            \clef "percussion"
                            r4
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Auf dem Deckel } \line { mit Styroporkugeln }  } }
                            c'8
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
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            r8
                            c'8
                            r8
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                        \times 8/7
                        {
                            r16
                            [
                            c'16
                            r16
                            c'16
                            r8
                            c'16
                            ]
                        }
                        r2
                        c'4
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 2 0))
                        \times 5/7
                        {
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 2 0))
                            \times 4/6
                            {
                                r4
                                c'4
                                c'4
                                r4
                                c'4
                                r4
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                            \times 6/7
                            {
                                c'8
                                [
                                r8
                                c'8
                                r8
                                c'8
                                r8
                                c'8
                                \!
                                ]
                            }
                        }
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 37/12
                        s1 * 3/2
                        s1 * 11/16
                        s1 * 7/8
                        s1 * 13/16
                        s1 * 7/16
                        s1 * 3/8
                        s1 * 3/2
                        s1 * 7/4
                        s1 * 5/4
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
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \staff-line-count 5
                            \crossStaff {
                            \once \override Staff.TupletBracket.stencil = ##f
                            \once \override Staff.TupletNumber.stencil = ##f
                            \once \override Staff.Beam.stencil = ##f
                            \override Staff.TupletBracket.direction = #DOWN
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
                        \revert Staff.Accidental.stencil
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
                        \staff-line-count 1
                        \override Score.Stem.direction = #UP
                        \override Staff.TupletBracket.direction = #UP
                        \clef "percussion"
                        s1 * 11/16
                        s1 * 7/8
                        s1 * 13/16
                        s1 * 7/16
                        s1 * 3/8
                        \revert Score.Stem.direction
                        \override Staff.TupletBracket.direction = #DOWN
                        r8.
                        - \tweak padding #6
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                        [
                        \staff-line-count 5
                        \once \override Staff.DynamicLineSpanner.staff-padding = 10
                        \ottava -1
                        \clef "bass"
                        ef,,16
                        \ff
                        - \tweak stencil #constante-hairpin
                        \<
                        \sustainOn
                        r8.
                        c,16
                        \sustainOff
                        r8.
                        cs,,16
                        r8.
                        ef,16
                        r8.
                        g,,16
                        r8.
                        af,,16
                        \!
                        ]
                        \ottava 0
                        \staff-line-count 1
                        \clef "percussion"
                        c'16
                        - \accent
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
                        [
                        r16
                        ]
                        c'4.
                        - \accent
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            r8
                            c'4
                            \<
                            r8
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "f"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            c'4
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
                            \<
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                        \times 6/7
                        {
                            c'4
                            r8
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
                            c'4
                            \>
                            r8
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
                            [
                            c'8
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
                            \>
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 2 0))
                        \times 5/6
                        {
                            c'8
                            [
                            r8
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
                            ]
                            c'4.
                            \<
                            r8
                            c'4
                            ~
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 3 0))
                            \times 4/6
                            {
                                c'2
                                r8
                                [
                                c'8
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
                            }
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
                        R1 * 37/12
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
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 13/16
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
                        R1 * 3/8
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
                        R1 * 7/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/4
                        \stopStaff \startStaff
                    }
                }
            >>
            \context lowPassStaff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \override Dots.staff-position = #2
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
                        ef8
                    }
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    \afterGrace
                    g'1.
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        ef16
                    }
                    \override Dots.staff-position = #2
                    \revert Staff.Accidental.X-extent
                    ef2
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
                    ef8.
                    ~
                    \afterGrace
                    ef2..
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
                    \override Staff.Accidental.X-extent = ##f
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 13/16
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
                    R1 * 3/8
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
                    R1 * 7/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
