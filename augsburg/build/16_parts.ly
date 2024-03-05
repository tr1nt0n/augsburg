    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #6.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"97" #"1" #"2" 
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        c'1
                        - \accent
                        \fff
                        _ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { Trillo accentato: } \line {Wie dicker Hagel, der auf die Erde prasselt. } } }
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        \startTrillSpan df'
                        \once \override Stem.direction = #down
                        c'2
                        ~
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        c'8
                        [
                        ]
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        e'4.
                        - \accent
                        \>
                        \startTrillSpan fs'
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        a'8.
                        - \accent
                        \p
                        [
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \startTrillSpan bf'
                        s1 * 0
                        \f
                        \stopTrillSpan
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \voiceOne
                                ef''16 * 1/6
                                [
                                (
                                \once \override Staff.Accidental.stencil = ##f
                                g''16 * 1/6
                                - \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                b'16 * 1/6
                                - \natural-articulation
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                bf''16 * 1/6
                                - \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                f''16 * 1/6
                                - \natural-articulation
                                \change Staff = "piano 1 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                fs'''16 * 1/6
                                - \sharp-articulation
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                \voiceTwo
                                ef''16
                                - \marcato
                                ~
                                \once \override Stem.direction = #down
                                ef''16
                            }
                        >>
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        fs''8.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                        - \accent
                        ]
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        \startTrillSpan a''
                        \once \override Stem.direction = #down
                        fs''2
                        ~
                        \once \override Stem.direction = #down
                        fs''4
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        cs'2.
                        - \accent
                        \<
                        \startTrillSpan d'
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        fs'4.
                        - \accent
                        \startTrillSpan gs'
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        cs''8
                        - \accent
                        [
                        ~
                        \startTrillSpan d''
                        \once \override Stem.direction = #down
                        cs''8
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        d''8
                        - \accent
                        ~
                        \startTrillSpan f''
                        \once \override Stem.direction = #down
                        d''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        ef''8
                        - \accent
                        \ff
                        ]
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        \startTrillSpan ff''
                        \once \override Stem.direction = #down
                        ef''1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        e''2
                        - \accent
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan fs''
                        s1 * 0
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. ff"))
                        \stopTrillSpan
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \voiceOne
                                bf'16 * 1/4
                                [
                                (
                                \once \override Staff.Accidental.stencil = ##f
                                d'16 * 1/4
                                - \natural-articulation
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                ef''16 * 1/4
                                - \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                a'16 * 1/4
                                - \natural-articulation
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                \voiceTwo
                                bf'16
                                - \marcato
                            }
                        >>
                        \change Staff = "piano 3 staff"
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        f'8.
                        - \accent
                        [
                        ~
                        \startTrillSpan gf'
                        \once \override Stem.direction = #down
                        f'8.
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        af16
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. p"))
                        - \accent
                        ]
                        ~
                        \startTrillSpan cf'
                        \voiceOne
                        \once \override Stem.direction = #down
                        af1
                        \oneVoice
                        \override Score.TrillSpanner.staff-padding = 2.5
                        \override Score.DynamicLineSpanner.padding = 2
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        d2.
                        - \accent
                        - \accent
                        \stopTrillSpan
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
                        \startTrillSpan ef
                        \once \override Stem.direction = #down
                        d16
                        [
                        s1 * 0
                        \ff
                        \stopTrillSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \voiceOne
                                bf,16 * 1/2
                                [
                                (
                                \once \override Staff.Accidental.stencil = ##f
                                e,16 * 1/2
                                - \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                c,16 * 1/2
                                - \natural-articulation
                                \change Staff = "piano 1 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                e'16 * 1/2
                                - \natural-articulation
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                \ottava 3
                                a''''16 * 1/2
                                - \natural-articulation
                                \ottava 0
                                \change Staff = "piano 1 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                bf'16 * 1/2
                                - \flat-articulation
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                \voiceTwo
                                bf,8.
                                - \marcato
                            }
                        >>
                        \change Staff = "piano 1 staff"
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        f'16.
                        - \accent
                        - \accent
                        \startTrillSpan g'
                        s1 * 0
                        \stopTrillSpan
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \voiceOne
                                d''16 * 1/12
                                [
                                (
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                af,16 * 1/12
                                - \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                g16 * 1/12
                                - \natural-articulation
                                \change Staff = "piano 1 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                \ottava 2
                                b''''16 * 1/12
                                - \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d''''16 * 1/12
                                - \natural-articulation
                                \ottava 0
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                ef16 * 1/12
                                - \flat-articulation
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Voice.Stem.cross-staff = ##t
                                \once \override Voice.Stem.Y-extent = #'(0 . 0)
                                \once \override Voice.Stem.details.lengths = #'(34)
                                \once \override Voice.Flag.cross-staff = ##t
                                \once \override Voice.Flag.Y-extent = #'(0 . 0)
                                \once \override Voice.Flag.Y-offset = -34
                                \once \override Stem.direction = #down
                                \voiceTwo
                                d''32
                                - \marcato
                                ~
                                \once \override Voice.Stem.cross-staff = ##t
                                \once \override Voice.Stem.Y-extent = #'(0 . 0)
                                \once \override Voice.Stem.details.lengths = #'(34)
                                \once \override Voice.Flag.cross-staff = ##t
                                \once \override Voice.Flag.Y-extent = #'(0 . 0)
                                \once \override Voice.Flag.Y-offset = -34
                                \once \override Stem.direction = #down
                                d''32
                            }
                        >>
                        \change Staff = "piano 3 staff"
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        ef'16.
                        - \accent
                        ]
                        \>
                        ~
                        \startTrillSpan ff'
                        \once \override Stem.direction = #down
                        ef'4.
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        fs4.
                        - \accent
                        \mf
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \startTrillSpan a
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        cs'8.
                        - \accent
                        - \accent
                        \pp
                        [
                        \<
                        \startTrillSpan d'
                        s1 * 0
                        \ff
                        \stopTrillSpan
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \change Staff = "piano 1 staff"
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \voiceOne
                                a'16 * 1/5
                                [
                                (
                                \once \override Staff.Accidental.stencil = ##f
                                cs''16 * 1/5
                                - \sharp-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                fs''16 * 1/5
                                - \sharp-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                cs'''16 * 1/5
                                - \sharp-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'''16 * 1/5
                                - \natural-articulation
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \change Staff = "piano 1 staff"
                                \once \override Voice.Stem.cross-staff = ##t
                                \once \override Voice.Stem.Y-extent = #'(0 . 0)
                                \once \override Voice.Stem.details.lengths = #'(30)
                                \once \override Voice.Flag.cross-staff = ##t
                                \once \override Voice.Flag.Y-extent = #'(0 . 0)
                                \once \override Voice.Flag.Y-offset = -30
                                \once \override Stem.direction = #down
                                \voiceTwo
                                a'16
                                - \marcato
                                ~
                                \once \override Voice.Stem.cross-staff = ##t
                                \once \override Voice.Stem.Y-extent = #'(0 . 0)
                                \once \override Voice.Stem.details.lengths = #'(30)
                                \once \override Voice.Flag.cross-staff = ##t
                                \once \override Voice.Flag.Y-extent = #'(0 . 0)
                                \once \override Voice.Flag.Y-offset = -30
                                \once \override Stem.direction = #down
                                a'16
                            }
                        >>
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \change Staff = "piano 1 staff"
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \voiceOne
                                cs'''16 * 1/6
                                [
                                (
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                e'16 * 1/6
                                - \natural-articulation
                                \change Staff = "piano 1 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                \ottava 1
                                a'''16 * 1/6
                                - \natural-articulation
                                \ottava 0
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                c,16 * 1/6
                                - \natural-articulation
                                \change Staff = "piano 1 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                g''16 * 1/6
                                - \natural-articulation
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                b16 * 1/6
                                - \natural-articulation
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \change Staff = "piano 1 staff"
                                \once \override Voice.Stem.cross-staff = ##t
                                \once \override Voice.Stem.Y-extent = #'(0 . 0)
                                \once \override Voice.Stem.details.lengths = #'(34)
                                \once \override Voice.Flag.cross-staff = ##t
                                \once \override Voice.Flag.Y-extent = #'(0 . 0)
                                \once \override Voice.Flag.Y-offset = -30
                                \once \override Stem.direction = #down
                                \voiceTwo
                                cs'''16
                                - \marcato
                                ~
                                \once \override Voice.Stem.cross-staff = ##t
                                \once \override Voice.Stem.Y-extent = #'(0 . 0)
                                \once \override Voice.Stem.details.lengths = #'(34)
                                \once \override Voice.Flag.cross-staff = ##t
                                \once \override Voice.Flag.Y-extent = #'(0 . 0)
                                \once \override Voice.Flag.Y-offset = -30
                                \once \override Stem.direction = #down
                                cs'''16
                            }
                        >>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        d'16
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffp"))
                        - \accent
                        ]
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        \startTrillSpan e'
                        \once \override Stem.direction = #down
                        d'2
                        \once \override Stem.direction = #down
                        \pitchedTrill
                        ef4
                        - \accent
                        - \accent
                        \>
                        \startTrillSpan ff
                        s1 * 0
                        \pp
                        \stopTrillSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \voiceOne
                                e16 * 1/8
                                [
                                (
                                \once \override Staff.Accidental.stencil = ##f
                                f16 * 1/8
                                - \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                af16 * 1/8
                                - \flat-articulation
                                \change Staff = "piano 1 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                f'16 * 1/8
                                - \natural-articulation
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                \voiceTwo
                                e32
                                - \marcato
                            }
                        >>
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \change Staff = "piano 3 staff"
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \voiceOne
                                b'16 * 3/8
                                [
                                (
                                \change Staff = "piano 1 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                g'''16 * 3/8
                                - \natural-articulation
                                \change Staff = "piano 3 staff"
                                \once \override Staff.Accidental.stencil = ##f
                                b,16 * 3/8
                                - \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                bf16 * 3/8
                                - \flat-articulation
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \oneVoice
                                \change Staff = "piano 3 staff"
                                \once \override Stem.direction = #down
                                \voiceTwo
                                b'16.
                                - \marcato
                                ~
                                \once \override Stem.direction = #down
                                b'16.
                            }
                        >>
                        \change Staff = "piano 1 staff"
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        \once \override Stem.direction = #down
                        \clef "bass"
                        \pitchedTrill
                        bf,,32
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffpppp"))
                        - \accent
                        - \accent
                        [
                        ]
                        ~
                        \startTrillSpan df,
                        \once \override Stem.direction = #down
                        bf,,2
                        \revert Score.TrillSpanner.staff-padding
                        \revert Score.DynamicLineSpanner.padding
                        s1 * 0
                        \stopTrillSpan
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
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
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \revert Staff.Accidental.stencil
                        s1 * 1
                        s1 * 1
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \clef "treble"
                        r2
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4..
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4..
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4..
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4..
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \clef "bass"
                        r4..
                        \once \override NoteHead.no-ledgers = ##t
                        \slapped
                        \once \override Stem.direction = #down
                        d,,,,32
                        _ \ppp
                        - \tweak stencil #constante-hairpin
                        _ \<
                        \sustainOn
                        \once \override Rest.staff-position = #-30
                        r2....
                        \sustainOff
                        \once \override Rest.staff-position = #-30
                        r8
                        \once \override Rest.staff-position = #-30
                        r32
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.direction = #down
                        d,,,,32
                        \sustainOn
                        \once \override Rest.staff-position = #-30
                        r16
                        \sustainOff
                        \once \override Rest.staff-position = #-30
                        r2.
                        \once \override Rest.staff-position = #-30
                        r4
                        \once \override Rest.staff-position = #-30
                        r16
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.direction = #down
                        d,,,,32
                        \sustainOn
                        \once \override Rest.staff-position = #-30
                        r32
                        \sustainOff
                        \once \override Rest.staff-position = #-30
                        r8
                        \once \override Rest.staff-position = #-30
                        r2
                        \once \override Rest.staff-position = #-30
                        r4...
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.direction = #down
                        d,,,,32
                        \sustainOn
                        \once \override Rest.staff-position = #-30
                        r2
                        \sustainOff
                        \once \override Rest.staff-position = #-30
                        r2
                        \once \override Rest.staff-position = #-30
                        r8
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.direction = #down
                        d,,,,32
                        \!
                        \sustainOn
                        \revert-noteheads
                        \once \override Rest.staff-position = #-30
                        r16.
                        \sustainOff
                        \once \override Rest.staff-position = #-30
                        r4
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
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1
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
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
