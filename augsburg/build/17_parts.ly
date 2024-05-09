    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((Y-offset . 100))
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \very-long-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \time 5/8
            s1 * 5/8
            - \tweak padding 20
            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #3 { \center-column { \line { Endstück: } \line { Paraphog. }  } }
            ^ \markup {
              \raise #31 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #32 #35 #2 #0 #'(1 . 1)]
              }
            }
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \time 3/4
            s1 * 3/4
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \time 7/8
            s1 * 7/8
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \short-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \extremely-long-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \extremely-long-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \extremely-long-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \tweak text "×9" \startMeasureSpanner
            \bar ".|:"
            \time 9/8
            s1 * 9/8
            \bar ":|."
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \time 2/4
            s1 * 1/2
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \very-long-fermata
            \bar "|."
            \revert Score.BarLine.color
            \revert Score.SpanBar.color
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
                                      %! +SCORE
                                %%% \override NoteHead.details.interrupt-color = \三
                                      %! +SCORE
                                %%% \override NoteHead.details.switch-color = \三
                                      %! +SCORE
                                %%% \override NoteHead.details.folow-color = \三
                                      %! +SCORE
                                %%% \override NoteHead.details.hocket-color = \三
                                      %! +SCORE
                                %%% \override Accidental.color = \三
                                      %! +SCORE
                                %%% \override Beam.color = \三
                                      %! +SCORE
                                %%% \override Dots.color = \三
                                      %! +SCORE
                                %%% \override Flag.color = \三
                                      %! +SCORE
                                %%% \override Glissando.color = \三
                                      %! +SCORE
                                %%% \override MultiMeasureRest.color = \三
                                      %! +SCORE
                                %%% \override NoteHead.color = \三
                                      %! +SCORE
                                %%% \override RepeatTie.color = \三
                                      %! +SCORE
                                %%% \override Rest.color = \三
                                      %! +SCORE
                                %%% \override Slur.color = \三
                                      %! +SCORE
                                %%% \override Stem.color = \三
                                      %! +SCORE
                                %%% \override StemTremolo.color = \三
                                      %! +SCORE
                                %%% \override Tie.color = \三
                                      %! +SCORE
                                %%% \override TupletBracket.color = \三
                                      %! +SCORE
                                %%% \override TupletNumber.color = \三
                                      %! +SCORE
                                %%% \override Dots.staff-position = #2
                                      %! +SCORE
                                %%% \override DynamicText.color = \三
                                    \revert Staff.Accidental.X-extent
                                    \clef "treble"
                                    \voiceTwo
                                    r8
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    [
                                    (
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 26 37) (ly:make-duration 4 0))
                                \times 37/26
                                {
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
                                    <e' a' d''>8
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                      %! +PARTS
                                    - \tenuto
                                      %! +SCORE
                                %%% - \tweak color \三
                                      %! +SCORE
                                %%% - \tenuto
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
                                  %! +SCORE
                            %%% \revert Accidental.color
                                  %! +SCORE
                            %%% \revert Beam.color
                                  %! +SCORE
                            %%% \revert Dots.color
                                  %! +SCORE
                            %%% \revert Flag.color
                                  %! +SCORE
                            %%% \revert Glissando.color
                                  %! +SCORE
                            %%% \revert MultiMeasureRest.color
                                  %! +SCORE
                            %%% \revert NoteHead.color
                                  %! +SCORE
                            %%% \revert RepeatTie.color
                                  %! +SCORE
                            %%% \revert Rest.color
                                  %! +SCORE
                            %%% \revert Slur.color
                                  %! +SCORE
                            %%% \revert Stem.color
                                  %! +SCORE
                            %%% \revert StemTremolo.color
                                  %! +SCORE
                            %%% \revert Tie.color
                                  %! +SCORE
                            %%% \revert TupletBracket.color
                                  %! +SCORE
                            %%% \revert TupletNumber.color
                                  %! +SCORE
                            %%% \revert DynamicText.color
                                  %! +SCORE
                            %%% \revert Dots.staff-position
                            }
                            \context Voice = "35 voice"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 37) (ly:make-duration 4 0))
                                \times 37/35
                                {
                                      %! +SCORE
                                %%% \override NoteHead.details.interrupt-color = \一
                                      %! +SCORE
                                %%% \override NoteHead.details.switch-color = \一
                                      %! +SCORE
                                %%% \override NoteHead.details.folow-color = \一
                                      %! +SCORE
                                %%% \override NoteHead.details.hocket-color = \一
                                      %! +SCORE
                                %%% \override Accidental.color = \一
                                      %! +SCORE
                                %%% \override Beam.color = \一
                                      %! +SCORE
                                %%% \override Dots.color = \一
                                      %! +SCORE
                                %%% \override Flag.color = \一
                                      %! +SCORE
                                %%% \override Glissando.color = \一
                                      %! +SCORE
                                %%% \override MultiMeasureRest.color = \一
                                      %! +SCORE
                                %%% \override NoteHead.color = \一
                                      %! +SCORE
                                %%% \override RepeatTie.color = \一
                                      %! +SCORE
                                %%% \override Rest.color = \一
                                      %! +SCORE
                                %%% \override Slur.color = \一
                                      %! +SCORE
                                %%% \override Stem.color = \一
                                      %! +SCORE
                                %%% \override StemTremolo.color = \一
                                      %! +SCORE
                                %%% \override Tie.color = \一
                                      %! +SCORE
                                %%% \override TupletBracket.color = \一
                                      %! +SCORE
                                %%% \override TupletNumber.color = \一
                                      %! +SCORE
                                %%% \override Dots.staff-position = #2
                                      %! +SCORE
                                %%% \override DynamicText.color = \一
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceOne
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    [
                                      %! +SCORE
                                %%% - \tweak padding #13.5
                                      %! +SCORE
                                %%% - \abjad-solid-line-with-hook
                                      %! +SCORE
                                %%% - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \一 { \musicglyph #"f" } \hspace #0.5 }
                                      %! +SCORE
                                %%% - \tweak bound-details.right.padding -3
                                      %! +SCORE
                                %%% \startTextSpan
                                      %! +PARTS
                                    - \tweak padding #13.5
                                      %! +PARTS
                                    - \abjad-solid-line-with-hook
                                      %! +PARTS
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 { \musicglyph #"f" } \hspace #0.5 }
                                      %! +PARTS
                                    - \tweak bound-details.right.padding -3
                                      %! +PARTS
                                    \startTextSpan
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <fs' g' as' b' cs''>16
                                      %! +PARTS
                                    - \accent
                                      %! +PARTS
                                    - \staccato
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \accent
                                      %! +SCORE
                                %%% - \tweak color \一
                                      %! +SCORE
                                %%% - \staccato
                                      %! +SCORE
                                %%% \stopTextSpan
                                      %! +PARTS
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
                                  %! +SCORE
                            %%% \revert Accidental.color
                                  %! +SCORE
                            %%% \revert Beam.color
                                  %! +SCORE
                            %%% \revert Dots.color
                                  %! +SCORE
                            %%% \revert Flag.color
                                  %! +SCORE
                            %%% \revert Glissando.color
                                  %! +SCORE
                            %%% \revert MultiMeasureRest.color
                                  %! +SCORE
                            %%% \revert NoteHead.color
                                  %! +SCORE
                            %%% \revert RepeatTie.color
                                  %! +SCORE
                            %%% \revert Rest.color
                                  %! +SCORE
                            %%% \revert Slur.color
                                  %! +SCORE
                            %%% \revert Stem.color
                                  %! +SCORE
                            %%% \revert StemTremolo.color
                                  %! +SCORE
                            %%% \revert Tie.color
                                  %! +SCORE
                            %%% \revert TupletBracket.color
                                  %! +SCORE
                            %%% \revert TupletNumber.color
                                  %! +SCORE
                            %%% \revert DynamicText.color
                                  %! +SCORE
                            %%% \revert Dots.staff-position
                            }
                        >>
                        \oneVoice
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        <<
                            \context Voice = "piano 1 voice temp 1"
                            {
                                \override Dots.staff-position = #2
                                \voiceTwo
                                c'4.
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
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
                                    \once \override Flag.stroke-style = #"grace" 
                                    \revert Dots.staff-position
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
                            \context Voice = "sounding voice 1"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                                \times 5/6
                                {
                                    \once \override Staff.Clef.X-extent = ##f
                                    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                    \override Dots.staff-position = #2
                                    \staff-line-count 1
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \clef "percussion"
                                    \voiceOne
                                    c''4
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
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Maultrommel + Vibrator }
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #23.65
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \jawharp-crook \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    f''4
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
                                    \>
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \afterGrace
                                    g'4
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
                                    \<
                                    {
                                        \once \override Flag.stroke-style = #"grace" 
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        g'16
                                        \!
                                        )
                                        \stopTextSpan
                                    }
                                }
                            }
                        >>
                        \oneVoice
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        <<
                            \context Voice = "piano 1 voice temp 2"
                            {
                                \override Dots.staff-position = #2
                                \voiceTwo
                                \afterGrace
                                c'2.
                                - \abjad-zero-padding-glissando
                                \glissando
                                {
                                    \once \override Flag.stroke-style = #"grace" 
                                    \revert Dots.staff-position
                                    c'16
                                }
                            }
                            \context Voice = "sounding voice 2"
                            {
                                \override Dots.staff-position = #2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \voiceOne
                                c''4
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
                                - \tweak padding #15
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \jawharp-crook \hspace #0.5 }
                                - \tweak bound-details.right.padding -2
                                \startTextSpan
                                \<
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                a''4
                                _ #(make-dynamic-script
                                    (markup
                                        #:whiteout
                                        #:line (
                                            #:general-align Y -2 #:normal-text #:larger "“"
                                            #:hspace -0.4
                                            #:dynamic "f"
                                            #:hspace -0.2
                                            #:general-align Y -2 #:normal-text #:larger "”"
                                            )
                                        )
                                    )
                                - \abjad-zero-padding-glissando
                                \glissando
                                \>
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \afterGrace
                                g'4
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
                                \<
                                {
                                    \once \override Flag.stroke-style = #"grace" 
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    g'16
                                    \!
                                    )
                                    \stopTextSpan
                                }
                            }
                        >>
                        \oneVoice
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        <<
                            \context Voice = "piano 1 voice temp 3"
                            {
                                \override Dots.staff-position = #2
                                \voiceTwo
                                \afterGrace
                                c'2..
                                - \abjad-zero-padding-glissando
                                \glissando
                                {
                                    \once \override Flag.stroke-style = #"grace" 
                                    \revert Dots.staff-position
                                    c'16
                                }
                            }
                            \context Voice = "sounding voice 3"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 3 0))
                                \times 7/6
                                {
                                    \override Dots.staff-position = #2
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \voiceOne
                                    c''4
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
                                    - \tweak padding #21.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \jawharp-crook \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    c'''4
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
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \>
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \afterGrace
                                    g'4
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
                                    \<
                                    {
                                        \once \override Flag.stroke-style = #"grace" 
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        g'16
                                        \!
                                        )
                                        \stopTextSpan
                                    }
                                }
                            }
                        >>
                        \oneVoice
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        c'4
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
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #15
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \jawharp-crook \hspace #0.5 }
                        \startTextSpan
                        \<
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        c'4
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
                        \stopTextSpan
                        - \tweak padding #15
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \jawharp-waist \hspace #0.5 }
                        \startTextSpan
                        \<
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        c'8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \stopTextSpan
                        - \tweak padding #15
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \jawharp-string \hspace #0.5 }
                        - \tweak bound-details.right.padding -1.5
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        c'8
                        \>
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            c'16
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
                            - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { ( Den Vibrator nach Beendigung der Phrase } \line { auf den Saiten in der Nähe der Maultrommel belassen ) }  } }
                            \stopTextSpan
                        }
                        r8
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-4.5 . 0)
                        \staff-line-count 5
                        \textSpannerDown
                        \clef "treble"
                        <a e' bf' d'' ef''>8
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
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Bogen mit Schmuckdraht, } \line { die Enden des Drahtes so weit wie möglich auseinander halten }  } }
                        [
                        - \tweak padding #15
                        - \abjad-dashed-line-with-up-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "so viel Draht wie möglich pro Bogen verwenden" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        \<
                        r8
                        <a e' bf' d'' ef''>8
                        r8
                        <a e' bf' d'' ef''>8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "mp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \>
                        r8
                        <a e' bf' d'' ef''>8
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
                        \stopTextSpan
                        ]
                        \textSpannerUp
                        r8
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        _ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { ( Entfernen des } \line { Vibrators aus } \line { den Saiten ) }  } }
                          %! +SCORE
                    %%% \stopStaff \startStaff
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
                            \once \override Beam.grow-direction = #right
                            \tweak style #'harmonic
                            c'''''32 * 15/4
                            \ppppp
                            - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { R.H. Tasten, } \line { L.H. Harmonisches Glissando } \line { auf der höchsten Saite }  } }
                            [
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            - \tweak stencil #constante-hairpin
                            \<
                            \once \override Dots.staff-position = #2
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            d'''''32 * 21/8
                            \once \override Dots.staff-position = #2
                            d'''''32 * 13/8
                            ]
                        }
                        \revert TupletNumber.text
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
                            \once \override Dots.staff-position = #2
                            \once \override Beam.grow-direction = #left
                            d'''''32 * 43/32
                            [
                            \once \override Dots.staff-position = #2
                            e'''''32 * 49/32
                            \once \override Dots.staff-position = #2
                            e'''''32 * 17/8
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            e'''''32 * 3
                            \!
                            ]
                        }
                        \revert TupletNumber.text
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                    }
                }
                \context timeSignatureStaff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 37/4
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 5/8
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 3/4
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 7/8
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 9/8
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
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
                                \once \override Voice.Accidental.stencil = ##f
                                  %! +SCORE
                            %%% \override NoteHead.details.interrupt-color = \四
                                  %! +SCORE
                            %%% \override NoteHead.details.switch-color = \四
                                  %! +SCORE
                            %%% \override NoteHead.details.folow-color = \四
                                  %! +SCORE
                            %%% \override NoteHead.details.hocket-color = \四
                                  %! +SCORE
                            %%% \override Accidental.color = \四
                                  %! +SCORE
                            %%% \override Beam.color = \四
                                  %! +SCORE
                            %%% \override Dots.color = \四
                                  %! +SCORE
                            %%% \override Flag.color = \四
                                  %! +SCORE
                            %%% \override Glissando.color = \四
                                  %! +SCORE
                            %%% \override MultiMeasureRest.color = \四
                                  %! +SCORE
                            %%% \override NoteHead.color = \四
                                  %! +SCORE
                            %%% \override RepeatTie.color = \四
                                  %! +SCORE
                            %%% \override Rest.color = \四
                                  %! +SCORE
                            %%% \override Slur.color = \四
                                  %! +SCORE
                            %%% \override Stem.color = \四
                                  %! +SCORE
                            %%% \override StemTremolo.color = \四
                                  %! +SCORE
                            %%% \override Tie.color = \四
                                  %! +SCORE
                            %%% \override TupletBracket.color = \四
                                  %! +SCORE
                            %%% \override TupletNumber.color = \四
                                  %! +SCORE
                            %%% \override Dots.staff-position = #2
                                  %! +SCORE
                            %%% \override DynamicText.color = \四
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                \once \override Voice.Accidental.stencil = ##f
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
                                  %! +SCORE
                            %%% \revert Accidental.color
                                  %! +SCORE
                            %%% \revert Beam.color
                                  %! +SCORE
                            %%% \revert Dots.color
                                  %! +SCORE
                            %%% \revert Flag.color
                                  %! +SCORE
                            %%% \revert Glissando.color
                                  %! +SCORE
                            %%% \revert MultiMeasureRest.color
                                  %! +SCORE
                            %%% \revert NoteHead.color
                                  %! +SCORE
                            %%% \revert RepeatTie.color
                                  %! +SCORE
                            %%% \revert Rest.color
                                  %! +SCORE
                            %%% \revert Slur.color
                                  %! +SCORE
                            %%% \revert Stem.color
                                  %! +SCORE
                            %%% \revert StemTremolo.color
                                  %! +SCORE
                            %%% \revert Tie.color
                                  %! +SCORE
                            %%% \revert TupletBracket.color
                                  %! +SCORE
                            %%% \revert TupletNumber.color
                                  %! +SCORE
                            %%% \revert DynamicText.color
                                  %! +SCORE
                            %%% \revert Dots.staff-position
                            }
                            \context Voice = "4 voice"
                            {
                                  %! +SCORE
                            %%% \override NoteHead.details.interrupt-color = \二
                                  %! +SCORE
                            %%% \override NoteHead.details.switch-color = \二
                                  %! +SCORE
                            %%% \override NoteHead.details.folow-color = \二
                                  %! +SCORE
                            %%% \override NoteHead.details.hocket-color = \二
                                  %! +SCORE
                            %%% \override Accidental.color = \二
                                  %! +SCORE
                            %%% \override Beam.color = \二
                                  %! +SCORE
                            %%% \override Dots.color = \二
                                  %! +SCORE
                            %%% \override Flag.color = \二
                                  %! +SCORE
                            %%% \override Glissando.color = \二
                                  %! +SCORE
                            %%% \override MultiMeasureRest.color = \二
                                  %! +SCORE
                            %%% \override NoteHead.color = \二
                                  %! +SCORE
                            %%% \override RepeatTie.color = \二
                                  %! +SCORE
                            %%% \override Rest.color = \二
                                  %! +SCORE
                            %%% \override Slur.color = \二
                                  %! +SCORE
                            %%% \override Stem.color = \二
                                  %! +SCORE
                            %%% \override StemTremolo.color = \二
                                  %! +SCORE
                            %%% \override Tie.color = \二
                                  %! +SCORE
                            %%% \override TupletBracket.color = \二
                                  %! +SCORE
                            %%% \override TupletNumber.color = \二
                                  %! +SCORE
                            %%% \override Dots.staff-position = #2
                                  %! +SCORE
                            %%% \override DynamicText.color = \二
                                \voiceOne
                                <c,, c,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                  %! +SCORE
                            %%% - \tweak padding #6.5
                                  %! +SCORE
                            %%% - \abjad-solid-line-with-hook
                                  %! +SCORE
                            %%% - \tweak bound-details.left.text \markup \concat { \fontsize #-2 \with-color \二 { \musicglyph #"m" \musicglyph #"f" } \hspace #0.5 }
                                  %! +SCORE
                            %%% - \tweak bound-details.right.padding -3
                                  %! +SCORE
                            %%% \startTextSpan
                                  %! +PARTS
                                - \tweak padding #6.5
                                  %! +PARTS
                                - \abjad-solid-line-with-hook
                                  %! +PARTS
                                - \tweak bound-details.left.text \markup \concat { \fontsize #-2 { \musicglyph #"m" \musicglyph #"f" } \hspace #0.5 }
                                  %! +PARTS
                                - \tweak bound-details.right.padding -3
                                  %! +PARTS
                                \startTextSpan
                                <e,, e,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <a,, a,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <bf,, bf,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <f,, f,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <af,, af,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <g, g>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <b, b>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <d,, d,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <ef,, ef,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <gf,, gf,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <df, df>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <c,, c,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <e,, e,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <a,, a,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <bf,, bf,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <f,, f,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <af,, af,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <g, g>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <b, b>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <d,, d,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <ef,, ef,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <gf,, gf,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <df, df>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <c,, c,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <e,, e,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                <a,, a,>4
                                  %! +PARTS
                                - \marcato
                                  %! +SCORE
                            %%% - \tweak color \二
                                  %! +SCORE
                            %%% - \marcato
                                  %! +SCORE
                            %%% \stopTextSpan
                                  %! +PARTS
                                \stopTextSpan
                                r\breve
                                r2
                                  %! +SCORE
                            %%% \revert Accidental.color
                                  %! +SCORE
                            %%% \revert Beam.color
                                  %! +SCORE
                            %%% \revert Dots.color
                                  %! +SCORE
                            %%% \revert Flag.color
                                  %! +SCORE
                            %%% \revert Glissando.color
                                  %! +SCORE
                            %%% \revert MultiMeasureRest.color
                                  %! +SCORE
                            %%% \revert NoteHead.color
                                  %! +SCORE
                            %%% \revert RepeatTie.color
                                  %! +SCORE
                            %%% \revert Rest.color
                                  %! +SCORE
                            %%% \revert Slur.color
                                  %! +SCORE
                            %%% \revert Stem.color
                                  %! +SCORE
                            %%% \revert StemTremolo.color
                                  %! +SCORE
                            %%% \revert Tie.color
                                  %! +SCORE
                            %%% \revert TupletBracket.color
                                  %! +SCORE
                            %%% \revert TupletNumber.color
                                  %! +SCORE
                            %%% \revert DynamicText.color
                                  %! +SCORE
                            %%% \revert Dots.staff-position
                            }
                        >>
                        \oneVoice
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \afterGrace
                        s1 * 5/8
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
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \afterGrace
                        s1 * 3/4
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
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \afterGrace
                        s1 * 7/8
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
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4
                        \sustainOn
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        <d,, d,>4
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                        - \accent
                        \laissezVibrer
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r8.
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        <d,, d,>16
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                        - \accent
                        \laissezVibrer
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r1
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \afterGrace
                        r8
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
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
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
                        R1 * 5/8
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
                        R1 * 7/8
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
                        R1 * 1/4
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
                        R1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 9/8
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
                        R1 * 1/2
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
                    R1 * 37/4
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
                    e2
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
                    e8
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
                        a16
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
                    \override Dots.staff-position = #2
                    \afterGrace
                    e2.
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        c'16
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
                    \override Dots.staff-position = #2
                    \afterGrace
                    e2..
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        a'16
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
                    R1 * 1/4
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
                    R1 * 9/8
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
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/2
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \override Staff.TextScript.whiteout = 0
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \fontsize #4 { \hspace #45 \right-column \override #'(font-name . "Bodoni72 Book Italic") { \line { Dezember 2023 - März 2024 } \line { Leipzig DE - Providence RI } } }
                    \stopStaff \startStaff
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
