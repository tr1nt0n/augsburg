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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "37 voice temp"
                            {
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceOne
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    g''''32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    g''''16.
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    g''''8.
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''8..
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    g''''32
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    g''''8
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''32
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "35 voice"
                            {
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceTwo
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    g''''32
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g''''16
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g''''8..
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    g''''8
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''8..
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % AFTER:
                        % COMMANDS:
                        \oneVoice
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "13 voice temp"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceOne
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    g''''8.
                                    g''''4
                                    g''''4
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    g''''8
                                    g''''4
                                    g''''4
                                    g''''8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    g''''16
                                    g''''4
                                    g''''4
                                    g''''4
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    g''''4
                                    g''''4
                                    g''''4
                                    g''''16
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "4 voice"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                g''''4
                                % AFTER:
                                % COMMANDS:
                                \ottava 0
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % AFTER:
                        % COMMANDS:
                        \oneVoice
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
