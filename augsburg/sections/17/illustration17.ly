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
            \time 37/4
            s1 * 37/4
            ^ \markup {
              \raise #15 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #13 #16 #2 #0 #'(1 . 1)]
              }
            }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \very-long-fermata
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
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 26 37) (ly:make-duration 4 0))
                                \times 37/26
                                {
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
                                    \override Dots.staff-position = #2
                                    \override DynamicText.color = \三
                                    \revert Staff.Accidental.X-extent
                                    \clef "treble"
                                    \voiceTwo
                                    r8
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    [
                                    (
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 26 37) (ly:make-duration 4 0))
                                \times 37/26
                                {
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak color \三
                                    - \tenuto
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 26 37) (ly:make-duration 4 0))
                                \times 37/26
                                {
                                    <e' a' d''>8
                                    )
                                    \override Staff.Accidental.X-extent = ##f
                                    r1.
                                }
                                r\breve
                                r4
                                r16
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
                            }
                            \context Voice = "35 voice"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 37) (ly:make-duration 4 0))
                                \times 37/35
                                {
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
                                    \override Dots.staff-position = #2
                                    \override DynamicText.color = \一
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceOne
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    [
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \一 { \musicglyph #"f" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpan
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <fs' g' as' b' cs''>16
                                    - \tweak color \一
                                    - \accent
                                    - \tweak color \一
                                    - \staccato
                                    \stopTextSpan
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r\breve
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r4
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r16
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r\breve
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r4
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r16
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r\breve
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r4
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r16
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
                            }
                        >>
                        \oneVoice
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 37/4
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
                            \context Voice = "piano 3 voice temp"
                            {
                                \once \override NoteHead.no-ledgers = ##t
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
                                \override Dots.staff-position = #2
                                \override DynamicText.color = \四
                                \slapped
                                \clef "bass"
                                \voiceTwo
                                g,,,64
                                - \tweak direction #UP
                                \laissezVibrer
                                _ \pp
                                - \tweak stencil #constante-hairpin
                                _ \<
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r2
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r16
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,64
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r2
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r16
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,64
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r2
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r16
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,64
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r2
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r16
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,64
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r2
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r16
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,64
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r2
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r16
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,32
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r1
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r8
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,32
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r1
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r8
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,32
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r1
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r8
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,32
                                - \tweak direction #UP
                                \laissezVibrer
                                \sustainOn
                                \once \override Rest.staff-position = #-20
                                r1
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r8
                                \once \override NoteHead.no-ledgers = ##t
                                g,,,32
                                - \tweak direction #UP
                                \laissezVibrer
                                \!
                                \sustainOn
                                \revert-noteheads
                                \once \override Rest.staff-position = #-20
                                r1
                                \sustainOff
                                \once \override Rest.staff-position = #-20
                                r8
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
                            }
                            \context Voice = "4 voice"
                            {
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
                                \override Dots.staff-position = #2
                                \override DynamicText.color = \二
                                \voiceOne
                                <c,, c,>4
                                - \tweak color \二
                                - \marcato
                                - \tweak padding #6.5
                                - \abjad-solid-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \二 { \musicglyph #"m" \musicglyph #"f" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -3
                                \startTextSpan
                                <e,, e,>4
                                - \tweak color \二
                                - \marcato
                                <a,, a,>4
                                - \tweak color \二
                                - \marcato
                                <bf,, bf,>4
                                - \tweak color \二
                                - \marcato
                                <f,, f,>4
                                - \tweak color \二
                                - \marcato
                                <af,, af,>4
                                - \tweak color \二
                                - \marcato
                                <g, g>4
                                - \tweak color \二
                                - \marcato
                                <b, b>4
                                - \tweak color \二
                                - \marcato
                                <d,, d,>4
                                - \tweak color \二
                                - \marcato
                                <ef,, ef,>4
                                - \tweak color \二
                                - \marcato
                                <gf,, gf,>4
                                - \tweak color \二
                                - \marcato
                                <df, df>4
                                - \tweak color \二
                                - \marcato
                                <c,, c,>4
                                - \tweak color \二
                                - \marcato
                                <e,, e,>4
                                - \tweak color \二
                                - \marcato
                                <a,, a,>4
                                - \tweak color \二
                                - \marcato
                                <bf,, bf,>4
                                - \tweak color \二
                                - \marcato
                                <f,, f,>4
                                - \tweak color \二
                                - \marcato
                                <af,, af,>4
                                - \tweak color \二
                                - \marcato
                                <g, g>4
                                - \tweak color \二
                                - \marcato
                                <b, b>4
                                - \tweak color \二
                                - \marcato
                                <d,, d,>4
                                - \tweak color \二
                                - \marcato
                                <ef,, ef,>4
                                - \tweak color \二
                                - \marcato
                                <gf,, gf,>4
                                - \tweak color \二
                                - \marcato
                                <df, df>4
                                - \tweak color \二
                                - \marcato
                                <c,, c,>4
                                - \tweak color \二
                                - \marcato
                                <e,, e,>4
                                - \tweak color \二
                                - \marcato
                                <a,, a,>4
                                - \tweak color \二
                                - \marcato
                                \stopTextSpan
                                r\breve
                                r2
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
                            }
                        >>
                        \oneVoice
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
                        R1 * 37/4
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
                    R1 * 37/4
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
