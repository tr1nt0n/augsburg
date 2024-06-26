    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 4/16
            s1 * 1/4
            ^ \markup {
              \raise #16 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"77" #"1" #"4"
              }
            }
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 4/16
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 4/16
            s1 * 1/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 13/8
            s1 * 13/8
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \extremely-long-fermata
            \once \override Score.BarLine.transparent = ##f
            \time 3/1
            s1 * 3
            ^ \markup {
              \raise #13.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60"
              }
            }
            \time 5/2
            s1 * 5/2
            \time 7/4
            s1 * 7/4
            \time 4/4
            s1 * 1
            \time 5/8
            s1 * 5/8
            \time 4/8
            s1 * 1/2
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 7/16
            s1 * 7/16
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 6/16
            s1 * 3/8
            - \tweak padding #18
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #2 #"60"  ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4"  [\abjad-metric-modulation-tuplet-lhs #2 #0 #16 #13 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 7/16
            s1 * 7/16
            \time 4/8
            s1 * 1/2
            \time 5/8
            s1 * 5/8
            \time 4/4
            s1 * 1
            \stopTextSpan
            \time 7/4
            s1 * 7/4
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 10/4
            s1 * 5/2
            ^ \markup {
              \raise #13.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #13 #16 #2 #0 #'(1 . 1)]
              }
            }
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.58 . 3.58)
            \time 12/4
            s1 * 3
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #19 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33"
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #32 #35 #2 #0 #'(1 . 1)]
              }
            }
            \time 3/4
            s1 * 3/4
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \tweak text "×5" \startMeasureSpanner
            \bar ".|:"
            \time 7/8
            s1 * 7/8
            ^ \markup {
              \raise #8.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-markup #2 #1 #2 #"49"
              }
            }
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \very-short-fermata
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
                            \context Voice = "37 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 6 0))
                                \times 16/13
                                {
                                    \interrupt
                                    \ottava 2
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
                                    \clef "treble"
                                    \voiceOne
                                    g''''8
                                    \fff
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \interrupt
                                    g''''16
                                    ~
                                    g''''64
                                    \!
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    % \revert DynamicText.color
                                    \revert Dots.staff-position
                                }
                            }
                            \context Voice = "35 voice"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) (ly:make-duration 5 0))
                                \times 8/11
                                {
                                    \interrupt
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
                                    \voiceTwo
                                    g''''4
                                    \interrupt
                                    g''''16.
                                    \ottava 0
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    % \revert DynamicText.color
                                    \revert Dots.staff-position
                                }
                            }
                        >>
                        \oneVoice
                        \override Staff.Stem.direction = #UP
                        r32.
                        [
                        \once \override Staff.DynamicLineSpanner.staff-padding = 17
                        \ottava 2
                        \override Staff.Accidental.stencil = ##f
                        af''''64
                        - \flat-articulation
                        ^ \mp
                        ^ \<
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        e''''64
                        - \natural-articulation
                        \ottava 0
                        \revert Staff.Accidental.stencil
                        r32.
                        \once \override TupletBracket.direction = #UP
                        \once \override TupletBracket.stencil = ##f
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            \set suggestAccidentals = ##t
                            \change Staff = "piano 3 staff"
                            \override Staff.Accidental.stencil = ##f
                            \clef "bass"
                            fs'''128
                            (
                            g''128
                            af'128
                            - \marcato
                            )
                            \revert Staff.Accidental.stencil
                        }
                        \change Staff = "piano 1 staff"
                        r32.
                        \change Staff = "piano 3 staff"
                        \once \override TupletBracket.direction = #UP
                        \once \override TupletBracket.stencil = ##f
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            \override Staff.Accidental.stencil = ##f
                            e'128
                            ^ \f
                            (
                            fs128
                            a,128
                            - \marcato
                            )
                            ]
                            \change Staff = "piano 1 staff"
                            \revert Staff.Accidental.stencil
                            \revert Staff.Stem.direction
                            \set suggestAccidentals = ##f
                        }
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>16
                        - \marcato
                        - \tenuto
                        \ff
                        [
                        \>
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>16
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>16
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs' as' cs''>16
                        - \marcato
                        - \tenuto
                        \mf
                        ]
                        \override Staff.Accidental.X-extent = ##f
                        <<
                            \context Voice = "piano 1 voice temp"
                            {
                                \override Dots.staff-position = #2
                                \staff-line-count 1
                                \clef "percussion"
                                \voiceTwo
                                c'2..
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Maultrommel + Vibrator }
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
                                c'4
                                c'4
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
                            \context Voice = "sounding voice"
                            {
                                \override Dots.staff-position = #2
                                \override Staff.NoteHead.no-ledgers = ##t
                                \override Staff.Accidental.stencil = ##f
                                \voiceOne
                                c''4.
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
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                - \tweak padding #20
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \jawharp-crook \hspace #0.5 }
                                - \tweak bound-details.right.padding -7
                                \startTextSpan
                                _ \>
                                  %! abjad.glissando(1)
                                \hide NoteHead
                                  %! abjad.glissando(1)
                                \override Accidental.stencil = ##f
                                  %! abjad.glissando(1)
                                \override NoteColumn.glissando-skip = ##t
                                  %! abjad.glissando(1)
                                \override NoteHead.no-ledgers = ##t
                                c''4
                                  %! abjad.glissando(6)
                                \revert Accidental.stencil
                                  %! abjad.glissando(6)
                                \revert NoteColumn.glissando-skip
                                  %! abjad.glissando(6)
                                \revert NoteHead.no-ledgers
                                  %! abjad.glissando(6)
                                \undo \hide NoteHead
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
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                _ \<
                                  %! abjad.glissando(1)
                                \hide NoteHead
                                  %! abjad.glissando(1)
                                \override Accidental.stencil = ##f
                                  %! abjad.glissando(1)
                                \override NoteColumn.glissando-skip = ##t
                                  %! abjad.glissando(1)
                                \override NoteHead.no-ledgers = ##t
                                \override Staff.Stem.stemlet-length = 0.75
                                g'8
                                [
                                  %! abjad.glissando(6)
                                \revert Accidental.stencil
                                  %! abjad.glissando(6)
                                \revert NoteColumn.glissando-skip
                                  %! abjad.glissando(6)
                                \revert NoteHead.no-ledgers
                                  %! abjad.glissando(6)
                                \undo \hide NoteHead
                                \revert Staff.Stem.stemlet-length
                                f''8
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
                                ]
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                _ \>
                                  %! abjad.glissando(1)
                                \hide NoteHead
                                  %! abjad.glissando(1)
                                \override Accidental.stencil = ##f
                                  %! abjad.glissando(1)
                                \override NoteColumn.glissando-skip = ##t
                                  %! abjad.glissando(1)
                                \override NoteHead.no-ledgers = ##t
                                f''4
                                \override Staff.Stem.stemlet-length = 0.75
                                f''8
                                [
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
                                g'8
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
                                )
                                \stopTextSpan
                                ]
                                \revert Staff.NoteHead.no-ledgers
                                \revert Staff.Accidental.stencil
                            }
                        >>
                        \oneVoice
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 0 0))
                        \times 3/4
                        {
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                            \staff-line-count 5
                            \ottava -1
                            \clef "bass"
                            fs,2.
                            \pp
                            - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                            - \tweak stencil #constante-hairpin
                            \<
                            r4
                            g,,2.
                            r4
                            af,,2.
                            r4
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                            \times 6/5
                            {
                                e,8
                                - \staccato
                                \ff
                                [
                                fs,,8
                                - \staccato
                                a,,8
                                - \staccato
                                b,,8
                                - \staccato
                                cs,8
                                - \staccato
                                ]
                            }
                            r4
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 1 0))
                        \times 5/6
                        {
                            ef,4.
                            \p
                            - \tweak stencil #constante-hairpin
                            \<
                            r8
                            c,,4.
                            r8
                            cs,4.
                            r8
                            ef,,4.
                            r8
                            [
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                            \times 6/5
                            {
                                fs,,16
                                - \staccato
                                \ff
                                g,,16
                                - \staccato
                                af,,16
                                - \staccato
                                e,16
                                - \staccato
                                b,16
                                - \staccato
                            }
                            r8
                            ]
                            a,4.
                            \mp
                            - \tweak stencil #constante-hairpin
                            \<
                            r8
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 2 0))
                        \times 7/8
                        {
                            b,,8.
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
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                cs,,32
                                - \sharp-articulation
                                - \staccato
                                \ff
                                e,,32
                                - \natural-articulation
                                - \staccato
                                fs,,32
                                - \sharp-articulation
                                - \staccato
                                g,,32
                                - \natural-articulation
                                - \staccato
                                af,,32
                                - \flat-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \override Staff.Accidental.stencil = ##f
                            e,8.
                            - \accent
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                fs,,32
                                - \sharp-articulation
                                - \staccato
                                g,,32
                                - \natural-articulation
                                - \staccato
                                b,,32
                                - \natural-articulation
                                - \staccato
                                a,,32
                                - \natural-articulation
                                - \staccato
                                cs,32
                                - \sharp-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \override Staff.Accidental.stencil = ##f
                            ef,8.
                            - \accent
                            - \flat-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            c,8.
                            - \accent
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r16
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            \override Staff.Accidental.stencil = ##f
                            cs,,8.
                            - \sharp-articulation
                            \mp
                            [
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                ef,,32
                                - \flat-articulation
                                - \staccato
                                \<
                                g,,32
                                - \natural-articulation
                                - \staccato
                                af,,32
                                - \flat-articulation
                                - \staccato
                                e,32
                                - \natural-articulation
                                - \staccato
                                fs,32
                                - \sharp-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \override Staff.Accidental.stencil = ##f
                            a,8.
                            - \accent
                            - \natural-articulation
                            - \tenuto
                            \ff
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            b,8.
                            - \accent
                            - \natural-articulation
                            - \tenuto
                            \revert Staff.Accidental.stencil
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                a,,32
                                - \natural-articulation
                                - \staccato
                                \pp
                                \<
                                ef,,32
                                - \flat-articulation
                                - \staccato
                                c,,32
                                - \natural-articulation
                                - \staccato
                                cs,,32
                                - \sharp-articulation
                                - \staccato
                                fs,,32
                                - \sharp-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                        \times 5/6
                        {
                            \override Staff.Accidental.stencil = ##f
                            g,,16.
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r32
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                af,,64
                                - \flat-articulation
                                - \staccato
                                e,,64
                                - \natural-articulation
                                - \staccato
                                fs,,64
                                - \sharp-articulation
                                - \staccato
                                g,,64
                                - \natural-articulation
                                - \staccato
                                af,,64
                                - \flat-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r32
                            \override Staff.Accidental.stencil = ##f
                            a,,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            b,,,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            cs,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                ef,64
                                - \flat-articulation
                                - \staccato
                                c,64
                                - \natural-articulation
                                - \staccato
                                cs,,64
                                - \sharp-articulation
                                - \staccato
                                ef,,64
                                - \flat-articulation
                                - \staccato
                                af,,64
                                - \flat-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r32
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            \override Staff.Accidental.stencil = ##f
                            e,16.
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            fs,16.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            g,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            b,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                a,,,64
                                - \natural-articulation
                                - \staccato
                                b,,,64
                                - \natural-articulation
                                - \staccato
                                ef,,64
                                - \flat-articulation
                                - \staccato
                                c,,64
                                - \natural-articulation
                                - \staccato
                                cs,,64
                                - \sharp-articulation
                                - \staccato
                                \revert Staff.Accidental.stencil
                            }
                            r32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 4 0))
                        \times 7/8
                        {
                            \override Staff.Accidental.stencil = ##f
                            g,,32.
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            e,32.
                            - \natural-articulation
                            \ff
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            fs,32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            g,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            af,,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            e,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            b,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                        \times 6/7
                        {
                            \override Staff.Accidental.stencil = ##f
                            a,,32.
                            - \natural-articulation
                            [
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            cs,,32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,,32.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            c,,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            c,32.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            cs,,32.
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            ef,,32.
                            - \flat-articulation
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r64
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                        \times 6/5
                        {
                            \staff-line-count 1
                            \override Staff.Accidental.stencil = ##f
                            \clef "percussion"
                            c'32
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
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Auf dem Deckel } \line { mit Styroporkugeln }  } }
                            [
                            - \tweak stencil #constante-hairpin
                            \<
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'16.
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                        \times 6/7
                        {
                            r32
                            [
                            \override Staff.Accidental.stencil = ##f
                            c'8
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            ]
                            \>
                            ~
                        }
                        c'4..
                        ~
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        c'8
                        ~
                        \once \override TupletBracket.bracket-visibility = ##f
                        \once \override TupletBracket.bracket-visibility = ##f
                        c'32
                        [
                        \revert Staff.Accidental.stencil
                        r64
                        \override Staff.Accidental.stencil = ##f
                        c'16
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
                        ~
                        c'64
                        ]
                        ~
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 5 0))
                        \times 4/6
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'16
                            [
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'16.
                            ]
                            \<
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                        \times 8/7
                        {
                            \once \override TupletBracket.bracket-visibility = ##f
                            \once \override TupletBracket.bracket-visibility = ##f
                            c'16
                            [
                            ~
                            c'64
                            \revert Staff.Accidental.stencil
                            r64
                            \override Staff.Accidental.stencil = ##f
                            c'64
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                        \times 5/6
                        {
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                            \times 4/5
                            {
                                c'8
                                [
                                \revert Staff.Accidental.stencil
                                r8
                                ]
                                c'4.
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
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                            \times 8/7
                            {
                                r32
                                [
                                \override Staff.Accidental.stencil = ##f
                                c'8
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
                                \revert Staff.Accidental.stencil
                                r32
                                \override Staff.Accidental.stencil = ##f
                                c'32
                                ]
                                ~
                            }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                        \times 8/7
                        {
                            c'16
                            [
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            ]
                            \>
                            ~
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 5 0))
                        \times 8/9
                        {
                            c'32
                            [
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'16.
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            \revert Staff.Accidental.stencil
                            r32
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                        \times 4/5
                        {
                            \override Staff.Accidental.stencil = ##f
                            c'8.
                            [
                            \revert Staff.Accidental.stencil
                            r16
                            \override Staff.Accidental.stencil = ##f
                            c'16
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                        \times 8/7
                        {
                            c'32
                            [
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'16.
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c'32
                            ]
                            ~
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 2 0))
                        \times 7/6
                        {
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                            \times 4/5
                            {
                                c'4
                                \revert Staff.Accidental.stencil
                                r4
                                c'2.
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
                                \<
                                ~
                            }
                            \afterGrace
                            c'2
                            {
                                \once \override Flag.stroke-style = #"grace"
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                c'16
                                _ #(make-dynamic-script
                                    (markup
                                        #:whiteout
                                        #:line (
                                            #:general-align Y -2 #:normal-text #:larger "“"
                                            #:hspace -0.4
                                            #:dynamic "fff"
                                            #:hspace -0.2
                                            #:general-align Y -2 #:normal-text #:larger "”"
                                            )
                                        )
                                    )
                            }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) (ly:make-duration 2 0))
                        \times 10/11
                        {
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \staff-line-count 5
                                \clef "bass"
                                e,32
                                - \marcato
                                \ff
                                [
                                - \tweak stencil #constante-hairpin
                                \<
                                \override Staff.Accidental.stencil = ##f
                                b,,32
                                - \natural-articulation
                                a,,32
                                - \natural-articulation
                                cs,32
                                - \sharp-articulation
                                ef,32
                                - \flat-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                c,32
                                - \marcato
                                - \natural-articulation
                                cs,32
                                - \sharp-articulation
                                ef,32
                                - \flat-articulation
                                e,32
                                - \natural-articulation
                                fs,32
                                - \sharp-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                g,32
                                - \marcato
                                - \natural-articulation
                                af,32
                                - \flat-articulation
                                a,,32
                                - \natural-articulation
                                b,,32
                                - \natural-articulation
                                a,,32
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                ef,32
                                - \flat-articulation
                                - \marcato
                                c,32
                                - \natural-articulation
                                cs,32
                                - \sharp-articulation
                                af,32
                                - \flat-articulation
                                e,32
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                fs,32
                                - \marcato
                                - \sharp-articulation
                                g,32
                                - \natural-articulation
                                af,32
                                - \flat-articulation
                                e,32
                                - \natural-articulation
                                fs,32
                                - \sharp-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                a,,32
                                - \marcato
                                - \natural-articulation
                                b,,32
                                - \natural-articulation
                                cs,32
                                - \sharp-articulation
                                ef,32
                                - \flat-articulation
                                c,32
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                cs,32
                                - \marcato
                                - \sharp-articulation
                                ef,32
                                - \flat-articulation
                                fs,32
                                - \sharp-articulation
                                g,32
                                - \natural-articulation
                                af,32
                                - \flat-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                e,32
                                - \marcato
                                - \natural-articulation
                                b,,32
                                - \natural-articulation
                                a,,32
                                - \natural-articulation
                                b,,32
                                - \natural-articulation
                                ef,32
                                - \flat-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                c,32
                                - \marcato
                                - \natural-articulation
                                cs,32
                                - \sharp-articulation
                                e,32
                                - \natural-articulation
                                fs,32
                                - \sharp-articulation
                                g,32
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                af,32
                                - \flat-articulation
                                - \marcato
                                e,32
                                - \natural-articulation
                                fs,32
                                - \sharp-articulation
                                g,32
                                - \natural-articulation
                                b,,32
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                a,,32
                                - \marcato
                                - \natural-articulation
                                cs,32
                                - \sharp-articulation
                                ef,32
                                - \flat-articulation
                                c,32
                                - \natural-articulation
                                cs,32
                                - \sharp-articulation
                                \!
                                \revert Staff.Accidental.stencil
                            }
                            r16
                            ]
                        }
                        r1
                        <<
                            \context Voice = "37 voice temp 2"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 4 0))
                                \times 32/37
                                {
                                    \interrupt
                                    \ottava 2
                                    % \override NoteHead.details.interrupt-color = \一
                                    % \override NoteHead.details.switch-color = \一
                                    % \override NoteHead.details.folow-color = \一
                                    % \override NoteHead.details.hocket-color = \一
                                    % \override Accidental.color = \一
                                    % \override Beam.color = \一
                                    % \override Dots.color = \一
                                    % \override Flag.color = \一
                                    % \override Glissando.color = \一
                                    % \override MultiMeasureRest.color = \一
                                    % \override NoteHead.color = \一
                                    % \override RepeatTie.color = \一
                                    % \override Rest.color = \一
                                    % \override Slur.color = \一
                                    % \override Stem.color = \一
                                    % \override StemTremolo.color = \一
                                    % \override Tie.color = \一
                                    % \override TupletBracket.color = \一
                                    % \override TupletNumber.color = \一
                                    \override Dots.staff-position = #2
                                    % \override DynamicText.color = \一
                                    \clef "treble"
                                    \voiceOne
                                    a''''2
                                    ^ \pppp
                                    ^ \<
                                    \interrupt
                                    a''''2
                                    \interrupt
                                    a''''2
                                    \interrupt
                                    a''''2
                                    \interrupt
                                    a''''4
                                    ~
                                    a''''16
                                    ^ \fff
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    % \revert DynamicText.color
                                    \revert Dots.staff-position
                                }
                            }
                            \context Voice = "35 voice 2"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 4 0))
                                \times 32/35
                                {
                                    \interrupt
                                    % \override NoteHead.details.interrupt-color = \三
                                    % \override NoteHead.details.switch-color = \三
                                    % \override NoteHead.details.folow-color = \三
                                    % \override NoteHead.details.hocket-color = \三
                                    % \override Accidental.color = \三
                                    % \override Beam.color = \三
                                    % \override Dots.color = \三
                                    % \override Flag.color = \三
                                    % \override Glissando.color = \三
                                    % \override MultiMeasureRest.color = \三
                                    % \override NoteHead.color = \三
                                    % \override RepeatTie.color = \三
                                    % \override Rest.color = \三
                                    % \override Slur.color = \三
                                    % \override Stem.color = \三
                                    % \override StemTremolo.color = \三
                                    % \override Tie.color = \三
                                    % \override TupletBracket.color = \三
                                    % \override TupletNumber.color = \三
                                    \override Dots.staff-position = #2
                                    % \override DynamicText.color = \三
                                    \voiceTwo
                                    g''''2
                                    _ \ppp
                                    _ \<
                                    \interrupt
                                    g'''2
                                    \interrupt
                                    g''''2
                                    \interrupt
                                    g'''2
                                    \interrupt
                                    g''''8.
                                    _ \ffff
                                    \ottava 0
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    % \revert DynamicText.color
                                    \revert Dots.staff-position
                                }
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "37 voice temp 1"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    \ottava 2
                                    % \override NoteHead.details.interrupt-color = \一
                                    % \override NoteHead.details.switch-color = \一
                                    % \override NoteHead.details.folow-color = \一
                                    % \override NoteHead.details.hocket-color = \一
                                    % \override Accidental.color = \一
                                    % \override Beam.color = \一
                                    % \override Dots.color = \一
                                    % \override Flag.color = \一
                                    % \override Glissando.color = \一
                                    % \override MultiMeasureRest.color = \一
                                    % \override NoteHead.color = \一
                                    % \override RepeatTie.color = \一
                                    % \override Rest.color = \一
                                    % \override Slur.color = \一
                                    % \override Stem.color = \一
                                    % \override StemTremolo.color = \一
                                    % \override Tie.color = \一
                                    % \override TupletBracket.color = \一
                                    % \override TupletNumber.color = \一
                                    \override Dots.staff-position = #2
                                    % \override DynamicText.color = \一
                                    \clef "treble"
                                    \voiceOne
                                    a''''4
                                    ^ \ppp
                                    ^ \<
                                    a''''4
                                    a''''4
                                    a''''4
                                    a''''8
                                    ~
                                    a''''32
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 48) (ly:make-duration 6 0))
                                \times 48/37
                                {
                                    a''''32.
                                    \override Staff.Accidental.stencil = ##f
                                    a''''8
                                    \revert Staff.Accidental.stencil
                                    a''''8
                                    a''''8
                                    a''''8
                                    a''''32
                                    ^ \mp
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    % \revert DynamicText.color
                                    \revert Dots.staff-position
                                }
                            }
                            \context Voice = "35 voice 1"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    % \override NoteHead.details.interrupt-color = \三
                                    % \override NoteHead.details.switch-color = \三
                                    % \override NoteHead.details.folow-color = \三
                                    % \override NoteHead.details.hocket-color = \三
                                    % \override Accidental.color = \三
                                    % \override Beam.color = \三
                                    % \override Dots.color = \三
                                    % \override Flag.color = \三
                                    % \override Glissando.color = \三
                                    % \override MultiMeasureRest.color = \三
                                    % \override NoteHead.color = \三
                                    % \override RepeatTie.color = \三
                                    % \override Rest.color = \三
                                    % \override Slur.color = \三
                                    % \override Stem.color = \三
                                    % \override StemTremolo.color = \三
                                    % \override Tie.color = \三
                                    % \override TupletBracket.color = \三
                                    % \override TupletNumber.color = \三
                                    \override Dots.staff-position = #2
                                    % \override DynamicText.color = \三
                                    \voiceTwo
                                    g'''4
                                    _ \pp
                                    _ \<
                                    g''''4
                                    g'''4
                                    g'''4
                                    g''''16.
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 24) (ly:make-duration 5 0))
                                \times 24/35
                                {
                                    g''''8
                                    ~
                                    g''''32
                                    \override Staff.Accidental.stencil = ##f
                                    g'''4
                                    \revert Staff.Accidental.stencil
                                    g'''4
                                    g''''4
                                    g'''8.
                                    _ \mf
                                    \ottava 0
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    \revert DynamicText.color
                                    % \revert Dots.staff-position
                                }
                            }
                        >>
                        \oneVoice
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \staff-line-count 3
                        \clef "percussion"
                        e'8
                        - \accent
                        \mf
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { 1. Magnet links } \line { 2. Magnet rechts } \line { 3. Styroporkugeln auf dem Deckel }  } }
                        [
                        r8
                        c'8
                        - \accent
                        ]
                        r8
                        \override Dots.staff-position = #2
                        \afterGrace
                        a4.
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        {
                            \once \override Flag.stroke-style = #"grace"
                            \revert Dots.staff-position
                            a16
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
                        }
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
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 13/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 3
                        s1 * 5/2
                        s1 * 7/4
                        s1 * 1
                        s1 * 5/8
                        s1 * 1/2
                        s1 * 7/16
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 7/16
                        s1 * 1/2
                        s1 * 5/8
                        s1 * 1
                        s1 * 7/4
                        s1 * 5/2
                        s1 * 3
                        s1 * 1
                        s1 * 3/4
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 7/8
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
                        <<
                            \context Voice = "13 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 5 0))
                                \times 16/13
                                {
                                    \interrupt
                                    \ottava 2
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
                                    \clef "treble"
                                    \voiceOne
                                    g''''8
                                    - \tweak padding #13
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \fontsize #-2 { \musicglyph #"f" \musicglyph #"f" \musicglyph #"f" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpan
                                    \interrupt
                                    g''''8
                                    \interrupt
                                    g''''8
                                    \stopTextSpan
                                    \ottava 0
                                    \interrupt
                                    r32
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    % \revert DynamicText.color
                                    \revert Dots.staff-position
                                }
                            }
                            \context Voice = "4 voice"
                            {
                                \interrupt
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
                                \voiceTwo
                                g''''4
                                \interrupt
                                g''''4
                                % \revert Accidental.color
                                % \revert Beam.color
                                % \revert Dots.color
                                % \revert Flag.color
                                % \revert Glissando.color
                                % \revert MultiMeasureRest.color
                                % \revert NoteHead.color
                                % \revert RepeatTie.color
                                % \revert Rest.color
                                % \revert Slur.color
                                % \revert Stem.color
                                % \revert StemTremolo.color
                                % \revert Tie.color
                                % \revert TupletBracket.color
                                % \revert TupletNumber.color
                                % \revert DynamicText.color
                                \revert Dots.staff-position
                            }
                        >>
                        \oneVoice
                        \revert Staff.Accidental.X-extent
                        \revert Staff.Accidental.stencil
                        <cs,, gs,, cs,>16
                        - \marcato
                        - \tenuto
                        [
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, gs,, cs,>16
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, gs,, cs,>16
                        - \marcato
                        - \tenuto
                        \override Staff.Accidental.X-extent = ##f
                        \revert Staff.Accidental.X-extent
                        <cs,, gs,, cs,>16
                        - \marcato
                        - \tenuto
                        ]
                        \sustainOn
                        \override Staff.Accidental.X-extent = ##f
                        s1 * 13/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \sustainOff
                        \stopStaff \startStaff
                        r2.
                        \ottava -1
                        \clef "bass"
                        fs,4
                        \mf
                        r2.
                        g,,4
                        \f
                        - \tweak stencil #constante-hairpin
                        \<
                        r2.
                        af,4
                        r4.
                        e,8
                        r4.
                        fs,,8
                        r4.
                        a,,,8
                        \ff
                        r4.
                        b,,8
                        r4.
                        cs,8
                        \>
                        r8.
                        [
                        ef,16
                        r8.
                        c,16
                        r8.
                        cs,,16
                        \mp
                        r8.
                        ef,,16
                        r8.
                        fs,,16
                        r8.
                        g,,16
                        r8.
                        af,,16
                        \f
                        ]
                        - \tweak stencil #constante-hairpin
                        \<
                        r8.
                        [
                        e,16
                        r8.
                        b,,,16
                        - \accent
                        - \tenuto
                        \ff
                        - \tweak stencil #constante-hairpin
                        \<
                        r8.
                        a,,,16
                        - \accent
                        - \tenuto
                        r8.
                        b,,,16
                        \mp
                        ]
                        \<
                        r16.
                        [
                        ef,,32
                        r16.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c,64
                            - \staccato
                            \override Staff.Accidental.stencil = ##f
                            cs,,64
                            - \sharp-articulation
                            - \staccato
                            e,,64
                            - \natural-articulation
                            - \staccato
                            \revert Staff.Accidental.stencil
                        }
                        r16.
                        fs,,32
                        r16.
                        g,,32
                        r16.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            af,,64
                            - \staccato
                            \override Staff.Accidental.stencil = ##f
                            e,64
                            - \natural-articulation
                            - \staccato
                            fs,64
                            - \sharp-articulation
                            - \staccato
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        r16.
                        [
                        g,,32
                        r16.
                        b,,32
                        r16.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            a,,64
                            - \staccato
                            \override Staff.Accidental.stencil = ##f
                            cs,64
                            - \sharp-articulation
                            - \staccato
                            ef,64
                            - \flat-articulation
                            - \staccato
                            \revert Staff.Accidental.stencil
                        }
                        r16.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 6 0))
                        \times 2/3
                        {
                            c,,64
                            - \staccato
                            \override Staff.Accidental.stencil = ##f
                            cs,64
                            - \sharp-articulation
                            - \staccato
                            ef,64
                            - \flat-articulation
                            - \staccato
                            ]
                            \revert Staff.Accidental.stencil
                        }
                        r32.
                        [
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 7 0))
                        \times 2/3
                        {
                            \override Staff.Accidental.stencil = ##f
                            g,128
                            - \natural-articulation
                            - \staccato
                            \ff
                            \sustainOn
                            af,128
                            - \flat-articulation
                            - \staccato
                            e,128
                            - \natural-articulation
                            - \staccato
                            \revert Staff.Accidental.stencil
                        }
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        fs,,64
                        - \sharp-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        a,,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        b,,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        a,,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        ef,,64
                        - \flat-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        c,,64
                        - \natural-articulation
                        ]
                        \revert Staff.Accidental.stencil
                        r32.
                        [
                        \override Staff.Accidental.stencil = ##f
                        cs,,64
                        - \sharp-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        fs,,64
                        - \sharp-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        g,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        af,,64
                        - \flat-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        e,,64
                        - \natural-articulation
                        \revert Staff.Accidental.stencil
                        r32.
                        \override Staff.Accidental.stencil = ##f
                        fs,,64
                        - \sharp-articulation
                        \sustainOff
                        ]
                        \ottava 0
                        \revert Staff.Accidental.stencil
                        s1 * 3/8
                        s1 * 7/16
                        s1 * 1/2
                        \staff-line-count 1
                        \clef "percussion"
                        c'4
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
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        ~
                        c'4.
                        ~
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                            \times 6/7
                            {
                                c'4
                                r8
                                c'2
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
                                \>
                                ~
                            }
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                            \times 2/3
                            {
                                c'4
                                r4
                                c'4
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
                                \<
                                ~
                            }
                        }
                        c'8.
                        [
                        r16
                        c'8
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
                        r16
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
                        ]
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 3 0))
                        \times 4/6
                        {
                            c'4
                            r8
                            \!
                            c'4.
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
                            - \tweak circled-tip ##t
                            \>
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                        \times 6/7
                        {
                            r8
                            \!
                            c'2
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
                            - \tweak circled-tip ##t
                            \>
                            r8
                            \!
                            [
                            c'8
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "fff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ]
                        }
                        r8.
                        - \tweak padding #6
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                        [
                        \once \override Staff.TupletBracket.direction = #UP
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            \staff-line-count 5
                            \ottava -1
                            \clef "bass"
                            e,,32
                            - \marcato
                            \sustainOn
                            \override Staff.Accidental.stencil = ##f
                            b,,,32
                            - \natural-articulation
                            a,,,32
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            cs,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            ef,,32
                            - \flat-articulation
                            c,,32
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            cs,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            ef,,32
                            - \flat-articulation
                            e,,32
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            fs,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            g,,32
                            - \natural-articulation
                            af,,32
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            a,,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            b,,,32
                            - \natural-articulation
                            a,,,32
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            ef,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            c,,32
                            - \natural-articulation
                            cs,,32
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            af,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            e,,32
                            - \natural-articulation
                            fs,,32
                            - \sharp-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            g,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            af,,32
                            - \flat-articulation
                            e,,32
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            fs,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            a,,,32
                            - \natural-articulation
                            b,,,32
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                        }
                        r8.
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                        \times 2/3
                        {
                            cs,,32
                            - \marcato
                            \override Staff.Accidental.stencil = ##f
                            ef,,32
                            - \flat-articulation
                            c,,32
                            - \natural-articulation
                            \sustainOff
                            ]
                            \ottava 0
                        }
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 2 0))
                                \times 12/13
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \voiceOne
                                        ef,,32
                                        - \marcato
                                        ^ \ff
                                        [
                                        ^ \>
                                        g,,32
                                        - \natural-articulation
                                        af,,32
                                        - \flat-articulation
                                        e,,32
                                        - \natural-articulation
                                        fs,,32
                                        - \sharp-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        a,,32
                                        - \marcato
                                        - \natural-articulation
                                        b,,32
                                        - \natural-articulation
                                        a,,32
                                        - \natural-articulation
                                        ef,,32
                                        - \flat-articulation
                                        c,,32
                                        - \natural-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        cs,,32
                                        - \marcato
                                        - \sharp-articulation
                                        fs,,32
                                        - \sharp-articulation
                                        g,,32
                                        - \natural-articulation
                                        af,,32
                                        - \flat-articulation
                                        e,,32
                                        - \natural-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        fs,,32
                                        - \marcato
                                        - \sharp-articulation
                                        g,,32
                                        - \natural-articulation
                                        af,,32
                                        - \flat-articulation
                                        a,,32
                                        - \natural-articulation
                                        b,,32
                                        - \natural-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        cs,,32
                                        - \marcato
                                        - \sharp-articulation
                                        ef,,32
                                        - \flat-articulation
                                        c,,32
                                        - \natural-articulation
                                        cs,,32
                                        - \sharp-articulation
                                        ef,,32
                                        - \flat-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        af,,32
                                        - \flat-articulation
                                        - \marcato
                                        e,,32
                                        - \natural-articulation
                                        fs,,32
                                        - \sharp-articulation
                                        g,,32
                                        - \natural-articulation
                                        b,,32
                                        - \natural-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        a,,32
                                        - \marcato
                                        - \natural-articulation
                                        b,,32
                                        - \natural-articulation
                                        ef,,32
                                        - \flat-articulation
                                        c,,32
                                        - \natural-articulation
                                        cs,,32
                                        - \sharp-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        g,,32
                                        - \marcato
                                        - \natural-articulation
                                        af,,32
                                        - \flat-articulation
                                        e,,32
                                        - \natural-articulation
                                        fs,,32
                                        - \sharp-articulation
                                        g,,32
                                        - \natural-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        af,,32
                                        - \flat-articulation
                                        - \marcato
                                        e,,32
                                        - \natural-articulation
                                        b,,32
                                        - \natural-articulation
                                        a,,32
                                        - \natural-articulation
                                        cs,,32
                                        - \sharp-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        ef,,32
                                        - \flat-articulation
                                        - \marcato
                                        c,,32
                                        - \natural-articulation
                                        cs,,32
                                        - \sharp-articulation
                                        ef,,32
                                        - \flat-articulation
                                        e,,32
                                        - \natural-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        fs,,32
                                        - \marcato
                                        - \sharp-articulation
                                        g,,32
                                        - \natural-articulation
                                        af,,32
                                        - \flat-articulation
                                        a,,32
                                        - \natural-articulation
                                        b,,32
                                        - \natural-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        a,,32
                                        - \marcato
                                        - \natural-articulation
                                        ef,,32
                                        - \flat-articulation
                                        c,,32
                                        - \natural-articulation
                                        cs,,32
                                        - \sharp-articulation
                                        af,,32
                                        - \flat-articulation
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        \override Staff.Accidental.stencil = ##f
                                        e,,32
                                        - \marcato
                                        - \natural-articulation
                                        fs,,32
                                        - \sharp-articulation
                                        g,,32
                                        - \natural-articulation
                                        af,,32
                                        - \flat-articulation
                                        e,,32
                                        - \natural-articulation
                                        ^ \ppp
                                        \revert Staff.Accidental.stencil
                                    }
                                    r16
                                    ]
                                }
                            }
                            \context Voice = "delta intermittent voice"
                            {
                                \ottava -1
                                \override Staff.Accidental.transparent = ##t
                                \voiceTwo
                                r8.
                                [
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    c,,32
                                    - \marcato
                                    - \natural-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    cs,,32
                                    - \sharp-articulation
                                    ef,,32
                                    - \flat-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    fs,,32
                                    - \marcato
                                    - \sharp-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    g,,32
                                    - \natural-articulation
                                    af,,32
                                    - \flat-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    e,,32
                                    - \marcato
                                    - \natural-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    b,,,32
                                    - \natural-articulation
                                    a,,,32
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    b,,,32
                                    - \marcato
                                    - \natural-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    ef,,32
                                    - \flat-articulation
                                    c,,32
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs,,32
                                    - \marcato
                                    - \sharp-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    e,,32
                                    - \natural-articulation
                                    fs,,32
                                    - \sharp-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    g,,32
                                    - \marcato
                                    - \natural-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    af,,32
                                    - \flat-articulation
                                    e,,32
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    fs,,32
                                    - \marcato
                                    - \sharp-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    g,,32
                                    - \natural-articulation
                                    b,,,32
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    a,,,32
                                    - \marcato
                                    - \natural-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    cs,,32
                                    - \sharp-articulation
                                    ef,,32
                                    - \flat-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    c,,32
                                    - \marcato
                                    - \natural-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    cs,,32
                                    - \sharp-articulation
                                    ef,,32
                                    - \flat-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    g,,32
                                    - \marcato
                                    - \natural-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    af,,32
                                    - \flat-articulation
                                    e,,32
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    fs,,32
                                    - \marcato
                                    - \sharp-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    a,,,32
                                    - \natural-articulation
                                    b,,,32
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                }
                                r8.
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 5 0))
                                \times 2/3
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    a,,,32
                                    - \marcato
                                    - \natural-articulation
                                    \override Staff.Accidental.stencil = ##f
                                    ef,,32
                                    - \flat-articulation
                                    c,,32
                                    - \natural-articulation
                                    ]
                                    \ottava 0
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.Accidental.transparent
                                }
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "13 voice temp 1"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    % \override NoteHead.details.interrupt-color = \二
                                    % \override NoteHead.details.switch-color = \二
                                    % \override NoteHead.details.folow-color = \二
                                    % \override NoteHead.details.hocket-color = \二
                                    % \override Accidental.color = \二
                                    % \override Beam.color = \二
                                    % \override Dots.color = \二
                                    % \override Flag.color = \二
                                    % \override Glissando.color = \二
                                    % \override MultiMeasureRest.color = \二
                                    % \override NoteHead.color = \二
                                    % \override RepeatTie.color = \二
                                    % \override Rest.color = \二
                                    % \override Slur.color = \二
                                    % \override Stem.color = \二
                                    % \override StemTremolo.color = \二
                                    % \override Tie.color = \二
                                    % \override TupletBracket.color = \二
                                    % \override TupletNumber.color = \二
                                    \override Dots.staff-position = #2
                                    % \override DynamicText.color = \二
                                    \clef "treble"
                                    \voiceOne
                                    e''4
                                    ^ \p
                                    \sustainOn
                                    ^ \<
                                    e''4
                                    e''4
                                    e''16
                                    ~
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 4 0))
                                \times 12/13
                                {
                                    e''8.
                                    e''4
                                    e''4
                                    e''8
                                    ^ \f
                                    \sustainOff
                                    % \revert Accidental.color
                                    % \revert Beam.color
                                    % \revert Dots.color
                                    % \revert Flag.color
                                    % \revert Glissando.color
                                    % \revert MultiMeasureRest.color
                                    % \revert NoteHead.color
                                    % \revert RepeatTie.color
                                    % \revert Rest.color
                                    % \revert Slur.color
                                    % \revert Stem.color
                                    % \revert StemTremolo.color
                                    % \revert Tie.color
                                    % \revert TupletBracket.color
                                    % \revert TupletNumber.color
                                    % \revert DynamicText.color
                                    \revert Dots.staff-position
                                }
                            }
                            \context Voice = "4 voice 1"
                            {
                                % \override NoteHead.details.interrupt-color = \四
                                % \override NoteHead.details.switch-color = \四
                                % \override NoteHead.details.folow-color = \四
                                % \override NoteHead.details.hocket-color = \四
                                % \override Accidental.color = \四
                                % \override Beam.color = \四
                                % \override Dots.color = \四
                                % \override Flag.color = \四
                                % \override Glissando.color = \四
                                % \override MultiMeasureRest.color = \四
                                % \override NoteHead.color = \四
                                % \override RepeatTie.color = \四
                                % \override Rest.color = \四
                                % \override Slur.color = \四
                                % \override Stem.color = \四
                                % \override StemTremolo.color = \四
                                % \override Tie.color = \四
                                % \override TupletBracket.color = \四
                                % \override TupletNumber.color = \四
                                \override Dots.staff-position = #2
                                % \override DynamicText.color = \四
                                \voiceTwo
                                ds'4
                                _ \mp
                                _ \<
                                ds'4
                                ds''4
                                ds'4
                                ds'4
                                ds''4
                                ds'4
                                _ \ff
                                % \revert Accidental.color
                                % \revert Beam.color
                                % \revert Dots.color
                                % \revert Flag.color
                                % \revert Glissando.color
                                % \revert MultiMeasureRest.color
                                % \revert NoteHead.color
                                % \revert RepeatTie.color
                                % \revert Rest.color
                                % \revert Slur.color
                                % \revert Stem.color
                                % \revert StemTremolo.color
                                % \revert Tie.color
                                % \revert TupletBracket.color
                                % \revert TupletNumber.color
                                % \revert DynamicText.color
                                \revert Dots.staff-position
                            }
                        >>
                        \oneVoice
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                \once \override Staff.Clef.X-extent = ##f
                                \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                \staff-line-count 1
                                \clef "percussion"
                                \voiceTwo
                                c'4.
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Maultrommel + Vibrator }
                                r8
                                \staff-line-count 5
                                \once \override Voice.Accidental.font-size = 5
                                \once \override Voice.Stem.direction = #UP
                                \clef "treble"
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                f'!4.
                                \mp
                                ^ \markup \center-align { \concat { -14 } }
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Nagel + Vibrator }
                            }
                            \context Voice = "sounding voice 1"
                            {
                                \override Dots.staff-position = #2
                                \override Staff.NoteHead.no-ledgers = ##t
                                \override Staff.Accidental.stencil = ##f
                                \textSpannerDown
                                \voiceOne
                                g'8
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
                                  %! +SCORE
                            %%% - \tweak color \四
                                  %! +SCORE
                            %%% ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER EIN ) }
                                  %! +PARTS
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER EIN ) }
                                [
                                (
                                - \abjad-zero-padding-glissando
                                \glissando
                                - \tweak padding #15
                                - \abjad-dashed-line-with-up-hook
                                - \tweak bound-details.left.text \markup \concat { \jawharp-crook \hspace #0.5 }
                                - \tweak bound-details.right.padding -3
                                \startTextSpan
                                _ \<
                                c''8
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
                                - \abjad-zero-padding-glissando
                                \glissando
                                _ \>
                                \revert Dots.staff-position
                                g'8
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
                                )
                                \stopTextSpan
                                ]
                                \textSpannerUp
                                \revert Staff.NoteHead.no-ledgers
                                \revert Staff.Accidental.stencil
                                \once \override Rest.transparent = ##t
                                r2
                            }
                        >>
                        \oneVoice
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% - \tweak color \四
                          %! +SCORE
                    %%% ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER AUS ) }
                          %! +PARTS
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( SYNTHESIZER AUS ) }
                        \stopStaff \startStaff
                    }
                }
                \context thirdStaff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            \once \override Staff.TupletBracket.direction = #DOWN
                            \ottava -1
                            \clef "bass"
                            \once \override Staff.DynamicLineSpanner.staff-padding = 12
                            a,16.
                            \p
                            [
                            \<
                            r32
                            \override Staff.Accidental.stencil = ##f
                            ef,16.
                            - \flat-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \override Staff.Accidental.stencil = ##f
                            c,16.
                            - \natural-articulation
                            \revert Staff.Accidental.stencil
                            r32
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                            \times 6/5
                            {
                                \override Staff.Accidental.stencil = ##f
                                cs,,64
                                - \sharp-articulation
                                af,,64
                                - \flat-articulation
                                (
                                e,,64
                                - \natural-articulation
                                fs,,64
                                - \sharp-articulation
                                g,,64
                                - \natural-articulation
                                \revert Staff.Accidental.stencil
                            }
                            r32
                            \override Staff.Accidental.stencil = ##f
                            af,16.
                            - \flat-articulation
                            \f
                            )
                            \ottava 0
                            \revert Staff.Accidental.stencil
                            r32
                            ]
                        }
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
                        R1 * 13/8
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
                        R1 * 3
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/4
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
                        R1 * 5/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3/8
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 7/16
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/8
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
                        R1 * 7/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 5/2
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override Staff.TimeSignature.transparent = ##t
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 3
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
                    R1 * 1/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    \afterGrace
                    a'4
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \revert Dots.staff-position
                        ef16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 13/8
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
                    ef\breve.
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
                    ef\breve
                    ~
                    \afterGrace
                    ef2
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
                        a'16
                    }
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/4
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
                    R1 * 5/8
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/2
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/2
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/8
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
                    R1 * 7/4
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/2
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3
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
                    R1 * 3/4
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
                    R1 * 7/8
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
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
