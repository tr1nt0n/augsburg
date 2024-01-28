    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            ^ \markup {
              \raise #7 \with-dimensions-from \null
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
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            - \tweak padding #14
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"97" #"1" #"2"  ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4"  [\abjad-metric-modulation-tuplet-lhs #2 #0 #26 #37 #2 #0 #'(1 . 1)] } }
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
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \staff-line-count 1
                        \once \override Stem.direction = #down
                        \clef "percussion"
                        c'4
                        - \accent
                        \p
                        - \tweak color \四
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER AUS ) }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Magnet rechts }
                        \once \override Stem.direction = #down
                        c'2
                        - \accent
                        \mp
                        \once \override Stem.direction = #down
                        c'2
                        - \accent
                        \mf
                        ~
                        \once \override Stem.direction = #down
                        c'4
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 8/3
                                [
                                (
                                c'16 * 8/3
                                ^ \p
                                c'16 * 8/3
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'2
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "( mf )"))
                                - \accent
                                ~
                                \once \override Stem.direction = #down
                                c'8
                            }
                        >>
                        \once \override Stem.direction = #down
                        c'8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "( mf )"))
                        - \accent
                        ~
                        \once \override Stem.direction = #down
                        c'8
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2/5
                                [
                                (
                                c'16 * 2/5
                                ^ \p
                                c'16 * 2/5
                                c'16 * 2/5
                                c'16 * 2/5
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "( mf )"))
                                - \accent
                            }
                        >>
                        \staff-line-count 2
                        \clef "percussion"
                        d'4.
                        \p
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { 1. Magnet rechts } \line { 2. Magnet links }  } }
                        b8
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        [
                        d'16
                        - \accent
                        \mf
                        ~
                        d'16
                        \revert Staff.Stem.stemlet-length
                        b16
                        \p
                        ]
                        ~
                        b16
                        d'4..
                        - \accent
                        \mf
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8
                        [
                        \revert Staff.Stem.stemlet-length
                        b8
                        \mp
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b8
                        [
                        b32
                        \f
                        - \tweak stencil #constante-hairpin
                        \<
                        \revert Staff.Stem.stemlet-length
                        b16.
                        - \accent
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b16.
                        [
                        b32
                        - \accent
                        ~
                        \revert Staff.Stem.stemlet-length
                        b8
                        ]
                        ~
                        b4.
                        d'8
                        \mp
                        ~
                        d'2
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        b16
                        \ff
                        ]
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b8
                        [
                        d'16.
                        - \accent
                        \revert Staff.Stem.stemlet-length
                        b32
                        \p
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b32
                        [
                        \revert Staff.Stem.stemlet-length
                        b8..
                        - \accent
                        ]
                        r2
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                        \times 6/5
                        {
                            r4.
                            \staff-line-count 5
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
                            >4
                            :32
                            - \espressivo
                            \p
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Cluster: Die Saiten } \line { in der höchsten Oktave } \line { auf ihrer Rückseite anschlagen }  } }
                            ~
                        }
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
                        >4
                        :32
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
                        >4.
                        :32
                        - \espressivo
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'!8
                        ^ \markup \center-align { \concat { -15 } }
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Note: Nagel + Vibrator }  } }
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'4.
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
                        >8
                        :64
                        - \espressivo
                        ~
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
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
                            >4
                            :32
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
                            >4.
                            :32
                            - \espressivo
                            ~
                        }
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
                        >8
                        :64
                        \once \override Voice.Accidental.font-size = 5
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'!4.
                        ^ \markup \center-align { \concat { -15 } }
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
                        >4
                        :32
                        - \espressivo
                        ~
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                        \times 6/5
                        {
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
                            >4
                            :32
                            \once \override Voice.Accidental.font-size = 5
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                            bf'!4.
                            ^ \markup \center-align { \concat { -15 } }
                            ~
                        }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'2
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'2
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \flat-one-syntonic-comma-up  }
                        bf'2.
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
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \staff-line-count 1
                        \clef "percussion"
                        c'2.
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "pp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Styroporkugel auf dem Innenrahmen }
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
                        c'4..
                        r16
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        c'4...
                        - \accent
                        \f
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Magnet links }
                        c'32
                        - \accent
                        ~
                        c'4
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        c'16.
                        [
                        c'32
                        - \accent
                        ~
                        \revert leftHandStaff.Stem.stemlet-length
                        c'8
                        ]
                        ~
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        c'32
                        [
                        c'16.
                        - \accent
                        ~
                        c'32
                        \revert leftHandStaff.Stem.stemlet-length
                        c'16.
                        - \accent
                        ]
                        r1
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Magnetgruppe mit der Handfläche }
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2/3
                                [
                                (
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
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4
                                - \espressivo
                                \mp
                                ~
                                \once \override Stem.direction = #down
                                c'8
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2/7
                                [
                                (
                                c'16 * 2/7
                                c'16 * 2/7
                                c'16 * 2/7
                                c'16 * 2/7
                                c'16 * 2/7
                                c'16 * 2/7
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                                - \espressivo
                                \mf
                                ~
                                \once \override Stem.direction = #down
                                c'8
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 14/5
                                [
                                (
                                c'16 * 14/5
                                c'16 * 14/5
                                c'16 * 14/5
                                c'16 * 14/5
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'2..
                                - \espressivo
                                \p
                                ~
                                \once \override Stem.direction = #down
                                c'8
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 1/2
                                [
                                (
                                c'16 * 1/2
                                c'16 * 1/2
                                c'16 * 1/2
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                                - \espressivo
                                \pp
                                ~
                                \once \override Stem.direction = #down
                                c'2
                                ~
                                \once \override Stem.direction = #down
                                c'4
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 4/3
                                [
                                (
                                c'16 * 4/3
                                c'16 * 4/3
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4
                                - \espressivo
                                \mf
                                ~
                                \once \override Stem.direction = #down
                                c'4.
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 2
                                [
                                (
                                c'16 * 2
                                c'16 * 2
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4.
                                - \espressivo
                                \f
                                ~
                                \once \override Stem.direction = #down
                                c'8
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 6/5
                                [
                                (
                                c'16 * 6/5
                                c'16 * 6/5
                                c'16 * 6/5
                                c'16 * 6/5
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4.
                                - \espressivo
                                \pp
                                ~
                                \once \override Stem.direction = #down
                                c'4.
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 7/2
                                [
                                (
                                c'16 * 7/2
                                c'16 * 7/2
                                c'16 * 7/2
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'2..
                                - \espressivo
                                \p
                            }
                        >>
                        \once \override Stem.direction = #down
                        c'1
                        :32
                        - \espressivo
                        \f
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
                                  %! abjad.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 4/7
                                [
                                (
                                c'16 * 4/7
                                c'16 * 4/7
                                c'16 * 4/7
                                c'16 * 4/7
                                c'16 * 4/7
                                c'16 * 4/7
                                )
                                ]
                                \revert Beam.length-fraction
                                \revert Beam.length-fraction
                                \revert Beam.thickness
                                \revert Beam.thickness
                            }
                            \context Voice = "RhythmMaker.Music Anchor"
                            {
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4
                                - \espressivo
                                \mp
                            }
                        >>
                        \staff-line-count 5
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
                        >2.
                        :32
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Sim. wie das obere Notensystem }
                        ~
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
                        >2
                        :32
                        ~
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
                        >2.
                        :32
                        ~
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
                        >2
                        :32
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
                    }
                }
            >>
            \context lowPassStaff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \override Dots.staff-position = #2
                    a'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef1
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    \revert Dots.staff-position
                    a'16
                    \override Dots.staff-position = #2
                    a'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    d'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    c'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    d'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    b8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    c'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    b16
                    - \abjad-zero-padding-glissando
                    \glissando
                    \revert Dots.staff-position
                    g8
                    \override Dots.staff-position = #2
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
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
                    a32
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16
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
                    f32
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a32
                    - \abjad-zero-padding-glissando
                    \glissando
                    f16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f32
                    - \abjad-zero-padding-glissando
                    \glissando
                    \revert Dots.staff-position
                    g32
                    \override Dots.staff-position = #2
                    ef1
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
                    ef4
                    ~
                    ef1
                    ~
                    ef4
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    g'1
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
                    g'4
                    ~
                    g'1
                    ~
                    \afterGrace
                    g'4
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
                        f16
                    }
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
