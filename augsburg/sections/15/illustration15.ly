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
            \once \override Score.BarLine.transparent = ##f
            \tweak text "×3" \startMeasureSpanner
            \bar ".|:"
            \time 9/8
            s1 * 9/8
            - \tweak padding #4
            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #3 { \center-column { \line { Adumbrationsstück: } \line { a way to draw water }  } }
            ^ \markup {
              \raise #16 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-mixed-number-markup #3 #0 #2 #"75" #"3" #"5"  
              }
            }
            \set Score.repeatCommands = #'((volta "1 - 3"))
            \time 5/4
            s1 * 5/4
            \bar ":|.|:"
            \once \override Score.BarLine.transparent = ##f
            \set Score.repeatCommands = #'((volta "4"))
            \time 7/8
            s1 * 7/8
            \set Score.repeatCommands = #'((volta #f))
            \time 3/4
            s1 * 3/4
            \bar ":|."
            \stopMeasureSpanner
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \tweak text "×4" \startMeasureSpanner
                        s1 * 9/8
                        s1 * 5/4
                        \stopMeasureSpanner
                        \tweak text "×3" \startMeasureSpanner
                        s1 * 7/8
                        s1 * 3/4
                        \stopMeasureSpanner
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 9/8
                        s1 * 5/4
                        s1 * 7/8
                        s1 * 3/4
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        s1 * 9/8
                        s1 * 5/4
                        s1 * 7/8
                        s1 * 3/4
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
                        R1 * 9/8
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
                        R1 * 7/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/4
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
                    R1 * 9/8
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
                    R1 * 7/8
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
