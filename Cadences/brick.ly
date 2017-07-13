\version "2.18.2"

\header {
  title = "Brick"
  subtitle = "GHS Cadence"
  arranger = "Arr. by Patrick Thomas"
}

\include "percussion-tools.ly"

snare = \new Staff \with {
    instrumentName = #"Snare"
} { 
	\format
  
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	R1*4 
	\relative c' {
		\repeat percent 3 {r8 \bz r \bz r8 \bz r \bz |}
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d d d d d d}
		\tuplet 6/4 {d d d d d d} \tuplet 6/4 {d d d d d d}|
		
		d16:32 d:32 d:32 d:32 d:32 d:32 d:32 d:32 d-> d8-> d16-> \rs d d d d |
		d16:32 d:32 d:32 d:32 d:32 d:32 d:32 d:32 d-> d8-> d16-> d d:64 d8 |
		d16:32 d:32 d:32 d:32 d:32 d:32 d:32 d:32 d-> d8-> d16-> \rs d d d d |
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d d d d d d}
		\tuplet 6/4 {d d d d d d} \tuplet 6/4 {d d d d d d}|
		
		\rs d4 r2. \bar "|."
	}
}

tenors = \new Staff \with {
    instrumentName = #"Tenors"
} {
	\override Score.SpacingSpanner.strict-note-spacing = ##t
	\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
	\format
	
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
		
		
	g16:32 \ff g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> f' d' b g |
	g16:32 g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> b f':64 f'8-> |
	g16:32 g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> f' d' b g |
	\tuplet 6/4 {f' f' f' d' d' d'} \tuplet 6/4 {b b b g g g}
	\tuplet 6/4 {f' f' f' d' d' d'} \tuplet 6/4 {b b b g g g} |
	
	
	g16:32  \f g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> f' d' b g |
	g16:32 g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> b f':64 f'8-> |
	g16:32 g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> f' d' b g |
	\tuplet 6/4 {f' f' f' d' d' d'} \tuplet 6/4 {b b b g g g}
	\tuplet 6/4 {f' f' f' d' d' d'} \tuplet 6/4 {b b b g g g} |
	
	
	g16:32 g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> f' d' b g |
	g16:32 g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> b f':64 f'8-> |
	g16:32 g:32 d':32 d':32 f':32 f':32 b:32 b:32 b-> b8-> b16-> f' d' b g |
	\tuplet 6/4 {f' f' f' d' d' d'} \tuplet 6/4 {b b b g g g}
	\tuplet 6/4 {f' f' f' d' d' d'} \tuplet 6/4 {b b b g g g} |
	
	
	g4 r2.\bar "|."
}

bassdrum = \new Staff \with {
    instrumentName = #"B. D."
} {
	\override Score.SpacingSpanner.strict-note-spacing = ##t
	\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
	\format
	
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	R1*4
	
	\repeat percent 3 {<g b d' f'>8 q q8. q16 r q8. q4 |}
	q8 q q q q q q q |
	
	\repeat percent 3 {<g b d' f'>8 q q8. q16 r q8. q4 |}
	q8 q q q q q q q |
	
	q4 r2. \bar "|."
}

cymbals = \new Staff \with {
    instrumentName = #"Cymbals"
} {
	\override Score.SpacingSpanner.strict-note-spacing = ##t
	\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
	\format
	
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
	
		R1*4
		
		\repeat percent 4 {\xNotesOn r8 c r c r c r c \xNotesOff}
		
		\repeat percent 4 {\xNotesOn r8 c r c r c r c \xNotesOff}
		
		c4( r2.) \bar "|."
	}
}

% score
\book {
	<< 
	\new StaffGroup <<
		\snare
		\tenors
		\bassdrum >>
	\cymbals
	>>
}

% individual parts
\book {
	\snare
}
\book {
	\tenors
}
\book {
	\bassdrum
}
\book {
	\cymbals
}
