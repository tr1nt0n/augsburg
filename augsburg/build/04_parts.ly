    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/2
            s1 * 3/2
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \long-fermata
            \once \override Score.BarLine.transparent = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup {
              \raise #13 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #37 #32 #2 #0 #'(1 . 1)]
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 3/16
            s1 * 3/16
            - \tweak padding #12
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #2 #"60"  ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4"  [\abjad-metric-modulation-tuplet-lhs #3 #0 #32 #37 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            \time 5/4
            s1 * 5/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 4/16
            s1 * 1/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 11/4
            s1 * 11/4
            \time 7/4
            s1 * 7/4
            \stopTextSpan
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \long-fermata
            \once \override Score.BarLine.transparent = ##f
            \time 5/4
            s1 * 5/4
            ^ \markup {
              \raise #6 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"97" #"1" #"2" 
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #37 #26 #2 #0 #'(1 . 1)]
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \short-fermata
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
                        <<
                            \context Voice = "piano 1 voice temp"
                            {
                                \once \override Staff.Clef.X-extent = ##f
                                \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                \staff-line-count 1
                                \clef "percussion"
                                \voiceTwo
                                \afterGrace
                                c'1.
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Maultrommel + Vibrator }
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                {
                                    \once \override Flag.stroke-style = #"grace" 
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    c'16
                                }
                            }
                            \context Voice = "sounding voice"
                            {
                                \override Dots.staff-position = #2
                                \override Staff.NoteHead.no-ledgers = ##t
                                \override Staff.Accidental.stencil = ##f
                                \voiceOne
                                c''2
                                _ #(make-dynamic-script
                                    (markup
                                        #:whiteout
                                        #:line (
                                            #:general-align Y -2 #:normal-text #:larger "“"
                                            #:hspace -0.1
                                            #:dynamic "p"
                                            #:hspace -0.25
                                            #:general-align Y -2 #:normal-text #:larger "”"
                                            )
                                        )
                                    )
                                (
                                - \abjad-zero-padding-glissando
                                \glissando
                                - \tweak padding #20
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \jawharp-crook \hspace #0.5 }
                                - \tweak bound-details.right.padding -2
                                \startTextSpan
                                _ \<
                                f''2
                                _ #(make-dynamic-script
                                    (markup
                                        #:whiteout
                                        #:line (
                                            #:general-align Y -2 #:normal-text #:larger "“"
                                            #:hspace -0.1
                                            #:dynamic "mf"
                                            #:hspace -0.2
                                            #:general-align Y -2 #:normal-text #:larger "”"
                                            )
                                        )
                                    )
                                - \abjad-zero-padding-glissando
                                \glissando
                                _ \>
                                \afterGrace
                                g'2
                                _ #(make-dynamic-script
                                    (markup
                                        #:whiteout
                                        #:line (
                                            #:general-align Y -2 #:normal-text #:larger "“"
                                            #:hspace -0.1
                                            #:dynamic "ppp"
                                            #:hspace -0.25
                                            #:general-align Y -2 #:normal-text #:larger "”"
                                            )
                                        )
                                    )
                                - \abjad-zero-padding-glissando
                                \glissando
                                - \tweak stencil #constante-hairpin
                                _ \<
                                {
                                    \once \override Flag.stroke-style = #"grace" 
                                    \revert Dots.staff-position
                                    g'16
                                    \!
                                    )
                                    \stopTextSpan
                                    \revert Staff.NoteHead.no-ledgers
                                    \revert Staff.Accidental.stencil
                                }
                            }
                        >>
                        \oneVoice
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 2 0))
                        \times 3/4
                        {
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \staff-line-count 5
                            \ottava -1
                            \clef "bass"
                            cs,8.
                            \mf
                            [
                            r16
                            \override Staff.Accidental.stencil = ##f
                            ef,,8.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            c,,8.
                            - \natural-articulation
                            \mp
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            cs,,8.
                            - \sharp-articulation
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r16
                            ]
                        }
                        s1 * 3/16
                        r4
                          %! +PARTS
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER EIN ) }
                          %! +SCORE
                    %%% - \tweak color \四
                          %! +SCORE
                    %%% - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER EIN ) }
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-5 . 0)
                        \override Dots.staff-position = #2
                        \once \override Voice.Accidental.font-size = 5
                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-thirty-seven-limit-quarter-tone-up  }
                        f'!2
                        ^ \markup \center-align { \concat { F\raise #0.75 { \teeny \smaller \accidental #1/2 } -49 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        cs''!2
                        ^ \markup \center-align { \concat { C+41 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        s1 * 1/4
                        r4
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        cs''!2
                        ^ \markup \center-align { \concat { C+41 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-thirty-seven-limit-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                        cs''!\breve
                        ^ \markup \center-align { \concat { D-49 } }
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 14) (ly:make-duration 3 0))
                        \times 14/15
                        {
                            r4
                            \once \override Voice.Accidental.font-size = 5
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-thirty-seven-limit-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                            cs''!2
                            ^ \markup \center-align { \concat { D-49 } }
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Voice.Accidental.font-size = 5
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-down  }
                            ef''!1
                            ^ \markup \center-align { \concat { -45 } }
                            ~
                            \revert Dots.staff-position
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-down  }
                            ef''8
                              %! +PARTS
                            - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER AUS ) }
                              %! +SCORE
                        %%% - \tweak color \四
                              %! +SCORE
                        %%% - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER AUS ) }
                        }
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \staff-line-count 1
                        \clef "percussion"
                        c'2.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "ppp"))
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Magnet links }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "cresc. poco a poco ( bis mezzo-forte )"))
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8.
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16.
                        [
                        c'32
                        ~
                        c'32
                        \override Staff.Accidental.stencil = ##f
                        \revert Staff.Stem.stemlet-length
                        c'16.
                        ]
                        ~
                        c'4.
                        \revert Staff.Accidental.stencil
                        c'4.
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        c'16
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        [
                        c'16
                        ~
                        c'16
                        \revert Staff.Stem.stemlet-length
                        c'16
                        ]
                        \staff-line-count 2
                        \once \override Stem.direction = #down
                        \clef "percussion"
                        b32
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { 1. Magnetgruppe mit der Handfläche } \line { 2. Magnet rechts }  } }
                        [
                        \override Staff.Accidental.stencil = ##f
                        \once \override Stem.direction = #down
                        b16.
                        ~
                        \once \override Stem.direction = #down
                        b16.
                        ]
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \override Beam.length-fraction = #1
                                \voiceOne
                                d'16 * 1/12
                                [
                                (
                                d'16 * 1/12
                                d'16 * 1/12
                                d'16 * 1/12
                                d'16 * 1/12
                                d'16 * 1/12
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
                                \voiceTwo
                                d'32
                                - \accent
                                \mf
                                ~
                                \once \override Stem.direction = #down
                                d'2
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.stencil
                            }
                        >>
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-5.5
                                \my-hack-slash
                                \override Beam.beam-thickness = #0.48
                                \override Beam.beam-thickness = #0.48
                                \override Beam.length-fraction = #1
                                \override Beam.length-fraction = #1
                                \voiceOne
                                d'16 * 2
                                [
                                (
                                - \tweak circled-tip ##t
                                \>
                                d'16 * 2
                                d'16 * 2
                                d'16 * 2
                                \!
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
                                \voiceTwo
                                d'2
                                - \accent
                                \override Staff.Accidental.X-extent = ##f
                            }
                        >>
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 3/2
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 3/4
                        s1 * 3/16
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 11/4
                        s1 * 7/4
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \afterGrace
                        s1 * 3/2
                        \sustainOn
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        r8.
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                        [
                        \sustainOn
                        \ottava -1
                        \clef "bass"
                        af,,16
                        \f
                        r8.
                        \sustainOff
                        a,,16
                        \pp
                        r8.
                        b,,,16
                        ]
                        \ottava 0
                        <<
                            \context Voice = "RhythmMaker.Music temp"
                            {
                                \once \override Staff.DynamicText.X-extent = ##f
                                \once \override Staff.DynamicText.X-offset = -1
                                \revert Staff.Accidental.X-extent
                                \voiceOne
                                <ds! a! bf!>8.
                                ^ \p
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Tasten ) }
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.X-extent
                                <c'! ds'! gs'! b'!>2.
                                ^ \p
                                ~
                                <c' ds' gs' b'>2
                                \override Staff.Accidental.X-extent = ##f
                                \once \override Staff.DynamicText.X-extent = ##f
                                \once \override Staff.DynamicText.X-offset = -1
                                \revert Staff.Accidental.X-extent
                                <ds! a! bf!>4
                                ^ \p
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.X-extent
                                <c'! ds'! gs'! b'!>1..
                                ^ \p
                                ~
                                <c' ds' gs' b'>2
                                ~
                                <c' ds' gs' b'>2
                                \override Staff.Accidental.X-extent = ##f
                                \revert Staff.Accidental.X-extent
                                <ds! a! bf!>1..
                                ^ \p
                                \override Staff.Accidental.X-extent = ##f
                            }
                            \context Voice = "epsilon intermittent voice 2"
                            {
                                \ottava -1
                                \voiceTwo
                                df,,8.
                                \fff
                                \ottava 0
                                e,2.
                                \ff
                                ~
                                e,2
                                \ottava -1
                                df,,4
                                \fff
                                \ottava 0
                                b,,,1..
                                \fff
                                ~
                                b,,,2
                                ~
                                b,,,2
                                \ottava -1
                                df,,1..
                                \fff
                                \ottava 0
                            }
                        >>
                        \oneVoice
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 5/4
                        \sustainOn
                        r2.
                        \staff-line-count 1
                        \clef "percussion"
                        c'4
                            ^ #(make-dynamic-script (markup #:whiteout #:italic "s. mf"))
                        ^ \tenuto
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Styroporkugel auf dem Innenrahmen }
                        c'4
                        ^ \p
                        c'4
                            ^ #(make-dynamic-script (markup #:whiteout #:italic "s. mf"))
                        ^ \tenuto
                        c'4
                        ^ \p
                        c'4
                        c'4
                        c'4
                        \sustainOff
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
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
                        R1 * 3/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/16
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
                        R1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 11/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        \stopStaff \startStaff
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
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
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
                    R1 * 3/2
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    \afterGrace
                    a'4.
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        a'16
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \revert Staff.Accidental.X-extent
                    \afterGrace
                    a4.
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        a16
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \override Staff.Accidental.X-extent = ##f
                    \revert Staff.Accidental.X-extent
                    \afterGrace
                    a'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        a'16
                    }
                    \override Staff.Accidental.X-extent = ##f
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
                    R1 * 1/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 11/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    f1
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
                    f4
                    ~
                    f1
                    ~
                    f4
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    c'1
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
                    \afterGrace
                    c'4
                    {
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        g16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
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
