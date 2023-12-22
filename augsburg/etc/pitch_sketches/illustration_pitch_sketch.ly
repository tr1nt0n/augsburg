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
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <fs! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! ef'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! ef'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <g! c'! cs'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <a! c'! cs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! ef'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! fs'! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef! c'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! cs'! e'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <fs! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! ef'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! ef'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <g! c'! cs'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <a! c'! cs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! ef'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! fs'! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef! c'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! cs'! e'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <fs! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! ef'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! ef'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <g! c'! cs'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <a! c'! cs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! ef'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! fs'! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef! c'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! cs'! e'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <fs! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! ef'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! ef'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <g! c'! cs'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <a! c'! cs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! ef'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! fs'! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef! c'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! cs'! e'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <fs! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! ef'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! ef'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <g! c'! cs'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <a! c'! cs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! ef'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! fs'! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef! c'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! cs'! e'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <fs! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! ef'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! ef'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <g! c'! cs'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <a! c'! cs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! ef'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! fs'! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef! c'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! e'! fs'! g'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! cs'! e'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <ef!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <fs! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! g'! af'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! e'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! c'! cs'! ef'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <af! cs'! ef'! fs'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <b! ef'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        <g! c'! cs'! e'!>16
                        % AFTER:
                        % COMMANDS:
                        \override Staff.Accidental.X-extent = ##f
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \set suggestAccidentals = ##t
                        c'32
                        % AFTER:
                        % START_BEAM:
                        [
                        cs'32
                        ef'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        a'32
                        b'32
                        a'32
                        ef'32
                        c'32
                        cs'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        a'32
                        b'32
                        cs'32
                        ef'32
                        c'32
                        cs'32
                        ef'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        b'32
                        a'32
                        b'32
                        ef'32
                        c'32
                        cs'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        b'32
                        a'32
                        cs'32
                        ef'32
                        c'32
                        cs'32
                        ef'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        a'32
                        b'32
                        a'32
                        ef'32
                        c'32
                        cs'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        a'32
                        b'32
                        cs'32
                        ef'32
                        c'32
                        cs'32
                        ef'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        b'32
                        a'32
                        b'32
                        ef'32
                        c'32
                        cs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        b'32
                        a'32
                        cs'32
                        ef'32
                        c'32
                        c'32
                        cs'32
                        ef'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        a'32
                        b'32
                        a'32
                        ef'32
                        c'32
                        cs'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        a'32
                        b'32
                        cs'32
                        ef'32
                        c'32
                        cs'32
                        ef'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        b'32
                        a'32
                        b'32
                        ef'32
                        c'32
                        cs'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        b'32
                        a'32
                        cs'32
                        ef'32
                        c'32
                        cs'32
                        ef'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        a'32
                        b'32
                        a'32
                        ef'32
                        c'32
                        cs'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        a'32
                        b'32
                        cs'32
                        ef'32
                        c'32
                        cs'32
                        ef'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        b'32
                        a'32
                        b'32
                        ef'32
                        c'32
                        cs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        b'32
                        a'32
                        cs'32
                        ef'32
                        c'32
                        c'32
                        cs'32
                        ef'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        a'32
                        b'32
                        a'32
                        ef'32
                        c'32
                        cs'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        a'32
                        b'32
                        cs'32
                        ef'32
                        c'32
                        cs'32
                        ef'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        b'32
                        a'32
                        b'32
                        ef'32
                        c'32
                        cs'32
                        e'32
                        fs'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        g'32
                        b'32
                        a'32
                        cs'32
                        ef'32
                        c'32
                        cs'32
                        ef'32
                        g'32
                        af'32
                        e'32
                        fs'32
                        a'32
                        b'32
                        a'32
                        ef'32
                        c'32
                        cs'32
                        fs'32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \set suggestAccidentals = ##f
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
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
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
                \context leftHandStaff = "piano 3 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 3 voice"
                    {
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
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
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
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
