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
    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % OPENING:
            % COMMANDS:
            \time 13/8
            s1 * 13/8
            % OPENING:
            % COMMANDS:
            \time 2/8
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 3/2
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 11/8
            s1 * 11/8
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 13/8
            s1 * 13/8
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context StaffGroup = "Staff Group"
        <<
            % OPEN_BRACKETS:
            \context GrandStaff = "sub group 1"
            <<
                % OPEN_BRACKETS:
                \context Staff = "piano 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 1 voice"
                    {
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 4 0))
                        \times 3/4
                        {
                            c'32.
                            % AFTER:
                            % START_BEAM:
                            [
                            r64
                            c'32.
                            r64
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                c'128
                                c'128
                                c'128
                                c'128
                                c'128
                            % CLOSE_BRACKETS:
                            }
                            r64
                            c'32.
                            r64
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 13) (ly:make-duration 3 0))
                        \times 13/14
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                % AFTER:
                                % START_BEAM:
                                [
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                % AFTER:
                                % START_BEAM:
                                [
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 1 0))
                        \times 3/4
                        {
                            c'4.
                            r8
                            c'4.
                            r8
                            % AFTER:
                            % START_BEAM:
                            [
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                            \times 6/5
                            {
                                c'16
                                c'16
                                c'16
                                c'16
                                c'16
                            % CLOSE_BRACKETS:
                            }
                            r8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            c'4.
                            r8
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                        \times 5/6
                        {
                            c'32.
                            % AFTER:
                            % START_BEAM:
                            [
                            r64
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                c'128
                                c'128
                                c'128
                                c'128
                                c'128
                            % CLOSE_BRACKETS:
                            }
                            r64
                            c'32.
                            r64
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                c'128
                                c'128
                                c'128
                                c'128
                                c'128
                            % CLOSE_BRACKETS:
                            }
                            r64
                            c'32.
                            r64
                            c'32.
                            r64
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                % AFTER:
                                % START_BEAM:
                                [
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                % AFTER:
                                % START_BEAM:
                                [
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            c'8.
                            % AFTER:
                            % START_BEAM:
                            [
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                        \times 5/6
                        {
                            c'16.
                            % AFTER:
                            % START_BEAM:
                            [
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                % AFTER:
                                % START_BEAM:
                                [
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 11) (ly:make-duration 3 0))
                        \times 11/12
                        {
                            c'16.
                            % AFTER:
                            % START_BEAM:
                            [
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 2 0))
                        \times 7/8
                        {
                            c'8.
                            % AFTER:
                            % START_BEAM:
                            [
                            r16
                            c'8.
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 13) (ly:make-duration 3 0))
                        \times 13/14
                        {
                            c'16.
                            % AFTER:
                            % START_BEAM:
                            [
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            c'16.
                            r32
                            c'16.
                            r32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                c'64
                                c'64
                                c'64
                                c'64
                                c'64
                            % CLOSE_BRACKETS:
                            }
                            r32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 2 0))
                        \times 3/4
                        {
                            c'8.
                            % AFTER:
                            % START_BEAM:
                            [
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 2 0))
                        \times 3/4
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                % AFTER:
                                % START_BEAM:
                                [
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 2 0))
                        \times 3/4
                        {
                            c'8.
                            % AFTER:
                            % START_BEAM:
                            [
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                c'32
                                c'32
                                c'32
                                c'32
                                c'32
                            % CLOSE_BRACKETS:
                            }
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context timeSignatureStaff = "piano 2 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 3/16
                        s1 * 13/8
                        s1 * 1/4
                        s1 * 3/2
                        s1 * 5/16
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 5/8
                        s1 * 1/2
                        s1 * 11/8
                        s1 * 7/4
                        s1 * 13/8
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context leftHandStaff = "piano 3 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 3 voice"
                    {
                        r32.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'64
                        r32.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            c'128
                            c'128
                            c'128
                        % CLOSE_BRACKETS:
                        }
                        r32.
                        c'64
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r16.
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r4.
                        c'8
                        r4.
                        c'8
                        r4.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                        \times 2/3
                        {
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r32.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'64
                        r32.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            c'128
                            c'128
                            c'128
                        % CLOSE_BRACKETS:
                        }
                        r32.
                        c'64
                        r32.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            c'128
                            c'128
                            c'128
                        % CLOSE_BRACKETS:
                        }
                        r32.
                        c'64
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        r8.
                        c'16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r16.
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r16.
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r16.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        r8.
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        r16.
                        c'32
                        r16.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c'64
                            c'64
                            c'64
                        % CLOSE_BRACKETS:
                        }
                        r16.
                        c'32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'16
                        r8.
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'16
                        r8.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context lowPassStaff = "piano 4 staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "piano 4 voice"
                {
                    s1 * 3/16
                    s1 * 13/8
                    s1 * 1/4
                    s1 * 3/2
                    s1 * 5/16
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 5/8
                    s1 * 1/2
                    s1 * 11/8
                    s1 * 7/4
                    s1 * 13/8
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 3/4
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
