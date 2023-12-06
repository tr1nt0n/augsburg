  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/augsburg/augsburg/build/augsburg-stylesheet.ily"
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
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 11/8
            s1 * 11/8
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
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
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                        \times 8/7
                        {
                            r16
                            c'16
                            r16
                            % OPENING:
                            % COMMANDS:
                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            % OPENING:
                            % COMMANDS:
                            \revert Staff.Stem.stemlet-length
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            r16
                            c'16
                        % CLOSE_BRACKETS:
                        }
                        c'4
                        r4
                        c'4
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 11) (ly:make-duration 3 0))
                        \times 11/10
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                            \times 6/7
                            {
                                r4.
                                c'8
                                r8
                                c'8
                                r8
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                            \times 2/3
                            {
                                r2
                                c'4
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 2 3) (ly:make-duration 3 0))
                        \times 3/2
                        {
                            r8
                            c'32
                            r16
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        c'16
                        r8
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                        \times 6/7
                        {
                            r16
                            c'16
                            r4
                            c'16
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 1 0))
                        \times 2/3
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 3 0))
                            \times 8/7
                            {
                                r8
                                % OPENING:
                                % COMMANDS:
                                \override Staff.Stem.stemlet-length = 0.75
                                c'8
                                % AFTER:
                                % START_BEAM:
                                [
                                % OPENING:
                                % COMMANDS:
                                \revert Staff.Stem.stemlet-length
                                c'8
                                % AFTER:
                                % STOP_BEAM:
                                ]
                                r8
                                % OPENING:
                                % COMMANDS:
                                \override Staff.Stem.stemlet-length = 0.75
                                c'8
                                % AFTER:
                                % START_BEAM:
                                [
                                c'8
                                % OPENING:
                                % COMMANDS:
                                \revert Staff.Stem.stemlet-length
                                c'8
                                % AFTER:
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                            \times 2/3
                            {
                                c'4
                                r4
                                c'4
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                        \times 8/7
                        {
                            r16.
                            c'32
                            r16
                            c'32
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 5 0))
                        \times 8/9
                        {
                            r16
                            c'32
                            r16.
                            c'32
                            r16
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                        \times 6/5
                        {
                            c'16
                            r8.
                            c'16
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
                        s1 * 5/4
                        s1 * 11/8
                        s1 * 9/8
                        s1 * 1
                        s1 * 7/8
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "piano 3 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 3 voice"
                    {
                        s1 * 5/4
                        s1 * 11/8
                        s1 * 9/8
                        s1 * 1
                        s1 * 7/8
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
                    s1 * 5/4
                    s1 * 11/8
                    s1 * 9/8
                    s1 * 1
                    s1 * 7/8
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
