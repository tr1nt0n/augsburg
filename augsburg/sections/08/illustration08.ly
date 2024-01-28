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
            - \tweak padding #17
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
                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "( p )"))
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
                                \grace {
                                    \once \override Flag.stroke-style = #"grace" 
                                    \once \override Flag.stroke-style = #"grace" 
                                    \stemUp
                                    c'16
                                    ^ \p
                                    \stemNeutral
                                }
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'2
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "( mf )"))
                                - \accent
                                ~
                                \once \override Stem.direction = #down
                                \afterGrace
                                c'8
                                {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
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
                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "( p )"))
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
                                \grace {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    ^ \p
                                    [
                                    (
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                \afterGrace
                                c'8
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "( mf )"))
                                - \accent
                                {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
                            }
                        >>
                        \staff-line-count 2
                        \clef "percussion"
                        d'4.
                        \p
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { 1. Magnet rechts } \line { 2. Magnet links }  } }
                        b8
                        ~
                        b16
                        d'16
                        - \accent
                        \mf
                        ~
                        d'16
                        b16
                        \p
                        ~
                        b16
                        d'4..
                        - \accent
                        \mf
                        ~
                        d'8
                        b8
                        \mp
                        ~
                        b8
                        b32
                        \f
                        - \tweak stencil #constante-hairpin
                        \<
                        b16.
                        - \accent
                        ~
                        b16.
                        b32
                        - \accent
                        ~
                        b8
                        ~
                        b4.
                        d'8
                        \mp
                        ~
                        d'2
                        ~
                        d'8.
                        b16
                        \ff
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        b8
                        d'16.
                        - \accent
                        b32
                        \p
                        ~
                        b32
                        b8..
                        - \accent
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
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
                        c'16.
                        c'32
                        - \accent
                        ~
                        c'8
                        ~
                        c'32
                        c'16.
                        - \accent
                        ~
                        c'32
                        c'16.
                        - \accent
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
                                \grace {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'4
                                - \espressivo
                                \mp
                                ~
                                \once \override Stem.direction = #down
                                \afterGrace
                                c'8
                                {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
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
                                \grace {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                                - \espressivo
                                \mf
                                ~
                                \once \override Stem.direction = #down
                                \afterGrace
                                c'8
                                {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
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
                                \grace {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                c'2..
                                - \espressivo
                                \p
                                ~
                                \once \override Stem.direction = #down
                                \afterGrace
                                c'8
                                {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
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
                                \grace {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
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
                                \afterGrace
                                c'4
                                {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
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
                                \grace {
                                    \my-hack-slash
                                    \my-hack-slash
                                    \stemUp
                                    c'16
                                    [
                                    (
                                    c'16
                                    c'16
                                    c'16
                                    )
                                    ]
                                    \stemNeutral
                                }
                                \once \override Stem.direction = #down
                                  %! abjad.on_beat_grace_container(4)
                                \voiceTwo
                                \afterGrace
                                c'4
                                - \espressivo
                                \mf
                                {
                                    \once \override Flag.stroke-style = #"grace" 
                                    \once \override Flag.stroke-style = #"grace" 
                                    \stemUp
                                    c'16
                                    \stemNeutral
                                }
                            }
                        >>
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 5/4
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
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
