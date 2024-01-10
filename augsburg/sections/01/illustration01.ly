  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/augsburg/augsburg/build/augsburg-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            - \tweak color \四
            - \tweak padding #10
            - \abjad-solid-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \with-color \四 \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line {{ ( ZUSPIEL ) }} \hspace #0.5 }
            - \tweak bound-details.right.padding -45
            \startTextSpan
            ^ \markup {
              \raise #13.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-markup #2 #0 #2 #"77" 
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.BarLine.transparent = ##f
            \tweak text "×3" \startMeasureSpanner
            \bar ".|:"
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \stopMeasureSpanner
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \stopTextSpan
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
                        \key cs \minor
                        \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                        s1 * 1
                        s1 * 1
                        cs'4
                        :32
                        \pp
                        - \tweak color \四
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER EIN ) }
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        gs'2
                        :32
                        )
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a'8
                            :64
                            - \accent
                            \mf
                            [
                            (
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            b'8
                            :64
                            \revert Staff.Stem.stemlet-length
                            a'8
                            :64
                            ]
                        }
                        gs'4
                        :32
                        \pp
                        )
                        \grace {
                            \my-hack-slash
                            g'16
                                _ #(make-dynamic-script (markup #:whiteout #:italic "s. f"))
                            - \accent
                            [
                            (
                            fs'16
                            )
                            ]
                        }
                        \once \override Dots.staff-position = #2
                        \revert Staff.Accidental.X-extent
                        \afterGrace
                        gs'2.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. pp"))
                        :32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \<
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            gs'16
                            :128
                            \ff
                        }
                        \override Staff.Accidental.X-extent = ##f
                        \key fs \major
                        \revert Staff.Accidental.X-extent
                        \revert Staff.Accidental.X-extent
                        <as cs' fs' as'>4..
                        - \tenuto
                        \p
                        - \tweak color \四
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER AUS ) }
                        \breathe
                        \override Staff.Accidental.X-extent = ##f
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <fs as d' fs'>16
                        - \tenuto
                        \mp
                        ~
                        <fs as d' fs'>2
                        \breathe
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <fs b ds' f'>4
                        - \tenuto
                        \arpeggio
                        \f
                        (
                        \<
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <as cs' ds' fss'>4
                        - \tenuto
                        \arpeggio
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <a c' fs' gs'>2
                        - \accent
                        \ff
                        )
                        \override Staff.Accidental.X-extent = ##f
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
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \key cs \minor
                        \clef "bass"
                        s1 * 1
                        s1 * 1
                        \once \override Accidental.stencil = ##f
                        \once \override Staff.StemTremolo.direction = #DOWN
                        \revert Staff.Accidental.X-extent
                        <cs,, cs,>1
                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffpp"))
                        :32
                        \arpeggio
                        \laissezVibrer
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \sustainOn
                        \override Staff.Accidental.X-extent = ##f
                        r16
                        \ff
                        \staff-line-count 1
                        \once \override Accidental.stencil = ##f
                        \clef "percussion"
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        c'16
                        - \accent
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tastaturabdeckung }
                        [
                        ~
                        \once \override Accidental.stencil = ##f
                        c'16
                        \once \override Accidental.stencil = ##f
                        \revert leftHandStaff.Stem.stemlet-length
                        c'16
                        \mp
                        ]
                        \<
                        \once \override Accidental.stencil = ##f
                        \override leftHandStaff.Stem.stemlet-length = 0.75
                        c'16
                        [
                        \once \override Accidental.stencil = ##f
                        c'16
                        - \accent
                        \ff
                        ~
                        \once \override Accidental.stencil = ##f
                        \revert leftHandStaff.Stem.stemlet-length
                        c'16
                        ]
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
                                        c'4.
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
                            \once \override Accidental.stencil = ##f
                            \once \override Beam.grow-direction = #right
                            c'32 * 117/32
                            \p
                            [
                            \<
                            \once \override Accidental.stencil = ##f
                            c'32 * 99/32
                            \once \override Accidental.stencil = ##f
                            c'32 * 69/32
                            \once \override Accidental.stencil = ##f
                            c'32 * 13/8
                            \once \override Accidental.stencil = ##f
                            \set suggestAccidentals = ##t
                            c'32 * 47/32
                            ]
                        }
                        \revert TupletNumber.text
                        \once \override Accidental.stencil = ##f
                        c'8.
                        - \accent
                        \ff
                        \sustainOff
                        \set suggestAccidentals = ##f
                        \staff-line-count 5
                        \key fs \major
                        \revert Staff.Accidental.X-extent
                        \clef "bass"
                        <fs,, cs, fs,>4..
                        - \tenuto
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <as,, fs, as,>16
                        - \tenuto
                        ~
                        <as,, fs, as,>2
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <b,, fs, b,>4
                        - \tenuto
                        \arpeggio
                        (
                        \override Staff.Accidental.X-extent = ##f
                        \arpeggioArrowUp
                        \revert Staff.Accidental.X-extent
                        <gs,, ds, gs,>4
                        - \tenuto
                        \arpeggio
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <d, a, d>2
                        - \accent
                        )
                        \override Staff.Accidental.X-extent = ##f
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
                    }
                }
            >>
            \context lowPassStaff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \set Staff.instrumentName = \markup \with-color \一 \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tiefpassfilter }
                    g1
                    - \abjad-zero-padding-glissando
                    \glissando
                    g2
                    - \abjad-zero-padding-glissando
                    \glissando
                    g4
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'4
                    - \abjad-zero-padding-glissando
                    \glissando
                    g1
                    - \abjad-zero-padding-glissando
                    \glissando
                    g2
                    - \abjad-zero-padding-glissando
                    \glissando
                    b2
                    - \abjad-zero-padding-glissando
                    \glissando
                    g2.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \afterGrace
                    b4
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        a'16
                    }
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
}
