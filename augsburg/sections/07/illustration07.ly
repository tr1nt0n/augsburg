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
            \time 7/8
            s1 * 7/8
            ^ \markup {
              \raise #19 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #8 #11 #2 #0 #'(1 . 1)]
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 13/16
            s1 * 13/16
            ^ \markup {
              \raise #10.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" 
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 11/16
            s1 * 11/16
            ^ \markup {
              \raise #22 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #37 #32 #2 #0 #'(1 . 1)]
              }
            }
            \time 5/8
            s1 * 5/8
            ^ \markup {
              \raise #10.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" 
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #32 #37 #2 #0 #'(1 . 1)]
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 9/16
            s1 * 9/16
            ^ \markup {
              \raise #22 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #37 #32 #2 #0 #'(1 . 1)]
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 8/16
            s1 * 1/2
            ^ \markup {
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #32 #35 #2 #0 #'(1 . 1)]
              }
            }
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 7/16
            s1 * 7/16
            ^ \markup {
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #13 #16 #2 #0 #'(1 . 1)]
              }
            }
            \noBreak
            \time 3/8
            s1 * 3/8
            ^ \markup {
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #32 #35 #2 #0 #'(1 . 1)]
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 5/16
            s1 * 5/16
            ^ \markup {
              \raise #10.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" 
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 4/16
            s1 * 1/4
            ^ \markup {
              \raise #16 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
              }
            }
            \time 5/4
            s1 * 5/4
            ^ \markup {
              \raise #10.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" 
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
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
                        <<
                            \context Voice = "37 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 28) (ly:make-duration 5 0))
                                \times 28/37
                                {
                                    \staff-line-count 5
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
                                    \clef "treble"
                                    \voiceOne
                                    g''''4
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''4
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
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 28) (ly:make-duration 5 0))
                                \times 28/35
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
                                    g''''4
                                    \interrupt
                                    g''''16.
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
                        \revert Staff.Accidental.X-extent
                        <b! c'! f'! bf'!>8.
                        \p
                        [
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ds! a! bf!>8
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <c'! ds'! gs'! b'!>4
                        \mf
                        )
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ds! a! bf!>8
                        - \tenuto
                        \p
                        [
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! f'! bf'!>8
                        - \accent
                        - \accent
                        - \staccato
                        - \staccato
                        \!
                        )
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 11) (ly:make-duration 4 0))
                        \times 11/12
                        {
                            \override Staff.Stem.direction = #UP
                            \clef "bass"
                            ef32.
                            - \staccato
                            \mp
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            r64
                            \override Staff.Accidental.stencil = ##f
                            c32.
                            - \natural-articulation
                            - \staccato
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            cs,32.
                            - \sharp-articulation
                            - \staccato
                            \revert Staff.Accidental.stencil
                            r64
                            \ottava -1
                            \override Staff.Accidental.stencil = ##f
                            ef,,32.
                            - \flat-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            fs,,32.
                            - \sharp-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            g,,32.
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,,32.
                            - \flat-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            e,32.
                            - \natural-articulation
                            - \tenuto
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            b,32.
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            a,32.
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            b,32.
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r64
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                ef128
                                - \flat-articulation
                                - \staccato
                                \ff
                                - \tweak stencil #constante-hairpin
                                \<
                                c'128
                                - \marcato
                                - \natural-articulation
                                - \staccato
                                cs128
                                - \sharp-articulation
                                - \staccato
                                e128
                                - \natural-articulation
                                - \staccato
                                fs'128
                                - \marcato
                                - \sharp-articulation
                                - \staccato
                                \!
                                \revert Staff.Accidental.stencil
                                \revert Staff.Stem.direction
                            }
                            r64
                            ]
                        }
                        \revert Staff.Accidental.X-extent
                        \clef "treble"
                        <b! c'! f'! bf'!>8.
                        - \marcato
                        - \staccato
                        \p
                        [
                        - \tweak stencil #constante-hairpin
                        \<
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <gs''! c'''! f'''! a'''!>8.
                        :64
                        - \tenuto
                        \arpeggio
                        (
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! f'! bf'!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ds! a! bf!>8.
                        \!
                        )
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                        \times 9/10
                        {
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                \override Staff.Stem.direction = #UP
                                \clef "bass"
                                ef128
                                \ff
                                [
                                - \tweak stencil #constante-hairpin
                                \<
                                \override Staff.Accidental.stencil = ##f
                                c'128
                                - \marcato
                                - \natural-articulation
                                cs128
                                - \sharp-articulation
                                e128
                                - \natural-articulation
                                fs'128
                                - \marcato
                                - \sharp-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r64
                            \override Staff.Accidental.stencil = ##f
                            g32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            e,32.
                            - \marcato
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            fs,32.
                            - \sharp-articulation
                            \pp
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            g,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            b,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            a,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            cs32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                ef128
                                - \flat-articulation
                                - \staccato
                                \ff
                                - \tweak stencil #constante-hairpin
                                \<
                                c'128
                                - \marcato
                                - \natural-articulation
                                - \staccato
                                cs'128
                                - \sharp-articulation
                                - \staccato
                                ef'128
                                - \flat-articulation
                                - \staccato
                                g'128
                                - \marcato
                                - \natural-articulation
                                - \staccato
                                \!
                                \revert Staff.Accidental.stencil
                                \revert Staff.Stem.direction
                            }
                            r64
                            ]
                        }
                        <<
                            \context Voice = "37 voice temp 1"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 16) (ly:make-duration 5 0))
                                \times 16/21
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
                                    \clef "treble"
                                    \voiceOne
                                    a''''4
                                    ^ \ppp
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    a''''8
                                    ~
                                    a''''32
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 28) (ly:make-duration 6 0))
                                \times 28/23
                                {
                                    a''''32.
                                    \interrupt
                                    \override Staff.Accidental.stencil = ##f
                                    g''''8
                                    \revert Staff.Accidental.stencil
                                    \interrupt
                                    a''''8
                                    \interrupt
                                    g''''16
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 5 0))
                                \times 12/13
                                {
                                    g''''8
                                    \interrupt
                                    a''''4
                                    \interrupt
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
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 19 16) (ly:make-duration 5 0))
                                \times 16/19
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
                                    _ \pp
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    g''''16.
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 28) (ly:make-duration 6 0))
                                \times 28/21
                                {
                                    g''''16
                                    ~
                                    g''''64
                                    \interrupt
                                    \override Staff.Accidental.stencil = ##f
                                    g''''8
                                    \revert Staff.Accidental.stencil
                                    \interrupt
                                    g''''8
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 24) (ly:make-duration 6 0))
                                \times 24/23
                                {
                                    \interrupt
                                    g''''8
                                    \interrupt
                                    g''''8
                                    \interrupt
                                    g''''16..
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
                        \revert Staff.Accidental.X-extent
                        \clef "treble"
                        <ds! a! bf!>8
                        - \staccato
                        \p
                        [
                        (
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <c'! ds'! gs'! b'!>8.
                        - \tenuto
                        \mf
                        )
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        <<
                            \context Voice = "37 voice temp 2"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 6 0))
                                \times 16/13
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
                                    a''''8
                                    ^ \p
                                    \hocket
                                    a''''16
                                    ~
                                    a''''64
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
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) (ly:make-duration 5 0))
                                \times 8/11
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
                                    g''''4
                                    _ \mp
                                    \hocket
                                    g''''16.
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
                        r2
                        - \tweak color \四
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER EIN ) }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                        \times 6/5
                        {
                            \override Dots.staff-position = #2
                            \once \override Voice.Accidental.font-size = 5
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-down  }
                            ef'!4.
                            ^ \markup \center-align { \concat { -45 } }
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Voice.Accidental.font-size = 5
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            c'!4
                            ^ \markup \center-align { \concat { B+41 } }
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            ~
                        }
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                        c'4
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
                        \tweak Accidental.text \markup \concat { \one-thirty-seven-limit-quarter-tone-up \hspace #0.125 \abjad-flat  }
                        bf!4
                        ^ \markup \center-align { \concat { +49 } }
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-thirty-seven-limit-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            bf8
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
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-up \hspace #0.125 \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-down  }
                            af!4
                            ^ \markup \center-align { \concat { +15 } }
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            ~
                        }
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-up \hspace #0.125 \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-down  }
                        af4
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
                        \tweak Accidental.text \markup \concat { \one-thirty-seven-limit-quarter-tone-down \hspace #0.125 \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-down  }
                        ef!4
                        ^ \markup \center-align { \concat { D+4 } }
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-thirty-seven-limit-quarter-tone-down \hspace #0.125 \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-down  }
                            ef4
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
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            c'!2
                            ^ \markup \center-align { \concat { B+41 } }
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            ~
                        }
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                        c'4
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
                        f'!4.
                        ^ \markup \center-align { \concat { -45 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \revert Dots.staff-position
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'!8
                        ^ \markup \center-align { \concat { -15 } }
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 7/8
                        s1 * 13/16
                        s1 * 11/16
                        s1 * 5/8
                        s1 * 9/16
                        s1 * 1/2
                        s1 * 7/16
                        s1 * 3/8
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        <<
                            \context Voice = "13 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 14) (ly:make-duration 4 0))
                                \times 14/13
                                {
                                    \staff-line-count 5
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
                                    g''''16
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
                                \voiceTwo
                                g''''4
                                ^ \p
                                ^ \<
                                \interrupt
                                g''''4
                                \interrupt
                                g''''4
                                \sustainOn
                                \interrupt
                                ds''''8
                                ^ \f
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
                        >>
                        \oneVoice
                        \ottava -1
                        \clef "bass"
                        df,,8.
                        \fff
                        [
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        b,,,8
                        ]
                        f,,4
                        )
                        df,,8
                        - \tenuto
                        [
                        (
                        df,,8
                        - \accent
                        - \accent
                        - \staccato
                        - \staccato
                        \!
                        )
                        ]
                        \ottava 0
                        r32.
                        [
                        \ottava -1
                        \override Staff.Accidental.stencil = ##f
                        a,,,64
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                        - \natural-articulation
                        \sustainOn
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        b,,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        cs,,64
                        - \sharp-articulation
                        \sustainOff
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,,64
                        - \flat-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        c,64
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                        - \natural-articulation
                        \sustainOn
                        \revert Staff.Accidental.stencil
                        r32.
                        \sustainOff
                        \override Staff.Accidental.stencil = ##f
                        cs,,64
                        - \sharp-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,64
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                        - \flat-articulation
                        \sustainOn
                        \revert Staff.Accidental.stencil
                        r32.
                        \sustainOff
                        \override Staff.Accidental.stencil = ##f
                        fs,,64
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                        - \sharp-articulation
                        \sustainOn
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        g,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        af,64
                        - \flat-articulation
                        \ottava 0
                        \revert Staff.Accidental.stencil
                        r32.
                        \sustainOff
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            \override Staff.Accidental.stencil = ##f
                            e128
                            - \natural-articulation
                            - \staccato
                            \ff
                            - \tweak stencil #constante-hairpin
                            \<
                            b128
                            - \marcato
                            - \natural-articulation
                            - \staccato
                            a128
                            - \natural-articulation
                            - \staccato
                            \!
                            ]
                        }
                        \ottava -1
                        df,,8.
                        - \flat-articulation
                        - \marcato
                        - \staccato
                        \fff
                        [
                        \ottava 0
                        \revert Staff.Accidental.stencil
                        e,8.
                        :64
                        - \tenuto
                        \ff
                        (
                        \<
                        \ottava -1
                        df,,16
                        \fff
                        - \tweak stencil #constante-hairpin
                        \<
                        b,,,8.
                        \!
                        )
                        ]
                        \sustainOn
                        \ottava 0
                        r32.
                        [
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            \override Staff.Accidental.stencil = ##f
                            \clef "bass"
                            e,128
                            - \natural-articulation
                            \ff
                            - \tweak stencil #constante-hairpin
                            \<
                            b,128
                            - \marcato
                            - \natural-articulation
                            a,128
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r32.
                        \ottava -1
                        \override Staff.Accidental.stencil = ##f
                        b,,64
                        - \marcato
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,,64
                        - \flat-articulation
                        \sustainOff
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        c,,64
                        - \natural-articulation
                        \mp
                        - \tweak stencil #constante-hairpin
                        \<
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        cs,,64
                        - \sharp-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        e,,64
                        - \natural-articulation
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
                        \revert Staff.Accidental.stencil
                        r32.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            \override Staff.Accidental.stencil = ##f
                            af,,128
                            - \flat-articulation
                            - \staccato
                            \ff
                            - \tweak stencil #constante-hairpin
                            \<
                            e,128
                            - \marcato
                            - \natural-articulation
                            - \staccato
                            fs,128
                            - \sharp-articulation
                            - \staccato
                            \!
                            ]
                            \ottava 0
                            \revert Staff.Accidental.stencil
                        }
                        <<
                            \context Voice = "13 voice temp 1"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 15) (ly:make-duration 4 0))
                                \times 15/13
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
                                    ^ \p
                                    \interrupt
                                    e''''4
                                    \interrupt
                                    g''''4
                                    \interrupt
                                    e''''16
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                \times 6/7
                                {
                                    e''''8.
                                    \interrupt
                                    g''''4
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
                                ds''''4
                                _ \mp
                                \sustainOn
                                \interrupt
                                g''''4
                                \interrupt
                                ds''''4
                                \sustainOff
                                \interrupt
                                g''''8.
                                ~
                                g''''16
                                \sustainOn
                                \interrupt
                                ds''''4
                                \interrupt
                                g''''16
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
                        >>
                        \oneVoice
                        \ottava -1
                        \clef "bass"
                        b,,,8
                        - \staccato
                        \fff
                        [
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        f,,8.
                        - \tenuto
                        )
                        b,,,64
                        \override Staff.Accidental.stencil = ##f
                        df,,64
                        - \flat-articulation
                        b,,,32.
                        - \natural-articulation
                        f,,64
                        - \natural-articulation
                        ef,,64
                        - \flat-articulation
                        f,,32
                        - \natural-articulation
                        ef,,64
                        - \flat-articulation
                        e,64
                        - \natural-articulation
                        \ff
                        ef,,64
                        - \flat-articulation
                        \fff
                        e,32.
                        - \natural-articulation
                        \ff
                        df,,64
                        - \flat-articulation
                        \fff
                        ]
                        \ottava 0
                        \revert Staff.Accidental.stencil
                        <<
                            \context Voice = "RhythmMaker.Music temp"
                            {
                                \revert Staff.Accidental.X-extent
                                \voiceOne
                                \afterGrace
                                <g! c'! df'!>\breve...
                                \laissezVibrer
                                ^ \f
                                {
                                    \once \override Flag.stroke-style = #"grace" 
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \revert Staff.Accidental.X-extent
                                    \once \override NoteHead.transparent = ##t
                                    <g! c'! df'!>16
                                    \override Staff.Accidental.X-extent = ##f
                                }
                                \override Staff.Accidental.X-extent = ##f
                            }
                            \context Voice = "epsilon intermittent voice 2"
                            {
                                \voiceTwo
                                \afterGrace
                                ef,,\breve...
                                \fff
                                \laissezVibrer
                                \sustainOn
                                {
                                    \once \override Flag.stroke-style = #"grace" 
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    ef,,16
                                    \sustainOff
                                }
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
                        R1 * 11/16
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
                        R1 * 9/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/2
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 13) (ly:make-duration 4 0))
                        \times 13/14
                        {
                            \once \override Staff.TupletBracket.direction = #DOWN
                            \clef "bass"
                            ef32.
                            \pp
                            [
                            r64
                            \override Staff.Accidental.stencil = ##f
                            c'32.
                            - \marcato
                            - \natural-articulation
                            \fff
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r64
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                cs'128
                                - \sharp-articulation
                                - \staccato
                                ef'128
                                - \flat-articulation
                                - \staccato
                                g'128
                                - \marcato
                                - \natural-articulation
                                - \staccato
                                af'128
                                - \flat-articulation
                                - \staccato
                                e'128
                                - \natural-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r64
                            \override Staff.Accidental.stencil = ##f
                            fs32.
                            - \sharp-articulation
                            \p
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            a32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            b32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            a32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                ef128
                                - \flat-articulation
                                - \staccato
                                \fff
                                - \tweak stencil #constante-hairpin
                                \<
                                c128
                                - \natural-articulation
                                - \staccato
                                cs128
                                - \marcato
                                - \sharp-articulation
                                - \staccato
                                fs,128
                                - \sharp-articulation
                                - \staccato
                                g,128
                                - \natural-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,32.
                            - \flat-articulation
                            \mp
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            e,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            fs,32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            g,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                a,128
                                - \natural-articulation
                                - \staccato
                                \fff
                                - \tweak stencil #constante-hairpin
                                \<
                                b,128
                                - \marcato
                                - \natural-articulation
                                - \staccato
                                cs128
                                - \sharp-articulation
                                - \staccato
                                ef128
                                - \flat-articulation
                                - \staccato
                                c128
                                - \marcato
                                - \natural-articulation
                                - \staccato
                                \!
                                \revert Staff.Accidental.stencil
                            }
                            r64
                            ]
                        }
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
                        R1 * 5/4
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
                        R1 * 5/4
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
                    R1 * 7/8
                    \stopStaff \startStaff
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
                    R1 * 11/16
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
                    R1 * 9/16
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
                    R1 * 3/8
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
                    R1 * 5/4
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
                    R1 * 5/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
