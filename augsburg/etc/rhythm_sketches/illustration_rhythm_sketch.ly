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
            \time 7/8
            s1 * 7/8
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
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 13/8
            s1 * 13/8
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
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
            \time 9/4
            s1 * 9/4
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 3/2
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 7/16
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
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
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                        \times 4/5
                        {
                            r8
                            % AFTER:
                            % MARKUP:
                            ^ \markup \fontsize #6 { Rhythm a | Stage 1 }
                            % START_BEAM:
                            [
                            c'16
                            c'16
                            r16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                        \times 6/7
                        {
                            r16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            r16
                            c'16
                            r8
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                            \times 4/5
                            {
                                r8
                                % AFTER:
                                % START_BEAM:
                                [
                                c'8
                                c'8
                                r8
                                c'8
                                % AFTER:
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                            \times 8/7
                            {
                                c'32
                                % AFTER:
                                % START_BEAM:
                                [
                                r32
                                c'32
                                r32
                                c'32
                                r32
                                c'32
                                % AFTER:
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                        \times 4/5
                        {
                            r16
                            % AFTER:
                            % MARKUP:
                            ^ \markup \fontsize #6 { Rhythm a | Stage 2 }
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
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                        \times 8/7
                        {
                            r32
                            % AFTER:
                            % START_BEAM:
                            [
                            c'32
                            c'32
                            c'32
                            c'32
                            c'32
                            c'32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                            r8
                            % AFTER:
                            % START_BEAM:
                            [
                            c'8
                            c'8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                        \times 4/5
                        {
                            r16
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
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 3 0))
                        \times 3/4
                        {
                            r16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
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
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 2 0))
                        \times 7/8
                        {
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                            \times 4/5
                            {
                                r4
                                c'4
                                c'4
                                c'4
                                c'4
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 3 0))
                            \times 8/7
                            {
                                r8
                                % AFTER:
                                % START_BEAM:
                                [
                                c'8
                                c'8
                                c'8
                                c'8
                                c'8
                                c'8
                                % AFTER:
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        c'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \fontsize #6 { Rhythm a | Stage 3 }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                        \times 8/7
                        {
                            r32
                            % AFTER:
                            % START_BEAM:
                            [
                            c'8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            r32
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        c'4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                        \times 4/5
                        {
                            c'8.
                            % AFTER:
                            % START_BEAM:
                            [
                            r16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            ~
                        % CLOSE_BRACKETS:
                        }
                        c'8
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        ~
                        c'32
                        r32
                        c'16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % SPANNER_STARTS:
                        ~
                        c'4
                        r16
                        c'16
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'2..
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''2.
                        % AFTER:
                        % MARKUP:
                        ^ \markup \fontsize #6 { Rhythm b | Stage 1 }
                        % SPANNER_STARTS:
                        ~
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''16
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''8.
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''16.
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''32
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''32
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 1/4
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 1/4
                                c''16 * 1/4
                                c''16 * 1/4
                                c''16 * 1/4
                                c''16 * 1/4
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                c''16.
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                \afterGrace
                                c''4.
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 3/2
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 3/2
                                c''16 * 3/2
                                c''16 * 3/2
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''4.
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \fontsize #6 { Rhythm b | Stage 2 }
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 8/3
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 8/3
                                c''16 * 8/3
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Flag.stroke-style = #"grace" 
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''2
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 4/5
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 4/5
                                c''16 * 4/5
                                c''16 * 4/5
                                c''16 * 4/5
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                c''4
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                \afterGrace
                                c''2
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 2
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 2
                                c''16 * 2
                                c''16 * 2
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''2
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Flag.stroke-style = #"grace" 
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \fontsize #6 { Rhythm b | Stage 3 }
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 4/3
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 4/3
                                c''16 * 4/3
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Flag.stroke-style = #"grace" 
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16
                                c''16
                                c''16
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 4/5
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 4/5
                                c''16 * 4/5
                                c''16 * 4/5
                                c''16 * 4/5
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Stem.direction = #down
                        c''4
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 2/3
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 2/3
                                c''16 * 2/3
                                c''16 * 2/3
                                c''16 * 2/3
                                c''16 * 2/3
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16 * 4/3
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16 * 4/3
                                c''16 * 4/3
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Flag.stroke-style = #"grace" 
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                % BEFORE:
                                % COMMANDS:
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                c''16
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c''16
                                c''16
                                c''16
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                % BEFORE:
                                % OPEN_BRACKETS:
                                \grace {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \afterGrace
                                c''4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
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
                                    \override DynamicText.color = \一
                                    \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceOne
                                    g''''4
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \fontsize #6 { Rhythm g | Stage 1 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
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
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 40) (ly:make-duration 5 0))
                                \times 40/37
                                {
                                    g''''16.
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
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
                                    % BEFORE:
                                    % COMMANDS:
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
                                    \override DynamicText.color = \三
                                    \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceTwo
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 40) (ly:make-duration 5 0))
                                \times 40/35
                                {
                                    g''''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    g''''32
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''8.
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
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
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % AFTER:
                        % COMMANDS:
                        \oneVoice
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "37 voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
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
                                \override DynamicText.color = \一
                                \override Dots.staff-position = #2
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                g''''8..
                                % AFTER:
                                % MARKUP:
                                ^ \markup \fontsize #6 { Rhythm g | Stage 2 }
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''8..
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''8..
                                % BEFORE:
                                % COMMANDS:
                                \hocket
                                g''''8..
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 13) (ly:make-duration 3 0))
                                \times 13/11
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
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''8
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
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
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "35 voice"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 14) (ly:make-duration 4 0))
                                \times 14/15
                                {
                                    % BEFORE:
                                    % COMMANDS:
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
                                    \override DynamicText.color = \三
                                    \override Dots.staff-position = #2
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
                                    g''''8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 26) (ly:make-duration 4 0))
                                \times 26/21
                                {
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
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
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
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % AFTER:
                        % COMMANDS:
                        \oneVoice
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 2 0))
                        \times 7/8
                        {
                            c'8.
                            % AFTER:
                            % MARKUP:
                            ^ \markup \fontsize #6 { Rhythm d | Stage 1 }
                            % START_BEAM:
                            [
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            c'8.
                            r16
                            c'8.
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
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 13) (ly:make-duration 3 0))
                        \times 13/14
                        {
                            c'16.
                            % AFTER:
                            % MARKUP:
                            ^ \markup \fontsize #6 { Rhythm d | Stage 2 }
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
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                            \times 6/5
                            {
                                c'16
                                % AFTER:
                                % MARKUP:
                                ^ \markup \fontsize #6 { Rhythm d | Stage 3 }
                                % START_BEAM:
                                [
                                c'16
                                c'16
                                c'16
                                c'16
                            % CLOSE_BRACKETS:
                            }
                            r8
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
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                        \times 5/6
                        {
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 7 0))
                            \times 6/5
                            {
                                c'128
                                % AFTER:
                                % START_BEAM:
                                [
                                c'128
                                c'128
                                c'128
                                c'128
                            % CLOSE_BRACKETS:
                            }
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
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        r4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \fontsize #6 { Rhythm e }
                        c'8
                        c'4.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'1.
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                        \times 5/6
                        {
                            r4
                            c'4
                            c'4
                        % CLOSE_BRACKETS:
                        }
                        r4
                        c'4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'8
                        c'2..
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            r4
                            c'8
                            c'2..
                        % CLOSE_BRACKETS:
                        }
                        r8.
                        r16
                        c'16
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'8
                        r8.
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) (ly:make-duration 3 0))
                        \times 10/11
                        {
                            r4
                            c'8
                            c'1
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
                        s1 * 5/8
                        s1 * 1/2
                        s1 * 11/8
                        s1 * 7/4
                        s1 * 13/8
                        s1 * 7/8
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 5/4
                        s1 * 7/8
                        s1 * 13/8
                        s1 * 7/4
                        s1 * 3/16
                        s1 * 13/8
                        s1 * 1/4
                        s1 * 3/2
                        s1 * 5/16
                        s1 * 9/4
                        s1 * 5/8
                        s1 * 3/2
                        s1 * 1
                        s1 * 7/16
                        s1 * 3/16
                        s1 * 5/4
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
                        s1 * 5/8
                        s1 * 1/2
                        s1 * 11/8
                        s1 * 7/4
                        s1 * 13/8
                        s1 * 7/8
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
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
                                    \override DynamicText.color = \二
                                    \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \voiceOne
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 10) (ly:make-duration 3 0))
                                \times 10/13
                                {
                                    g''''4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \interrupt
                                    g''''4
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
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
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "4 voice"
                            {
                                % BEFORE:
                                % COMMANDS:
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
                                \override DynamicText.color = \四
                                \override Dots.staff-position = #2
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \interrupt
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \interrupt
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \interrupt
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \interrupt
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \interrupt
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \interrupt
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \interrupt
                                g''''4
                                % BEFORE:
                                % COMMANDS:
                                \interrupt
                                g''''4
                                % AFTER:
                                % COMMANDS:
                                \ottava 0
                                % ABSOLUTE_AFTER:
                                % COMMANDS:
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
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % AFTER:
                        % COMMANDS:
                        \oneVoice
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "13 voice temp"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 14) (ly:make-duration 4 0))
                                \times 14/21
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
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
                                    \override DynamicText.color = \二
                                    \override Dots.staff-position = #2
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
                                    g''''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 33 26) (ly:make-duration 4 0))
                                \times 26/33
                                {
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
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
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
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "4 voice"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 28) (ly:make-duration 5 0))
                                \times 28/23
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
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
                                    \override DynamicText.color = \四
                                    \override Dots.staff-position = #2
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
                                    g''''8..
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 59 52) (ly:make-duration 5 0))
                                \times 52/59
                                {
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
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \hocket
                                    g''''16
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
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
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % AFTER:
                        % COMMANDS:
                        \oneVoice
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'16
                        r8.
                        c'16
                        r8.
                        c'16
                        r8.
                        c'16
                        r8.
                        c'16
                        r8.
                        c'16
                        r8.
                        c'16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r32.
                        % AFTER:
                        % START_BEAM:
                        [
                        c'64
                        r32.
                        c'64
                        r32.
                        c'64
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
                        c'32
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
                        c'32
                        r16.
                        c'32
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
                        % AFTER:
                        % STOP_BEAM:
                        ]
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
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            c'128
                            c'128
                            c'128
                            % AFTER:
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        c'1.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'2.
                        c'4.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'4
                        c'1.
                        c'1
                        c'4..
                        c'8.
                        c'2.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'2
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
                    s1 * 5/8
                    s1 * 1/2
                    s1 * 11/8
                    s1 * 7/4
                    s1 * 13/8
                    s1 * 7/8
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 5/4
                    s1 * 7/8
                    s1 * 13/8
                    s1 * 7/4
                    s1 * 3/16
                    s1 * 13/8
                    s1 * 1/4
                    s1 * 3/2
                    s1 * 5/16
                    s1 * 9/4
                    s1 * 5/8
                    s1 * 3/2
                    s1 * 1
                    s1 * 7/16
                    s1 * 3/16
                    s1 * 5/4
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
