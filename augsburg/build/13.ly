    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            #(ly:expect-warning "strange time signature found")
            \time 37/14
            s1 * 37/14
            ^ \markup {
              \raise #21 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"60" 
              }
            }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \short-fermata
            \once \override Score.BarLine.transparent = ##f
            \time 13/4
            s1 * 13/4
            ^ \markup {
              \raise #3 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4" 
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #16 #13 #2 #0 #'(1 . 1)]
              }
            }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
            \abjad-metronome-mark-markup #2 #0 #2 #"77" 
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
            \once \override Score.BarLine.transparent = ##f
            \time 5/4
            s1 * 5/4
            ^ \markup {
              \raise #6 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #"48" #"3" #"4" 
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #18 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #"33" 
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #8 #11 #2 #0 #'(1 . 1)]
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
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
                                \tweak edge-height #'(0.7 . 0)
                                \times 8/14
                                {
                                    \once \override Staff.Clef.X-extent = ##f
                                    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                    \override Dots.staff-position = #2
                                    \staff-line-count 1
                                    \clef "percussion"
                                    \voiceTwo
                                    c'\breve
                                    - \tweak padding #25.5
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
                                    c'4.
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    c'\breve
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
                            }
                            \context Voice = "sounding voice"
                            {
                                \tweak edge-height #'(0.7 . 0)
                                \times 8/14
                                {
                                    \override Dots.staff-position = #2
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \override Staff.Accidental.stencil = ##f
                                    \voiceOne
                                    d'\breve
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
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak padding #19.65
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \jawharp-crook \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpan
                                    _ \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    d'4.
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''\breve
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
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    _ \>
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
                                    a''4
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
                                        )
                                        \stopTextSpan
                                        \breathe
                                        \revert Staff.NoteHead.no-ledgers
                                        \revert Staff.Accidental.stencil
                                    }
                                }
                            }
                        >>
                        \oneVoice
                        s1 * 1/4
                        \override Dots.staff-position = #2
                        \staff-line-count 1
                        \clef "percussion"
                        c'4
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
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Auf dem Deckel mit Styroporkugeln } \line { Möglichst kontinuierlicher Ton }  } }
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak stencil #constante-hairpin
                        \<
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
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        \afterGrace
                        c'4
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
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
                            \!
                        }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \override Dots.staff-position = #2
                        \staff-line-count 1
                        \clef "percussion"
                        c'4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                          %! abjad.glissando(7)
                        - \tweak Glissando.style #'dotted-line
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #3
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { ( Etwa 1 - 2 Klicks pro Puls ) }  } } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
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
                        c'4
                        c'4
                        c'4
                        c'4
                        \afterGrace
                        c'4
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
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
                            \!
                            \stopTextSpan
                        }
                        \staff-line-count 5
                        \revert Staff.Accidental.X-extent
                        \clef "treble"
                        cs'4
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                        :32
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                        \override Staff.Accidental.X-extent = ##f
                        gs'2.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sffz pp"))
                        :32
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \override Dots.staff-position = #2
                        \staff-line-count 1
                        \clef "percussion"
                        c'4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \center-column { \line { Auf dem Deckel } \line { mit Styroporkugeln }  } }
                          %! abjad.glissando(7)
                        - \tweak Glissando.style #'dotted-line
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Etwa 1 - 2 Klicks pro Puls } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { 2 - 3 Klicks }
                        \startTextSpan
                        \>
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
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        \afterGrace
                        c'4
                        \stopTextSpan
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
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
                                        #:hspace -0.4
                                        #:dynamic "ffff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                        }
                        <<
                            \context Voice = "37 voice temp"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    \staff-line-count 5
                                    \interrupt
                                    \ottava 2
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
                                    \clef "treble"
                                    \voiceOne
                                    g''''4
                                    - \tweak color \一
                                    ^ \marcato
                                    _ \pp
                                    _ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Tasten }
                                    _ \<
                                    \interrupt
                                    g''''4
                                    - \tweak color \一
                                    ^ \marcato
                                    \interrupt
                                    g''''4
                                    - \tweak color \一
                                    ^ \marcato
                                    \interrupt
                                    a''''4
                                    - \tweak color \一
                                    ^ \marcato
                                    \interrupt
                                    a''''8
                                    - \tweak color \一
                                    ^ \marcato
                                    ~
                                    a''''32
                                    _ \ff
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
                            }
                            \context Voice = "35 voice"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 32) (ly:make-duration 5 0))
                                \times 32/35
                                {
                                    \interrupt
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
                                    \voiceTwo
                                    g''''4
                                    - \tweak color \三
                                    _ \marcato
                                    \interrupt
                                    g''''4
                                    - \tweak color \三
                                    _ \marcato
                                    \interrupt
                                    g''''4
                                    - \tweak color \三
                                    _ \marcato
                                    \interrupt
                                    g''''4
                                    - \tweak color \三
                                    _ \marcato
                                    \interrupt
                                    g''''16.
                                    - \tweak color \三
                                    _ \marcato
                                    \ottava 0
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
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "piano 1 voice temp"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 3
                                    \voiceOne
                                    r32
                                    [
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    r32
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    r32
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    r32
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    r32
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    r32
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    r32
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    r32
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    <ds'''' e'''' g'''' a''''>32
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    r32
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 4
                                    r64
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    r64
                                    \revert Staff.Accidental.X-extent
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    <ds'''' e'''' g'''' a''''>64
                                    \override Staff.Accidental.X-extent = ##f
                                    \once \override Voice.Stem.stemlet-length = #0
                                    \once \hide Voice.Rest
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 0
                                    r64
                                    ]
                                }
                            }
                            \context Voice = "Jolin"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 37 32) (ly:make-duration 5 0))
                                \times 32/37
                                {
                                    \ottava 2
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 0
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    \voiceTwo
                                    cs'''32
                                    - \marcato
                                    - \sharp-articulation
                                      %! rmakers.beam_groups()
                                    [
                                    \revert Staff.Accidental.stencil
                                    s32
                                    s32
                                    s32
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    gs'''32
                                    - \marcato
                                    - \sharp-articulation
                                    \revert Staff.Accidental.stencil
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    a'''32
                                    - \marcato
                                    - \natural-articulation
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    b'''32
                                    - \marcato
                                    - \natural-articulation
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    a'''32
                                    - \marcato
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                    s32
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    \afterGrace
                                    gs'''32
                                    - \marcato
                                    - \sharp-articulation
                                    {
                                        \my-hack-slash
                                        \once \override Flag.stroke-style = #"grace"
                                        g'''16
                                        - \natural-articulation
                                        [
                                        (
                                        fs'''16
                                        - \sharp-articulation
                                        \revert Staff.Accidental.stencil
                                        s16
                                        )
                                        ]
                                    }
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    cs'''32
                                    - \marcato
                                    - \sharp-articulation
                                    \revert Staff.Accidental.stencil
                                    s32
                                    s32
                                    s32
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 3
                                    gs'''32
                                    - \marcato
                                    - \sharp-articulation
                                    \revert Staff.Accidental.stencil
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    s32
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 3
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    a'''32
                                    - \marcato
                                    - \natural-articulation
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    b'''64
                                    - \marcato
                                    - \natural-articulation
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    a'''64
                                    - \marcato
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    \afterGrace
                                    gs'''64
                                    - \marcato
                                    - \sharp-articulation
                                    {
                                        \my-hack-slash
                                        \once \override Flag.stroke-style = #"grace"
                                        g'''16
                                        - \natural-articulation
                                        [
                                        (
                                        \revert Staff.Accidental.stencil
                                        \once \override Accidental.stencil = ##f
                                        fs'''16
                                        - \sharp-articulation
                                        s16
                                        )
                                        ]
                                    }
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    cs'''64
                                    - \marcato
                                    - \sharp-articulation
                                    \revert Staff.Accidental.stencil
                                    s64
                                    s64
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    gs'''64
                                    - \marcato
                                    - \sharp-articulation
                                    \revert Staff.Accidental.stencil
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    a'''64
                                    - \marcato
                                    - \natural-articulation
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    b'''64
                                    - \marcato
                                    - \natural-articulation
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    a'''64
                                    - \marcato
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    \afterGrace
                                    gs'''64
                                    - \marcato
                                    - \sharp-articulation
                                    {
                                        \my-hack-slash
                                        \once \override Flag.stroke-style = #"grace"
                                        g'''16
                                        - \natural-articulation
                                        [
                                        (
                                        \revert Staff.Accidental.stencil
                                        \once \override Accidental.stencil = ##f
                                        fs'''16
                                        - \sharp-articulation
                                        s16
                                        )
                                        ]
                                    }
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    cs'''64
                                    - \marcato
                                    - \sharp-articulation
                                    \revert Staff.Accidental.stencil
                                    s64
                                    s64
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    gs'''64
                                    - \marcato
                                    - \sharp-articulation
                                    \revert Staff.Accidental.stencil
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    a'''64
                                    - \marcato
                                    - \natural-articulation
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    b'''64
                                    - \marcato
                                    - \natural-articulation
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 4
                                    a'''64
                                    - \marcato
                                    - \natural-articulation
                                    \revert Staff.Accidental.stencil
                                    s64
                                    \override Staff.Accidental.stencil = ##f
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 4
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 0
                                    \afterGrace
                                    gs'''64
                                    - \marcato
                                    - \sharp-articulation
                                      %! rmakers.beam_groups()
                                    ]
                                    {
                                        \my-hack-slash
                                        \once \override Flag.stroke-style = #"grace"
                                        g'''16
                                        - \natural-articulation
                                        [
                                        (
                                        \revert Staff.Accidental.stencil
                                        \once \override Accidental.stencil = ##f
                                        fs'''16
                                        - \sharp-articulation
                                        s16
                                        )
                                        ]
                                        \ottava 0
                                    }
                                }
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
                        s1 * 37/14
                        s1 * 1/4
                        s1 * 13/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 5/4
                        s1 * 5/4
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context leftHandStaff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/14
                        {
                            r\breve
                            \sustainOn
                            r4.
                            \override Dots.staff-position = #2
                            \revert Staff.Accidental.X-extent
                            \clef "bass"
                            <e,, d,>\breve
                            :32
                            \ppp
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { ( Tasten ) }
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            \<
                            \override Staff.Accidental.X-extent = ##f
                            \revert Staff.Accidental.X-extent
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            \afterGrace
                            <e,, d,>4
                            :32
                            {
                                \once \override Flag.stroke-style = #"grace" 
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Staff.Accidental.X-extent
                                \once \override NoteHead.transparent = ##t
                                <e,, d,>16
                                \breathe
                                \override Staff.Accidental.X-extent = ##f
                            }
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \revert Staff.Accidental.X-extent
                        \afterGrace
                        <e,, d,>4
                        \fff
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \revert Staff.Accidental.X-extent
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            <e,, d,>16
                            \!
                            \sustainOff
                            \override Staff.Accidental.X-extent = ##f
                        }
                        \override Staff.Accidental.X-extent = ##f
                        \override Dots.staff-position = #2
                        \staff-line-count 1
                        \revert Staff.Accidental.X-extent
                        \clef "percussion"
                        c'4
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        \override Staff.Accidental.X-extent = ##f
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
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        \afterGrace
                        c'4
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
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
                        }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \override Dots.staff-position = #2
                        \staff-line-count 1
                        \clef "percussion"
                        c'4
                          %! abjad.glissando(7)
                        - \tweak Glissando.style #'dotted-line
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
                        c'4
                        c'4
                        c'4
                        c'4
                        \afterGrace
                        c'4
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
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
                        }
                        s1 * 1
                        \sustainOn
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \sustainOff
                        \stopStaff \startStaff
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \override Dots.staff-position = #2
                        \staff-line-count 1
                        \clef "percussion"
                        c'4
                          %! abjad.glissando(7)
                        - \tweak Glissando.style #'dotted-line
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
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        c'4
                        \afterGrace
                        c'4
                        {
                            \once \override Flag.stroke-style = #"grace" 
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
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
                        }
                        <<
                            \context Voice = "13 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 16) (ly:make-duration 4 0))
                                \times 16/13
                                {
                                    \staff-line-count 5
                                    \interrupt
                                    \ottava 2
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
                                    \clef "treble"
                                    \voiceOne
                                    g''''4
                                    - \tweak color \二
                                    ^ \marcato
                                    \sustainOn
                                    \interrupt
                                    g''''4
                                    - \tweak color \二
                                    ^ \marcato
                                    \interrupt
                                    g''''4
                                    - \tweak color \二
                                    ^ \marcato
                                    \interrupt
                                    g''''16
                                    - \tweak color \二
                                    ^ \marcato
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
                            }
                            \context Voice = "4 voice"
                            {
                                \interrupt
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
                                \voiceTwo
                                g''''4
                                - \tweak color \四
                                _ \marcato
                                \interrupt
                                g''''4
                                - \tweak color \四
                                _ \marcato
                                \interrupt
                                g''''4
                                - \tweak color \四
                                _ \marcato
                                \interrupt
                                g''''4
                                - \tweak color \四
                                _ \marcato
                                \ottava 0
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
                        s1 * 1
                        \afterGrace
                        s1 * 1
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
                        R1 * 37/14
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
                        R1 * 13/4
                        \stopStaff \startStaff
                        \once \override Staff.BarLine.transparent = ##f
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
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \override Dots.staff-position = #2
                        e\longa
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
                        e2
                        ~
                        e8
                    }
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    g8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \revert Dots.staff-position
                    g16
                    \override Dots.staff-position = #2
                    g\breve.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \revert Dots.staff-position
                    a'4
                    \once \override Staff.BarLine.transparent = ##f
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
                    R1 * 1
                    \stopStaff \startStaff
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override Staff.TimeSignature.transparent = ##t
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1
                    \stopStaff \startStaff
                    \override Dots.staff-position = #2
                    a'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    g2
                    - \abjad-zero-padding-glissando
                    \glissando
                    a4
                    - \abjad-zero-padding-glissando
                    \glissando
                    \revert Dots.staff-position
                    a'8
                    \once \override Staff.BarLine.transparent = ##f
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
