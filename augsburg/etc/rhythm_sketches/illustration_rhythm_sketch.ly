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
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 37/32
            s1 * 37/32
            % OPENING:
            % COMMANDS:
            \time 13/16
            s1 * 13/16
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
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \ppp
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        \<
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                        e''32
                        g32
                            % CLOSING:
                            % COMMANDS:
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sfffffz mp"))
                        % AFTER:
                        % STOP_BEAM:
                        ]
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
                        s1 * 1
                        s1 * 7/8
                        s1 * 37/32
                        s1 * 13/16
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
                        e''32
                        % AFTER:
                        % ARTICULATIONS:
                        ^ \ppp
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        ^ \<
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                        b''32
                        e''32
                            % CLOSING:
                            % COMMANDS:
                            ^ #(make-dynamic-script (markup #:whiteout #:italic "sfffffz mp"))
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
                    s1 * 1
                    s1 * 7/8
                    s1 * 37/32
                    s1 * 13/16
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
