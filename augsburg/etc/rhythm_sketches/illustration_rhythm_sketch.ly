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
                        s1 * 5/4
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
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 4/3
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'16 * 4/3
                                c'16 * 4/3
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
                                    c'16
                                    % AFTER:
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                \afterGrace
                                c'4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2/5
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'16 * 2/5
                                c'16 * 2/5
                                c'16 * 2/5
                                c'16 * 2/5
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
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                \afterGrace
                                c'4.
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 1/2
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'16 * 1/2
                                c'16 * 1/2
                                c'16 * 1/2
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
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                c'2
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                \afterGrace
                                c'8
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Flag.stroke-style = #"grace" 
                                    \stemUp
                                    c'16
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
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2/3
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'16 * 2/3
                                c'16 * 2/3
                                c'16 * 2/3
                                c'16 * 2/3
                                c'16 * 2/3
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
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                \afterGrace
                                c'4.
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
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
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 4/7
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'16 * 4/7
                                c'16 * 4/7
                                c'16 * 4/7
                                c'16 * 4/7
                                c'16 * 4/7
                                c'16 * 4/7
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
                                    c'16
                                    % AFTER:
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                \afterGrace
                                c'4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2/7
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'16 * 2/7
                                c'16 * 2/7
                                c'16 * 2/7
                                c'16 * 2/7
                                c'16 * 2/7
                                c'16 * 2/7
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
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
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
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                \afterGrace
                                c'4
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'16 * 2
                                c'16 * 2
                                c'16 * 2
                                c'16 * 2
                                c'16 * 2
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
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'2.
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % GROB_OVERRIDES:
                                \once \override Stem.direction = #down
                                % OPENING:
                                \afterGrace
                                c'8
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
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
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                % OPENING:
                                % COMMANDS:
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 3
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'16 * 3
                                c'16 * 3
                                c'16 * 3
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
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
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
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                \afterGrace
                                c'2.
                                % AFTER:
                                % OPEN_BRACKETS:
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Flag.stroke-style = #"grace" 
                                    \stemUp
                                    c'16
                                    % AFTER:
                                    % COMMANDS:
                                    \stemNeutral
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
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
