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
            \time 5/4
            s1 * 5/4
            ^ \markup { \raise #2.5 \with-dimensions-from \null \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #2 #"118" } }
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            - \tweak padding #9
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #2 #"118" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4"  } }
            \startTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \stopTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            - \tweak padding #22
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4"  ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #1 #2 #"49" } }
            \startTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.BarLine.transparent = ##f
            \tweak text "×18" \startMeasureSpanner
            \bar ".|:"
            \time 6/8
            s1 * 3/4
            - \tweak padding #4
            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #3 { \center-column { \line { Inneres Stück: } \line { Trato de recordar que la ira del diablo } \line { también se la dio Dios. }  } }
            \stopTextSpan
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \extremely-long-fermata
            \once \override Score.BarLine.transparent = ##f
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        r2.
                        - \tweak color \四
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER EIN ) }
                        r16
                        \revert Staff.Accidental.X-extent
                        \once \override Stem.direction = #down
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >8.
                        :64
                        - \espressivo
                        _ \mp
                        - \tweak padding #11
                        _ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Die Saiten in der höchsten Oktave } \line { auf ihrer Rückseite klimpern }  } }
                        [
                        - \tweak stencil #constante-hairpin
                        _ \<
                        \override Staff.Accidental.X-extent = ##f
                        \once \override Voice.Accidental.font-size = 5
                        \once \override Stem.direction = #down
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f!16.
                        ^ \markup \center-align { \concat { -14 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
                        \revert Staff.Accidental.X-extent
                        \once \override Stem.direction = #down
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >32
                        :256
                        - \espressivo
                        ~
                        \once \override Stem.direction = #down
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >32
                        :256
                        \override Staff.Accidental.X-extent = ##f
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \override Beam.length-fraction = #1
                                \revert Staff.Accidental.X-extent
                                \once \override NoteHead.no-ledgers = ##t
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 1/4
                                [
                                (
                                \override Staff.Accidental.X-extent = ##f
                                \override Staff.Accidental.stencil = ##f
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \staff-line-count 1
                                \revert Staff.Accidental.X-extent
                                \once \override Stem.direction = #down
                                \clef "percussion"
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'16.
                                ^ \f
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Magnetgruppe } \line { mit der Handfläche }  } }
                                ~
                                \once \override Stem.direction = #down
                                c'4.
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.stencil
                            }
                        >>
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \override Beam.length-fraction = #1
                                \revert Staff.Accidental.X-extent
                                \once \override NoteHead.no-ledgers = ##t
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 3/2
                                [
                                (
                                \override Staff.Accidental.X-extent = ##f
                                c'16 * 3/2
                                c'16 * 3/2
                                c'16 * 3/2
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \revert Staff.Accidental.X-extent
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4.
                                ^ \f
                                \override Staff.Accidental.X-extent = ##f
                            }
                        >>
                        \staff-line-count 5
                        \once \override Voice.Accidental.font-size = 5
                        \once \override Stem.direction = #down
                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f!8.
                        ^ \markup \center-align { \concat { -14 } }
                        \revert Staff.Accidental.X-extent
                        \once \override Stem.direction = #down
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >16
                        :128
                        - \espressivo
                        ~
                        \once \override Stem.direction = #down
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >16
                        :128
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \once \override Stem.direction = #down
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >16
                        :128
                        - \espressivo
                        ~
                        \once \override Stem.direction = #down
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >16
                        :128
                        \override Staff.Accidental.X-extent = ##f
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \override Beam.length-fraction = #1
                                \revert Staff.Accidental.X-extent
                                \once \override NoteHead.no-ledgers = ##t
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 1/5
                                [
                                (
                                \override Staff.Accidental.X-extent = ##f
                                \override Staff.Accidental.stencil = ##f
                                c'16 * 1/5
                                c'16 * 1/5
                                c'16 * 1/5
                                c'16 * 1/5
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \staff-line-count 1
                                \revert Staff.Accidental.X-extent
                                \once \override Stem.direction = #down
                                \clef "percussion"
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'16
                                ^ \f
                                ~
                                \once \override Stem.direction = #down
                                c'2
                                \override Staff.Accidental.X-extent = ##f
                            }
                        >>
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \override Beam.length-fraction = #1
                                \revert Staff.Accidental.X-extent
                                \once \override NoteHead.no-ledgers = ##t
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2/3
                                [
                                (
                                \override Staff.Accidental.X-extent = ##f
                                c'16 * 2/3
                                c'16 * 2/3
                                c'16 * 2/3
                                c'16 * 2/3
                                c'16 * 2/3
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \revert Staff.Accidental.X-extent
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4
                                ^ \f
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.stencil
                            }
                        >>
                        \staff-line-count 5
                        \revert Staff.Accidental.X-extent
                        \once \override Stem.direction = #down
                        \clef "treble"
                        \once \override NoteHead.no-ledgers = ##t
                        <
                            \tweak style #'la
                            d'''
                            \tweak style #'la
                            f'''
                            \tweak style #'la
                            a'''
                            \tweak style #'la
                            c''''
                        >32
                        :256
                        - \espressivo
                        \override Staff.Accidental.X-extent = ##f
                        \once \override Voice.Accidental.font-size = 5
                        \override Staff.Accidental.stencil = ##f
                        \once \override Stem.direction = #down
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f!16.
                        ^ \markup \center-align { \concat { -14 } }
                        ~
                        \once \override Stem.direction = #down
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f16.
                        \!
                        ]
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                  %! abjad.on_beat_grace_container(2)
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \override Beam.length-fraction = #1
                                \revert Staff.Accidental.X-extent
                                \once \override NoteHead.no-ledgers = ##t
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 1/12
                                [
                                (
                                \override Staff.Accidental.X-extent = ##f
                                c'16 * 1/12
                                c'16 * 1/12
                                c'16 * 1/12
                                c'16 * 1/12
                                c'16 * 1/12
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \staff-line-count 1
                                \revert Staff.Accidental.X-extent
                                \once \override Stem.direction = #down
                                \clef "percussion"
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'32
                                ^ \f
                                ~
                                \once \override Stem.direction = #down
                                c'4
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.stencil
                            }
                        >>
                        r2.
                        r8
                        \override Dots.staff-position = #2
                        \staff-line-count 5
                        \once \override Voice.Accidental.font-size = 5
                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f!4.
                        ^ \markup \center-align { \concat { -14 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Nagel + Vibrator ) }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-down  }
                        ef!4
                        ^ \markup \center-align { \concat { -18 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-thirty-seven-limit-quarter-tone-up \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        df'!4.
                        ^ \markup \center-align { \concat { D-4 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        c'!8
                        ^ \markup \center-align { \concat { -12 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        af'!4
                        ^ \markup \center-align { \concat { +2 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        g'!4
                        ^ \markup \center-align { \concat { -10 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-flat  }
                        bf'!8
                        ^ \markup \center-align { \concat { -20 } }
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        af'!8
                        ^ \markup \center-align { \concat { +2 } }
                        ]
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        af'8
                        \once \override Voice.Accidental.font-size = 5
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up  }
                        c''!4.
                        ^ \markup \center-align { \concat { C\raise #0.75 { \teeny \smaller \accidental #1/2 } -20 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-flat  }
                        bf'!4
                        ^ \markup \center-align { \concat { -20 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef''!4
                        ^ \markup \center-align { \concat { +4 } }
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef''8
                        [
                        \once \override Voice.Accidental.font-size = 5
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-down  }
                        df''!8
                        ^ \markup \center-align { \concat { -22 } }
                        ]
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-down  }
                        df''8
                        \once \override Voice.Accidental.font-size = 5
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''!4.
                        ^ \markup \center-align { \concat { -14 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef''!8
                        ^ \markup \center-align { \concat { +4 } }
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''!8
                        ^ \markup \center-align { \concat { -14 } }
                        ]
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''8
                        [
                        \once \override Voice.Accidental.font-size = 5
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef''!8
                        ^ \markup \center-align { \concat { +4 } }
                        ]
                        r4.
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef''!8
                        ^ \markup \center-align { \concat { +4 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''!4
                        ^ \markup \center-align { \concat { -14 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef''!4
                        ^ \markup \center-align { \concat { +4 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''!8
                        ^ \markup \center-align { \concat { -14 } }
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \revert Dots.staff-position
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef''!8
                        ^ \markup \center-align { \concat { +4 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { ( den Vibrator auf die Saiten } \line { legen und dort belassen ) }  } }
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 2 0))
                        \times 5/6
                        {
                            \revert Staff.Accidental.X-extent
                            <ds a bf>2
                                _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                            - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                            - \tweak stencil #constante-hairpin
                            \<
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b c' f' bf'>2
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <gs'' c''' f''' a'''>2
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \revert Staff.Accidental.X-extent
                        <g' c'' df''>4
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <c'' ds'' gs'' b''>4
                        \>
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ds'' a'' bf''>4
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b' c'' f'' bf''>4
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <gs'' c''' f''' a'''>4
                        \!
                        \override Staff.Accidental.X-extent = ##f
                        <<
                            \context Voice = "piano 1 voice temp"
                            {
                                \revert Staff.Accidental.X-extent
                                \voiceOne
                                <b'' c''' f''' bf'''>8
                                \mp
                                [
                                - \tweak stencil #constante-hairpin
                                \<
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.X-extent
                                <gs'' c''' f''' a'''>8
                                ]
                                \override Staff.Accidental.X-extent = ##f
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                \times 2/3
                                {
                                    \revert Staff.Accidental.X-extent
                                    <b'' c''' f''' bf'''>4
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                    <gs'' c''' f''' a'''>4
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                    <b'' c''' f''' bf'''>4
                                    \override Staff.Accidental.X-extent = ##f
                                }
                                \revert Staff.Accidental.X-extent
                                <ef''' a'' bf''>8
                                [
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.X-extent
                                <b'' c''' f''' bf'''>8
                                ]
                                \override Staff.Accidental.X-extent = ##f
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                \times 2/3
                                {
                                    \revert Staff.Accidental.X-extent
                                    <gs'' c''' f''' a'''>4
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                    <b'' c''' f''' bf'''>4
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                    <ef''' a'' bf''>4
                                    \override Staff.Accidental.X-extent = ##f
                                }
                                \revert Staff.Accidental.X-extent
                                <b'' c''' f''' bf'''>8
                                [
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.X-extent
                                <gs'' c''' f''' a'''>8
                                ]
                                \override Staff.Accidental.X-extent = ##f
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                \times 2/3
                                {
                                    \revert Staff.Accidental.X-extent
                                    <g'' c''' df'''>4
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                    <c'' ds'' gs'' b''>4
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                    <ef'' a' bf'>4
                                    \override Staff.Accidental.X-extent = ##f
                                }
                                \revert Staff.Accidental.X-extent
                                <b' c'' f'' bf''>8
                                [
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.X-extent
                                <gs' c'' f'' a''>8
                                \!
                                ]
                                \override Staff.Accidental.X-extent = ##f
                            }
                            \context Voice = "lower melody"
                            {
                                \voiceTwo
                                ef'''4
                                - \marcato
                                - \tenuto
                                ~
                                \override Staff.Stem.stemlet-length = 0.75
                                ef'''16
                                [
                                \revert Staff.Stem.stemlet-length
                                df'''8.
                                - \marcato
                                - \tenuto
                                ]
                                ~
                                \override Staff.Stem.stemlet-length = 0.75
                                df'''8
                                [
                                \revert Staff.Stem.stemlet-length
                                ef'''8
                                - \marcato
                                - \tenuto
                                ]
                                ~
                                \override Staff.Stem.stemlet-length = 0.75
                                ef'''8.
                                [
                                \revert Staff.Stem.stemlet-length
                                df'''16
                                - \marcato
                                - \tenuto
                                ]
                                ~
                                df'''4
                                ef'''4
                                - \marcato
                                - \tenuto
                                ~
                                ef'''16
                                r4..
                                r2
                            }
                        >>
                        \oneVoice
                        \revert Staff.Accidental.X-extent
                        <g' c' df'>8
                        [
                        (
                        \<
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <c' ds' gs' b'>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef' a bf>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b c' f' bf'>8
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <gs' c'' f' a'>4
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <g' c' df'>8
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <gs' c'' f' a'>8
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b c' f' bf'>4
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \revert Staff.Accidental.X-extent
                            \once \override Beam.grow-direction = #right
                            <ef' a bf>16 * 125/64
                            [
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b c' f' bf'>16 * 123/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef' a bf>16 * 59/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <c' ds' gs' b'>16 * 55/32
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef' a bf>16 * 101/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b c' f' bf'>16 * 23/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef' a bf>16 * 83/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <c' ds' gs' b'>16 * 19/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g' c' df'>16 * 69/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <c' ds' gs' b'>16 * 1
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g' c' df'>16 * 59/64
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <gs' c'' f' a'>16 * 7/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g' c' df'>16 * 53/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <gs' c'' f' a'>16 * 13/16
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b c' f' bf'>16 * 25/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef' a bf>16 * 49/64
                            ]
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \revert TupletNumber.text
                        \revert Staff.Accidental.X-extent
                        \clef "bass"
                        <ef!>16
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <fs,! c! cs! ef!>8
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! g! af!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af,! c! cs! ef!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af,! e! fs!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! c! cs! ef!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af,! cs! ef! fs!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! ef! e!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <g,! c! cs! e!>8
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! e! fs! g!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <a,! c! cs!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af,! ef! e! fs!>8
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! c! ef!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af,! cs! e! fs!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! fs! g! af!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef! c!>8
                        - \marcato
                        - \tenuto
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \revert Staff.Accidental.X-extent
                            \once \override Beam.grow-direction = #left
                            <b,! e! fs! g!>16 * 3/4
                            \mf
                            [
                            \<
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! c! cs! ef!>16 * 3/4
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! e! fs!>16 * 49/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! cs! e! af!>16 * 25/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef,!>16 * 13/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <fs,! c! cs! ef!>16 * 55/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! g! af!>16 * 29/32
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! c! cs! ef!>16 * 63/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! e! fs!>16 * 17/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! c! cs! ef!>16 * 37/32
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! cs! ef! fs!>16 * 5/4
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! ef! e!>16 * 11/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g,! c! cs! e!>16 * 3/2
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! e! fs! g!>16 * 13/8
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <a,! c! cs!>16 * 111/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af! ef! e! fs!>16 * 117/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b! c'! ef'!>16 * 119/64
                            ]
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \revert TupletNumber.text
                        \revert Staff.Accidental.X-extent
                        \clef "treble"
                        <b! cs'! e'! af'!>8
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef'!>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <fs'! c''! cs''! ef''!>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b'! g''! af''!>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af'! c''! cs''! ef''!>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af'! e''! fs''!>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b'! c''! cs''! ef''!>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af'! cs''! ef''! fs''!>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b'! ef''! e''!>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <g'! c''! cs''! e''!>8
                        )
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        <cs' as' cs''>8
                        - \tenuto
                        \fffff
                        [
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>8
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \revert Staff.Stem.stemlet-length
                        <cs' as' cs''>8
                        - \tenuto
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \override Staff.Stem.stemlet-length = 0.75
                        <cs' as' cs''>8
                        - \tenuto
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>8
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \revert Staff.Stem.stemlet-length
                        <cs' as' cs''>8
                        - \tenuto
                        \!
                        )
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 3/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        <<
                            \context Voice = "RhythmMaker.Music temp"
                            {
                                \revert Staff.Accidental.X-extent
                                \voiceOne
                                <gs'' c''' f''' a'''>\breve...
                                \laissezVibrer
                                ^ \p
                                \override Staff.Accidental.X-extent = ##f
                            }
                            \context Voice = "epsilon intermittent voice 2"
                            {
                                <<
                                    \context Voice = "epsilon intermittent voice 2 temp"
                                    {
                                        \voiceOne
                                        \voiceTwo
                                        e,\breve...
                                        \laissezVibrer
                                        _ \ff
                                    }
                                    \context Voice = "styrofoam voice"
                                    {
                                        \voiceTwo
                                        r2.
                                        \sustainOn
                                        \staff-line-count 1
                                        \clef "percussion"
                                        c'4
                                        - \tenuto
                                        \mf
                                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Styroporkugel auf dem Innenrahmen }
                                        c'4
                                        \p
                                        c'4
                                        - \tenuto
                                        \mf
                                        c'4
                                        \p
                                        c'4
                                        c'4
                                        c'4
                                        c'4
                                        - \tenuto
                                        \mf
                                        c'4
                                        \p
                                        c'4
                                        - \tenuto
                                        \mf
                                        c'4
                                        \p
                                        c'4
                                        \sustainOff
                                    }
                                >>
                                \oneVoice
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "RhythmMaker.Music temp"
                            {
                                \staff-line-count 5
                                \revert Staff.Accidental.X-extent
                                \clef "bass"
                                \voiceOne
                                <b c' f' bf'>\breve...
                                \laissezVibrer
                                ^ \p
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                                \override Staff.Accidental.X-extent = ##f
                            }
                            \context Voice = "epsilon intermittent voice 2 1"
                            {
                                \voiceTwo
                                df,,\breve...
                                \laissezVibrer
                                _ \fff
                            }
                        >>
                        \oneVoice
                        s1 * 5/4
                        <<
                            \context Voice = "RhythmMaker.Music temp"
                            {
                                \revert Staff.Accidental.X-extent
                                \voiceOne
                                <ds a bf>2.
                                ^ \p
                                ~
                                <ds a bf>2
                                \override Staff.Accidental.X-extent = ##f
                            }
                            \context Voice = "epsilon intermittent voice 2 2"
                            {
                                \voiceTwo
                                b,,,2.
                                _ \fff
                                ~
                                b,,,2
                            }
                        >>
                        \oneVoice
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 2 0))
                        \times 5/6
                        {
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <e, e>2
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <cs, cs>2
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <b,, b,>2
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 2 0))
                        \times 5/7
                        {
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <cs, cs>4
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <e, e>4
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <ef,, ef,>4
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <f,, f,>4
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <b,, b,>4
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <cs, cs>4
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                            \arpeggioArrowUp
                            \revert Staff.Accidental.X-extent
                            <e, e>4
                            - \marcato
                            \arpeggio
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        \clef "bass"
                        <cs, cs>4.
                        - \marcato
                        \arpeggio
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <e, e>8
                        - \marcato
                        \arpeggio
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        <e, e>8
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        \revert leftHandStaff.Stem.stemlet-length
                        <cs, cs>8
                        - \marcato
                        \arpeggio
                        ]
                        ~
                        <cs, cs>4
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        <e, e>8
                        - \marcato
                        \arpeggio
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        \revert leftHandStaff.Stem.stemlet-length
                        <cs, cs>8
                        - \marcato
                        \arpeggio
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        r8
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <b,, b,>8
                        - \marcato
                        \arpeggio
                        \override Staff.Accidental.X-extent = ##f
                        r8
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <cs, cs>8
                        - \marcato
                        \arpeggio
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <e, e>4
                        - \marcato
                        \arpeggio
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <cs, cs>4.
                        - \marcato
                        \arpeggio
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <b,, b,>8
                        - \marcato
                        \arpeggio
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        <b,, b,>8
                        [
                        \sustainOn
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        \revert leftHandStaff.Stem.stemlet-length
                        <cs, cs>8
                        - \marcato
                        \arpeggio
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        r4
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <e, e>4
                        - \marcato
                        \arpeggio
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        <e, e>8
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \revert leftHandStaff.Stem.stemlet-length
                        <ef, ef>8
                        ]
                        (
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        <f, f>8
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \revert leftHandStaff.Stem.stemlet-length
                        <b,, b,>8
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \revert Staff.Accidental.X-extent
                            \once \override Beam.grow-direction = #right
                            <cs, cs>16 * 125/64
                            [
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <e, e>16 * 123/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef, ef>16 * 59/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <f, f>16 * 55/32
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,, b,>16 * 101/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs, cs>16 * 23/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <e, e>16 * 83/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef, ef>16 * 19/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <e, e>16 * 69/64
                            \override Staff.Accidental.X-extent = ##f
                            \ottava -1
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 1
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 59/64
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 7/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 53/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <f,, f,>16 * 13/16
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 25/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 49/64
                            ]
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \revert TupletNumber.text
                        \revert Staff.Accidental.X-extent
                        <b,,, b,,>16
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <f,, f,>8
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef,, ef,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <f,, f,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef,, ef,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <e,, e,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef,, ef,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <e,, e,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, cs,>8
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,,, b,,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <f,, f,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef,, ef,>8
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <f,, f,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,,, b,,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <f,, f,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,,, b,,>8
                        - \marcato
                        - \tenuto
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \revert Staff.Accidental.X-extent
                            \once \override Beam.grow-direction = #left
                            <f,, f,>16 * 3/4
                            [
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 3/4
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <f,, f,>16 * 49/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 25/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 13/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 55/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <f,, f,>16 * 29/32
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 63/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 17/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 37/32
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 5/4
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 11/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 3/2
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <e,, e,>16 * 13/8
                            - \marcato
                            - \tenuto
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 111/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <e,, e,>16 * 117/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 119/64
                            ]
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \revert TupletNumber.text
                        \revert Staff.Accidental.X-extent
                        <b,,, b,,>8
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, cs,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <e,, e,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, cs,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,,, b,,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, cs,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <e,, e,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef,, ef,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <f,, f,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,,, b,,>8
                        )
                        \sustainOff
                        ]
                        \ottava 0
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \clef "bass"
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        <cs,, gs,, cs,>8
                        - \tenuto
                        [
                        (
                        \sustainOn
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, gs,, cs,>8
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \revert leftHandStaff.Stem.stemlet-length
                        <cs,, gs,, cs,>8
                        - \tenuto
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        <cs,, gs,, cs,>8
                        - \tenuto
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, gs,, cs,>8
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        \revert leftHandStaff.Stem.stemlet-length
                        <cs,, gs,, cs,>8
                        - \tenuto
                        )
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \sustainOff
                        \stopStaff \startStaff
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
                        R1 * 5/4
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
                        R1 * 5/4
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
                        R1 * 5/4
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
                        R1 * 5/4
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
                        R1 * 5/4
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
                        R1 * 5/4
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
                        R1 * 5/4
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
                        R1 * 5/4
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
                        R1 * 5/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
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
                    R1 * 5/4
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
                    R1 * 5/4
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
                    R1 * 5/4
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
                    R1 * 5/4
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
                    R1 * 5/4
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
                    R1 * 5/4
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
                    R1 * 5/4
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
                    R1 * 5/4
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
                    R1 * 5/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
