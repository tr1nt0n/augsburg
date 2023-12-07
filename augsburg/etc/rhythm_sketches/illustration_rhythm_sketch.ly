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
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
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
                        % BEFORE:
                        % OPEN_BRACKETS:
                        \grace {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Flag.stroke-style = #"grace" 
                            c'16
                        % CLOSE_BRACKETS:
                        }
                        % OPENING:
                        \afterGrace
                        c'4
                        % AFTER:
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % OPEN_BRACKETS:
                        \grace {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
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
                        % OPENING:
                        \afterGrace
                        c'2
                        % AFTER:
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % OPEN_BRACKETS:
                        \grace {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        c'4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % OPENING:
                        \afterGrace
                        c'2
                        % AFTER:
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Flag.stroke-style = #"grace" 
                            c'16
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % OPEN_BRACKETS:
                        \grace {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        c'2
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % OPENING:
                        \afterGrace
                        c'8
                        % AFTER:
                        % START_BEAM:
                          %! rmakers.RewriteMeterCommand.__call__
                        [
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % OPEN_BRACKETS:
                        \grace {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Flag.stroke-style = #"grace" 
                            c'16
                        % CLOSE_BRACKETS:
                        }
                        c'8
                        % AFTER:
                        % STOP_BEAM:
                          %! rmakers.RewriteMeterCommand.__call__
                        ]
                        % SPANNER_STARTS:
                        ~
                        % OPENING:
                        \afterGrace
                        c'8
                        % AFTER:
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % OPEN_BRACKETS:
                        \grace {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPENING:
                        \afterGrace
                        c'4.
                        % AFTER:
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % OPEN_BRACKETS:
                        \grace {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        c'4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'2
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % OPENING:
                        \afterGrace
                        c'8
                        % AFTER:
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % OPEN_BRACKETS:
                        \grace {
                            % BEFORE:
                            % COMMANDS:
                            \my-hack-slash
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPENING:
                        \afterGrace
                        c'4.
                        % AFTER:
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Flag.stroke-style = #"grace" 
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
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
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
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
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
                    s1 * 1
                    s1 * 1
                    s1 * 1
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
