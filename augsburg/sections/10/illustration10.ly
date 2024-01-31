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
            \time 4/16
            s1 * 1/4
            ^ \markup {
              \raise #16 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"77" #"1" #"4"  
              }
            }
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/16
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/16
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \extremely-long-fermata
            \once \override Score.BarLine.transparent = ##f
            \time 3/1
            s1 * 3
            ^ \markup {
              \raise #13.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
              }
            }
            \time 5/2
            s1 * 5/2
            \time 7/4
            s1 * 7/4
            \time 4/4
            s1 * 1
            \time 5/8
            s1 * 5/8
            \time 4/8
            s1 * 1/2
            \time 7/16
            s1 * 7/16
            \time 6/16
            s1 * 3/8
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
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 6 0))
                                \times 16/13
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
                                    \clef "treble"
                                    \voiceOne
                                    g''''8
                                    \fff
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \interrupt
                                    g''''16
                                    ~
                                    g''''64
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
                            \context Voice = "35 voice"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) (ly:make-duration 5 0))
                                \times 8/11
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
                        r32.
                        [
                        \override Staff.Accidental.stencil = ##f
                        \override Staff.Stem.direction = #UP
                        \once \override Staff.DynamicLineSpanner.staff-padding = 12
                        af'64
                        - \flat-articulation
                        ^ \mp
                        ^ \<
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        e'64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        fs64
                        - \sharp-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \once \override TupletBracket.direction = #UP
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            g,128
                            - \natural-articulation
                            ^ \f
                            (
                            af,128
                            - \flat-articulation
                            e,128
                            - \natural-articulation
                            )
                            ]
                            \change Staff = "piano 1 staff"
                            \revert Staff.Accidental.stencil
                            \revert Staff.Stem.direction
                        }
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>16
                        - \marcato
                        - \tenuto
                        \ff
                        [
                        \>
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>16
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>16
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>16
                        - \marcato
                        - \tenuto
                        \mf
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 0 0))
                        \times 3/4
                        {
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \ottava -1
                            \clef "bass"
                            fs,2.
                            \pp
                            - \tweak stencil #constante-hairpin
                            \<
                            r4
                            g,,2.
                            r4
                            af,,2.
                            r4
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                            \times 6/5
                            {
                                e,8
                                - \staccato
                                \ff
                                [
                                fs,,8
                                - \staccato
                                a,,8
                                - \staccato
                                b,,8
                                - \staccato
                                cs,8
                                - \staccato
                                ]
                            }
                            r4
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 1 0))
                        \times 5/6
                        {
                            ef,4.
                            \p
                            - \tweak stencil #constante-hairpin
                            \<
                            r8
                            c,,4.
                            r8
                            cs,4.
                            r8
                            ef,,4.
                            r8
                            [
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                            \times 6/5
                            {
                                fs,,16
                                - \staccato
                                \ff
                                g,,16
                                - \staccato
                                af,,16
                                - \staccato
                                e,16
                                - \staccato
                                b,16
                                - \staccato
                            }
                            r8
                            ]
                            a,4.
                            \mp
                            - \tweak stencil #constante-hairpin
                            \<
                            r8
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 2 0))
                        \times 7/8
                        {
                            b,,8.
                            [
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
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                cs,,32
                                - \sharp-articulation
                                - \staccato
                                \ff
                                e,,32
                                - \natural-articulation
                                - \staccato
                                fs,,32
                                - \sharp-articulation
                                - \staccato
                                g,,32
                                - \natural-articulation
                                - \staccato
                                af,,32
                                - \flat-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \override Staff.Accidental.stencil = ##f
                            e,8.
                            - \accent
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                fs,,32
                                - \sharp-articulation
                                - \staccato
                                g,,32
                                - \natural-articulation
                                - \staccato
                                b,,32
                                - \natural-articulation
                                - \staccato
                                a,,32
                                - \natural-articulation
                                - \staccato
                                cs,32
                                - \sharp-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \override Staff.Accidental.stencil = ##f
                            ef,8.
                            - \accent
                            - \flat-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            c,8.
                            - \accent
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r16
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            \override Staff.Accidental.stencil = ##f
                            cs,,8.
                            - \sharp-articulation
                            \mp
                            [
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                ef,,32
                                - \flat-articulation
                                - \staccato
                                \<
                                g,,32
                                - \natural-articulation
                                - \staccato
                                af,,32
                                - \flat-articulation
                                - \staccato
                                e,32
                                - \natural-articulation
                                - \staccato
                                fs,32
                                - \sharp-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \override Staff.Accidental.stencil = ##f
                            a,8.
                            - \accent
                            - \natural-articulation
                            - \tenuto
                            \ff
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            b,8.
                            - \accent
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                a,,32
                                - \natural-articulation
                                - \staccato
                                \pp
                                \<
                                ef,,32
                                - \flat-articulation
                                - \staccato
                                c,,32
                                - \natural-articulation
                                - \staccato
                                cs,,32
                                - \sharp-articulation
                                - \staccato
                                fs,,32
                                - \sharp-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                        \times 5/6
                        {
                            \override Staff.Accidental.stencil = ##f
                            g,,16.
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r32
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                af,,64
                                - \flat-articulation
                                - \staccato
                                e,,64
                                - \natural-articulation
                                - \staccato
                                fs,,64
                                - \sharp-articulation
                                - \staccato
                                g,,64
                                - \natural-articulation
                                - \staccato
                                af,,64
                                - \flat-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
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
                            \override Staff.Accidental.stencil = ##f
                            cs,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                ef,64
                                - \flat-articulation
                                - \staccato
                                c,64
                                - \natural-articulation
                                - \staccato
                                cs,,64
                                - \sharp-articulation
                                - \staccato
                                ef,,64
                                - \flat-articulation
                                - \staccato
                                af,,64
                                - \flat-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r32
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            \override Staff.Accidental.stencil = ##f
                            e,16.
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            fs,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            g,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            b,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                a,,,64
                                - \natural-articulation
                                - \staccato
                                b,,,64
                                - \natural-articulation
                                - \staccato
                                ef,,64
                                - \flat-articulation
                                - \staccato
                                c,,64
                                - \natural-articulation
                                - \staccato
                                cs,,64
                                - \sharp-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 4 0))
                        \times 7/8
                        {
                            \override Staff.Accidental.stencil = ##f
                            g,,32.
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            e,32.
                            - \natural-articulation
                            \ff
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
                            b,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                        \times 6/7
                        {
                            \override Staff.Accidental.stencil = ##f
                            a,,32.
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            cs,,32.
                            - \sharp-articulation
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
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            c,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            cs,,32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,,32.
                            - \flat-articulation
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r64
                            ]
                        }
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 3
                        s1 * 5/2
                        s1 * 7/4
                        s1 * 1
                        s1 * 5/8
                        s1 * 1/2
                        s1 * 7/16
                        s1 * 3/8
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
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 5 0))
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
                                    g''''8
                                    \interrupt
                                    g''''8
                                    \interrupt
                                    g''''8
                                    \ottava 0
                                    \interrupt
                                    \clef "bass"
                                    r32
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
                        >>
                        \oneVoice
                        \revert Staff.Accidental.X-extent
                        \revert Staff.Accidental.stencil
                        <cs,, gs,, cs,>16
                        - \marcato
                        - \tenuto
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, gs,, cs,>16
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, gs,, cs,>16
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, gs,, cs,>16
                        - \marcato
                        - \tenuto
                        ]
                        \sustainOn
                        \override Staff.Accidental.X-extent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \sustainOff
                        \stopStaff \startStaff
                        r2.
                        \ottava -1
                        \clef "bass"
                        fs,4
                        \mf
                        r2.
                        g,,4
                        \f
                        - \tweak stencil #constante-hairpin
                        \<
                        r2.
                        af,4
                        r4.
                        e,8
                        r4.
                        fs,,8
                        r4.
                        a,,,8
                        \ff
                        r4.
                        b,,8
                        r4.
                        cs,8
                        \>
                        r8.
                        [
                        ef,16
                        r8.
                        c,16
                        r8.
                        cs,,16
                        \mp
                        r8.
                        ef,,16
                        r8.
                        fs,,16
                        r8.
                        g,,16
                        r8.
                        af,,16
                        \f
                        ]
                        - \tweak stencil #constante-hairpin
                        \<
                        r8.
                        [
                        e,16
                        r8.
                        b,,,16
                        - \accent
                        - \tenuto
                        \ff
                        - \tweak stencil #constante-hairpin
                        \<
                        r8.
                        a,,,16
                        - \accent
                        - \tenuto
                        r8.
                        b,,,16
                        \mp
                        ]
                        \<
                        r16.
                        [
                        ef,,32
                        r16.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c,64
                            - \staccato
                            \override Staff.Accidental.stencil = ##f
                            cs,,64
                            - \sharp-articulation
                            - \staccato
                            e,,64
                            - \natural-articulation
                            - \staccato
                            \revert Staff.Accidental.stencil
                        }
                        r16.
                        fs,,32
                        r16.
                        g,,32
                        r16.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            af,,64
                            - \staccato
                            \override Staff.Accidental.stencil = ##f
                            e,64
                            - \natural-articulation
                            - \staccato
                            fs,64
                            - \sharp-articulation
                            - \staccato
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        r16.
                        [
                        g,,32
                        r16.
                        b,,32
                        r16.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            a,,64
                            - \staccato
                            \override Staff.Accidental.stencil = ##f
                            cs,64
                            - \sharp-articulation
                            - \staccato
                            ef,64
                            - \flat-articulation
                            - \staccato
                            \revert Staff.Accidental.stencil
                        }
                        r16.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c,,64
                            - \staccato
                            \override Staff.Accidental.stencil = ##f
                            cs,64
                            - \sharp-articulation
                            - \staccato
                            ef,64
                            - \flat-articulation
                            - \staccato
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        r32.
                        [
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            \override Staff.Accidental.stencil = ##f
                            g,128
                            - \natural-articulation
                            - \staccato
                            \ff
                            \sustainOn
                            af,128
                            - \flat-articulation
                            - \staccato
                            e,128
                            - \natural-articulation
                            - \staccato
                            \revert Staff.Accidental.stencil
                        }
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        fs,,64
                        - \sharp-articulation
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
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        a,,,64
                        - \natural-articulation
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
                        ]
                        \revert Staff.Accidental.stencil
                        r32.
                        [
                        \override Staff.Accidental.stencil = ##f
                        cs,,64
                        - \sharp-articulation
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
                        fs,,64
                        - \sharp-articulation
                        \sustainOff
                        ]
                        \ottava 0
                        \revert Staff.Accidental.stencil
                    }
                }
                \context thirdStaff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            \once \override Staff.TupletBracket.direction = #DOWN
                            \ottava -1
                            \clef "bass"
                            \once \override Staff.DynamicLineSpanner.staff-padding = 12
                            a,16.
                            \p
                            [
                            \<
                            r32
                            \override Staff.Accidental.stencil = ##f
                            ef,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            cs,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                \once \override TupletBracket.bracket-visibility = ##f
                                \override Staff.Accidental.stencil = ##f
                                af,,64
                                - \flat-articulation
                                (
                                e,,64
                                - \natural-articulation
                                fs,,64
                                - \sharp-articulation
                                g,,64
                                - \natural-articulation
                                af,,64
                                - \flat-articulation
                                \f
                                )
                                \ottava 0
                                \revert Staff.Accidental.stencil
                            }
                            r32
                            ]
                        }
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
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
                        R1 * 3
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
                        R1 * 7/4
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
                        R1 * 7/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/8
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
                    R1 * 1/4
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    \afterGrace
                    a'4
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        ef16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    ef\breve.
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
                    ef\breve
                    ~
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
                        a'16
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
                    R1 * 1
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
                    R1 * 7/16
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
