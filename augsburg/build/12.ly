    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/4
            s1 * 5/4
            ^ \markup {
              \raise #10 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"138" #"3" #"4" 
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
                        <<
                            \context Voice = "piano 1 voice temp"
                            {
                                \revert Staff.Accidental.X-extent
                                \voiceOne
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
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <c' ds' gs' b'>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef' a bf>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b c' f' bf'>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <gs' c'' f' a'>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <g' c' df'>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <gs' c'' f' a'>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b c' f' bf'>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef' a bf>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b c' f' bf'>8
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
                            <ef' a bf>16 * 125/64
                            [
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <c' ds' gs' b'>16 * 123/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef' a bf>16 * 59/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b c' f' bf'>16 * 55/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef' a bf>16 * 101/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <c' ds' gs' b'>16 * 23/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g' c' df'>16 * 83/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <c' ds' gs' b'>16 * 19/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g' c' df'>16 * 69/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <gs' c'' f' a'>16 * 1
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g' c' df'>16 * 59/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <gs' c'' f' a'>16 * 7/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b c' f' bf'>16 * 53/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef' a bf>16 * 13/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <c' ds' gs' b'>16 * 25/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g c' df'>16 * 49/64
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
                        <fs,! c! cs! ef!>16
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
                        <g,! c! cs! e!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! e! fs! g!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <a,! c! cs!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af,! ef! e! fs!>16
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
                        <ef! c!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! e! fs! g!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! c! cs! ef!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <af,! e! fs!>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,! cs! e! af!>16
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
                            <ef,!>16 * 3/4
                            [
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <fs,! c! cs! ef!>16 * 3/4
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! g! af!>16 * 49/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! c! cs! ef!>16 * 25/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! e! fs!>16 * 13/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! c! cs! ef!>16 * 55/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! cs! ef! fs!>16 * 29/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! ef! e!>16 * 63/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <g,! c! cs! e!>16 * 17/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! e! fs! g!>16 * 37/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <a,! c! cs!>16 * 5/4
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! ef! e! fs!>16 * 11/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! c! ef!>16 * 3/2
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <af,! cs! e! fs!>16 * 13/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,! fs! g! af!>16 * 111/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <ef'! c'!>16 * 117/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b! e'! fs'! g'!>16 * 119/64
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
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 7/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 53/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <f,, f,>16 * 13/16
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
                        <f,, f,>16
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
                        <cs,, cs,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <b,,, b,,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <f,, f,>16
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <ef,, ef,>16
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
                        <b,,, b,,>16
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
                        <b,,, b,,>16
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
                            <cs,, cs,>16 * 3/4
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
                            <cs,, cs,>16 * 29/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 63/64
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 17/16
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <e,, e,>16 * 37/32
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 5/4
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <e,, e,>16 * 11/8
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <cs,, cs,>16 * 3/2
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                            <b,,, b,,>16 * 13/8
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
                        <ef,, ef,>8
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <f,, f,>8
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
