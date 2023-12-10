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
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "37 voice temp"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 2 0))
                                \times 5/4
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    \ottava 2
                                    \override NoteHead.details.interrupt-color = darkmagenta
                                    \override NoteHead.details.switch-color = darkmagenta
                                    \override NoteHead.details.folow-color = darkmagenta
                                    \override NoteHead.details.hocket-color = darkmagenta
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceOne
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                % CLOSE_BRACKETS:
                                }
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''8
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 3 0))
                                \times 9/8
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) (ly:make-duration 3 0))
                                \times 8/11
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 14) (ly:make-duration 4 0))
                                \times 14/15
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8.
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "35 voice"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 10) (ly:make-duration 3 0))
                                \times 10/15
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \override NoteHead.details.interrupt-color = magenta
                                    \override NoteHead.details.switch-color = magenta
                                    \override NoteHead.details.folow-color = magenta
                                    \override NoteHead.details.hocket-color = magenta
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceTwo
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 22) (ly:make-duration 4 0))
                                \times 22/21
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''16
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 18) (ly:make-duration 4 0))
                                \times 18/15
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 16) (ly:make-duration 4 0))
                                \times 16/21
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''16
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                % CLOSE_BRACKETS:
                                }
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''8
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "13 voice temp"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) (ly:make-duration 4 0))
                                \times 20/21
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    \override NoteHead.details.interrupt-color = cyan
                                    \override NoteHead.details.switch-color = cyan
                                    \override NoteHead.details.folow-color = cyan
                                    \override NoteHead.details.hocket-color = cyan
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceOne
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 33 22) (ly:make-duration 4 0))
                                \times 22/33
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 18) (ly:make-duration 4 0))
                                \times 18/21
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 33 32) (ly:make-duration 5 0))
                                \times 32/33
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''32
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 19 14) (ly:make-duration 4 0))
                                \times 14/19
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4..
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "4 voice"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 40) (ly:make-duration 5 0))
                                \times 40/35
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \override NoteHead.details.interrupt-color = darkcyan
                                    \override NoteHead.details.switch-color = darkcyan
                                    \override NoteHead.details.folow-color = darkcyan
                                    \override NoteHead.details.hocket-color = darkcyan
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceTwo
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 51 44) (ly:make-duration 5 0))
                                \times 44/51
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''32
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 31 36) (ly:make-duration 5 0))
                                \times 36/31
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''16
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 39 32) (ly:make-duration 5 0))
                                \times 32/39
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''16.
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 14) (ly:make-duration 4 0))
                                \times 14/21
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''16
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
