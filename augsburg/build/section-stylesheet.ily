\version "2.23.81"
\language english
#(set-default-paper-size "11x17landscape")
#(set-global-staff-size 15)
#(ly:set-option 'relative-includes #t)

\include "../library.ily"
\include "/Users/trintonprater/evans/lilypond/evans.ily"
\include "/Users/trintonprater/trinton/lilypond/trinton-markups.ily"
\include "/Users/trintonprater/abjad-ext-microtones/abjadext/microtones/lilypond/ekmelos-ji-accidental-markups.ily"

afterGraceFraction = #(cons 15 16)

\layout {
    \accidentalStyle neo-modern
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
        \consists Multi_measure_rest_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \consists Measure_spanner_engraver
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.75 ly:text-interface::print)
        \override BarNumber.Y-extent = ##f
        \override BarNumber.Y-offset = -12
        \override BarNumber.extra-offset = #'(-4 . 4)
        \override BarNumber.font-size = 1
        \override BarNumber.padding = 1
        \override BarNumber.font-name = "Bodoni72 Book"
        \override MetronomeMark.stencil = ##f
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 0) (stretchability . 0))
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.transparent = ##t
        \override TimeSignature.font-size = 10
		\override TimeSignature.font-name = "Bodoni72 Book"
        \override TimeSignature.X-extent = ##f
        \override TimeSignature.X-offset = -1.3
        \override TimeSignature.whiteout-style = #'outline
        \override TimeSignature.whiteout = 1
        \override TimeSignature.layer = 4
        \override TimeSignature.break-visibility = #end-of-line-invisible
        % \override TimeSignature.font-size = 10
		% \override TimeSignature.font-name = "Bodoni72 Book"
        % \override TimeSignature.X-offset = -2.5
        % \override TimeSignature.Y-offset = 3
        % \override TimeSignature.whiteout-style = #'outline
        % \override TimeSignature.whiteout = 1
        % \override TimeSignature.layer = 4
    }

    \context {
        \Score
        \numericTimeSignature
        \accepts TimeSignatureContext
        \remove Bar_number_engraver
        proportionalNotationDuration = #(ly:make-moment 1 20)
        pedalSustainStyle = #'mixed

        \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 5) (minimum distance . 5) (padding . 1) (stretchability . 0))
        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 13) (minimum distance . 13) (padding . 0) (stretchability . 0))

        \override AccidentalSuggestion.avoid-slur = #'ignore
        \override Accidental.layer = 3
        \override Accidental.whiteout-style = #'outline
        \override Accidental.whiteout = 1
        % \override Accidental.X-extent = ##f

        \override BarLine.color = \二
        \override BarLine.transparent = ##t
        \override BarLine.hair-thickness = 0.5
        \override BarLine.thick-thickness = #10
        \override BarLine.layer = 2
        % \override BarLine.X-extent = #'(0 . 0)
        % \override BarLine.X-extent = ##f
        % \override BarLine.X-offset = -4
        % \override BarLine.extra-offset = #'(-0.5 . 0.5)

        autoBeaming = ##f
        \override Beam.breakable = ##t
        \override Beam.damping = 2
        \override Beam.concaveness = #10000
        \override Beam.beam-thickness = #1.15
        \override Beam.length-fraction = #1.84

        \override BendAfter.thickness = #3

        \override BreathingSign.text = \markup {
            \fontsize #7.5
            \override #'(font-name . "ekmelos")
            \char ##xe4D5
        }

        \override Clef.layer = 2
        \override Clef.whiteout-style = #'outline
        \override Clef.whiteout = 1
        \override Clef.color = \二

        \override DynamicText.font-size = #-2
        \override DynamicText.layer = 2
        \override DynamicText.whiteout-style = #'outline
        \override DynamicText.whiteout = 1
        \override DynamicLineSpanner.staff-padding = 4

        \override Glissando.thickness = #3
        \override Glissando.breakable = ##t

        \override Hairpin.to-barline = ##f

        \override KeyCancellation.color = \二

        \override KeySignature.color = \二
        \override KeySignature.layer = 2
        \override KeySignature.whiteout-style = #'outline
        \override KeySignature.whiteout = 1

        \override MeasureSpanner.direction = #UP
        \override MeasureSpanner.thickness = #1.5
        \override MeasureSpanner.font-size = 7
        \override MeasureSpanner.font-name = "Bodoni72 Book"
        \override MeasureSpanner.padding = 5
        \override MeasureSpanner.color = \二

        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteCollision.merge-differently-headed = ##t

        \override PianoPedalBracket.shorten-pair = #'(0 . -4)
        \override PianoPedalBracket.color = \一

        \override SpanBar.color = \二

        \override Staff.thickness = #0.5

        \override Stem.stemlet-length = 1
        \override Stem.thickness = #0.5
        \override Stem.details.beamed-lengths = #'(7)
        \override Stem.details.lengths = #'(7)

        \override StemTremolo.stencil = #ly:text-interface::print
        \override StemTremolo.text = \markup {
            \fontsize #3.5
            \override #'(font-name . "ekmelos")
            \char ##xe222
        }

        \override SustainPedal.color = \一

        \override TextScript.font-name = "Bodoni72 Book"
        \override TextScript.whiteout = 1
        \override TextSpanner.font-name = "Bodoni72 Book"

        \override Tie.stencil = #flare-tie
        \override Tie.height-limit = 6
        \override Tie.thickness = 1.5

        % \override TrillSpanner.bound-details.right.padding = #-5

        \shape #'((0 . 0) (0.5 . 0) (1 . 0) (2 . 0)) LaissezVibrerTie
        \override LaissezVibrerTie.X-extent = ##f
        %
        % \shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
        % \override RepeatTie.X-extent = ##f

        tupletFullLength = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 3
        \override TupletNumber.font-size = 1.5
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.layer = 2
        \override TupletBracket.whiteout-style = #'outline
        \override TupletBracket.whiteout = 1
        \override TupletNumber.font-size = 2
        \override TupletNumber.layer = 3
        \override TupletNumber.whiteout-style = #'outline
        \override TupletNumber.whiteout = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletNumber.font-name = "Bodoni72 Book"
        \override TupletBracket.stencil =
            #(lambda (grob)
               (let* ((pos (ly:grob-property grob 'positions))
                      (dir (ly:grob-property grob 'direction))
                      (new-pos (if (= dir 1)
                                   (max (car pos)(cdr pos))
                                   (min (car pos)(cdr pos)))))
                 (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                 (ly:tuplet-bracket::print grob)))
        \override TupletBracket.direction = #UP

        \override VoltaBracketSpanner.padding = 8
    }

    \context {
        \Staff
        fontSize = #-2.5
        \remove Time_signature_engraver
        \consists Duration_line_engraver
        \consists Grob_pq_engraver
        \consists #Interrupt_heads_engraver

        \override Accidental.X-extent = ##f

        \override AccidentalSuggestion.direction = #UP
        \override AccidentalSuggestion.whiteout-style = #'outline
        \override AccidentalSuggestion.whiteout = 1
        \override AccidentalSuggestion.layer = 2

        \override DurationLine.style = #'line
        \override DurationLine.thickness = #3
        \override DurationLine.to-barline = ##f
        \override DurationLine.breakable = ##t

        \override InstrumentName.self-alignment-X = #CENTER
    }

    \context {
        \Staff
        \name leftHandStaff
        \alias Staff
        \override TupletBracket.direction = #DOWN
        \override AccidentalSuggestion.direction = #DOWN
    } % just trying this out

    \context {
        \Staff
        \name timeSignatureStaff
        \type Engraver_group
        \consists Time_signature_engraver
        \omit StaffSymbol

        \override Clef.stencil = ##f
        \override Staff.transparent = ##t

        \override BarLine.transparent = ##f

        \override TimeSignature.font-size = 10
		\override TimeSignature.font-name = "Bodoni72 Book"
        \override TimeSignature.X-extent = ##f
        \override TimeSignature.X-offset = -1.3
        \override TimeSignature.whiteout-style = #'outline
        \override TimeSignature.whiteout = 1
        \override TimeSignature.layer = 4
        \override TimeSignature.break-visibility = #end-of-line-invisible
        % \override TimeSignature.padding = 1
    }

    \context {
        \Staff
        \name thirdStaff
        \type Engraver_group
        % \remove System_start_delimiter_engraver

        \RemoveAllEmptyStaves

        \alias Staff
    }

    \context {
        \Staff
        \name lowPassStaff
        \type Engraver_group
        \remove System_start_delimiter_engraver
        \clef varpercussion

        \override Accidental.stencil = ##f

        % \override BarLine.bar-extent = #'(-2.5 . 2.5)

        \override Beam.stencil = ##f

        \override Clef.stencil = ##f

        \override Dots.stencil = ##f

        \override DurationLine.X-offset = 0.40

        \override Flag.stencil = ##f

        \override Glissando.bound-details.left.padding = #0.5
        \override Glissando.bound-details.right.padding = #0.5
        \override Glissando.color = #(rgb-color 190/255 132/255 170/255)

        \override NoteHead.X-extent = #'(0 . 0)
        \override NoteHead.transparent = ##t
        \override NoteHead.no-ledgers = ##t

        \override StaffSymbol.line-count = #2
        \override StaffSymbol.line-positions = #'(5 -5)
        \override StaffSymbol.color = #(rgb-color 170/255 165/255 230/255)

        \override Stem.stencil = ##f

        \override Tie.stencil = ##f

        \RemoveAllEmptyStaves

        \alias Staff
    }

    \context {
        \StaffGroup
        \accepts lowPassStaff
        \accepts timeSignatureStaff
        \accepts leftHandStaff
        \accepts thirdStaff
        \accepts InterruptiveGroup
        % \accepts VanishingStaff
        \consists Grob_pq_engraver
        \consists #Interrupt_heads_engraver
        \consists #Explicit_interrupt_heads_engraver
        \consists #Follow_lines_engraver
        \consists #Switch_heads_engraver
        \consists #Hocket_lines_engraver
        % \override VoiceFollower.layer = -20
        \consists "Span_stem_engraver"
        \consists "Horizontal_bracket_engraver"
    }

    \context{
        \GrandStaff
        % \remove Time_signature_engraver
        \accepts lowPassStaff
        \accepts timeSignatureStaff
        \accepts leftHandStaff
        \accepts thirdStaff
        \accepts InterruptiveGroup
        % \accepts VanishingStaff
        \consists Grob_pq_engraver
        \consists #Interrupt_heads_engraver
        \consists #Explicit_interrupt_heads_engraver
        \consists #Follow_lines_engraver
        \consists #Switch_heads_engraver
        \consists #Hocket_lines_engraver
        \override VoiceFollower.layer = -20
        \consists "Span_stem_engraver"
        \consists "Horizontal_bracket_engraver"
    }

    \context {
        \Voice
        \remove Forbid_line_break_engraver
        \consists "Horizontal_bracket_engraver"
        \override Accidental.font-size = 1
    }

}
%
\paper {
    #(define fonts
        (set-global-fonts
	        #:music "haydn"
	        #:brace "haydn"
	))
    min-systems-per-page = 2
    % system-separator-markup = \markup \fontsize #12 { \tremolo-moderato }
    system-system-spacing = #'((basic-distance . 17) (minimum-distance . 17) (padding . 17) (stretchability . 17))
    indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 20\mm

    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
        \fill-line {
            \concat {
                \override #'(font-name . "Bodoni72 Book")
                { "D A S" \hspace #1 "W U N D E R Z E I C H E N B U C H" }
                \override #'(font-name . "Bodoni72 Book")
                " - Trinton Hlynn"
            }
            \concat {
                \fontsize #3
                \override #'(font-name . "Bodoni72 Book")
                    \fromproperty #'page:page-number-string
            }
        }

        evenFooterMarkup = \markup
            \fill-line {
                \concat {
                    \fontsize #3
                    \override #'(font-name . "Bodoni72 Book")
                        \fromproperty #'page:page-number-string
                }
                \concat {
                    \override #'(font-name . "Bodoni72 Book")
                    { "D A S" \hspace #1 "W U N D E R Z E I C H E N B U C H" }
                    \override #'(font-name . "Bodoni72 Book")
                    " - Trinton Hlynn"
                }
            }
}
