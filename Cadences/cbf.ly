\version "2.18.2"

\header {
  title = "CBF"
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
	
	\relative c' {
		% \xNote {c16^"One snare" \ff c c c} b-> \xNote {c c c c c c c} b-> \xNote {c c} b-> |
		% \xNote {c16 c c c} b-> \xNote {c c c c c c c} b-> b-> b-> b-> |
		% \xNote {c16^"Add snare(s)" \f c c c} b-> \xNote {c c c c c c c} b-> \xNote {c c} b-> |
		% \xNote {c16 c c c} b-> \xNote {c c c c c c c} b-> b-> b-> b-> |
		\rhOn d16^"One snare" \ff  d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> \rh d \rh d d-> |
		\rhOn d16 d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> d-> d-> d-> |
		\rhOn d16^"All snares" d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> \rh d \rh d d-> |
		\rhOn d16 d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> d-> d-> d-> |
		
		\rhOn d16^"Add tenors" d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> \rh d \rh d d-> |
		\rhOn d16 d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> d-> d-> d-> |
		\rhOn d16 d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> \rh d \rh d d-> |
		\rhOn d16 d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> d-> d-> d-> |
		
		\rhOn d16^"Add everyone" d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> \rh d \rh d d-> |
		\rhOn d16 d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> d-> d-> d-> |
		\rhOn d16 d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> \rh d \rh d d-> |
		\rhOn d16 d d d \rhOff d-> \rhOn d d d d d d d \rhOff d-> d-> d-> d-> |
		
		d4-> \ff r8 d16 d d8.-> d8.-> d8-> |
		r8 \rhOn d8^"Stick click" d \rhOff d16:32 d:32 d8-> d-> d16-> d d d |
		d4-> \rh d8 d16 d d8.-> d8.-> d8-> |
		r8 \rhOn d8 d \rhOff d16:32 d:32 d8-> d-> d16-> d d d |
		
		d16:32 \f d:32 d:32 d:32 d-> d d d d-> d d d-> d d d-> d |
		d d d-> d d-> d d:32 d:32 d8-> d-> d16->  d d d |
		d16:32 d:32 d:32 d:32 d-> d d d d-> d d d-> d d d-> d |
		d d d-> d d-> d d:32 d:32 d8-> d-> d16->  d d d |
		d16:32 d:32 d:32 d:32 d-> d d d d-> d d d-> d d d-> d |
		d d d-> d d-> d d:32 d:32 d8-> d-> d16->  d d d |
		
		d4 \ff d d d |
		d8 d d4 d d16 d d d | 
		d4 d d d |
		d8 d d4 d d16 d d d | 
		
		d16:32 d:32 d:32 d:32 d-> d d d d-> d d d-> d d d-> d |
		d d d-> d d-> d d:32 d:32 d8-> d-> d16->  d d d |
		d16:32 d:32 d:32 d:32 d-> d d d d-> d d d-> d d d-> d |
		d d d-> d d-> d d:32 d:32 d8-> d-> d16-> d8-> d16->|
		
		\rs b4-> r2. \bar "|."
	}
}

tenors = \new Staff \with {
    instrumentName = #"Tenors"
} {
	\format
	
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
			
		R1*4
		
		d16-> d d d-> d d d-> d  d d-> d d d8-> b16 b |
		d16-> d d d-> d d d-> d  d d-> d d d-> d-> b-> b-> |
		d16-> d d d-> d d d-> d  d d-> d d d-> d-> b-> b-> |
		\tuplet 6/4 {f'16 f f d d d} \tuplet 6/4 {b b b g g g}
		\tuplet 6/4 {f'16 f f d d d} \tuplet 6/4 {b b b g g g} |
		
		d16-> d' d d-> d d d-> d  d d-> d d d8-> b16 b |
		d16-> d d d-> d d d-> d  d d-> d d d-> d-> b-> b-> |
		d16-> d d d-> d d d-> d  d d-> d d d-> d-> b-> b-> |
		\tuplet 6/4 {f'16 f f d d d} \tuplet 6/4 {b b b g g g}
		\tuplet 6/4 {f'16 f f d d d} \tuplet 6/4 {b b b g g g} |
		
		<b g>4-> \ff r8 q16 q q8.-> q8.-> q8-> |
		r8 <f' d>8-> q-> g,16:32 g:32 f'8-> f-> f16-> d b g |
		<b g>4-> <f' d>8-> <b, g>16 q q8.-> q8.-> q8-> |
		r8 <f' d>8-> q-> g,16:32 g:32 f'8-> f-> f16-> d b g |
		
		g16:32 \f g:32 g:32 g:32 f'-> g, g g f'-> g, g \xo f'->^"Crossover" g, g f'-> g, |
		g g f'-> g, f'-> g, g:32 g:32 f'8-> f-> f16 d b g |
		g16:32 g:32 g:32 g:32 f'-> g, g g f'-> g, g \xo f'-> g, g f'-> g, |
		g g f'-> g, f'-> g, g:32 g:32 f'8-> f-> f16 d b g |
		g16:32 g:32 g:32 g:32 f'-> g, g g f'-> g, g \xo f'-> g, g f'-> g, |
		g g f'-> g, f'-> g, g:32 g:32 f'8-> f-> f16 d b g |
		
		<b g>4-> \ff <f' d>8-> <b, g>16 q q8.-> q8.-> q8-> |
		r8 <f' d>8-> q-> g,16:32 g:32 f'8-> f-> f16-> d b g |
		<b g>4-> <f' d>8-> <b, g>16 q q8.-> q8.-> q8-> |
		r8 <f' d>8-> q-> g,16:32 g:32 f'8-> f-> f16-> d b g |
		
		g16:32 g:32 g:32 g:32 f'-> g, g g f'-> g, g \xo f'-> g, g f'-> g, |
		g g f'-> g, f'-> g, g:32 g:32 f'8-> f-> f16 d b g |
		g16:32 g:32 g:32 g:32 f'-> g, g g f'-> g, g \xo f'-> g, g f'-> g, |
		g g f'-> g, f'-> g, g:32 g:32 f'8-> f-> f16 d8 b16 |
		
		\rs g4 r2. \bar "|."
	}
}

bassdrum = \new Staff \with {
    instrumentName = #"B. D."
} {
	\format
	
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	R1*8
	
	<g b d' f'>8-> q16 q-> r8 q16 q q q-> q-> r r4 |
	<g b d' f'>8-> q16 q-> r8 q16 q q q-> q-> r r4 |
	<g b d' f'>8-> q16 q-> r8 q16 q q q-> q-> r r4 |
	q8 q q q q q q q |
	
	q4 \ff r8 q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q q q |
	q4 \xNote {q8} q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q q q |
	
	q4 \mf \xNote {q8} q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q q q |
	q4 \xNote {q8} q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q q q |
	q4 \xNote {q8} q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q q q |
	
	q4 \ff \xNote {q8} q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q q q |
	q4 \xNote {q8} q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q q q |
	
	q4 \f \xNote {q8} q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q q q |
	q4 \xNote {q8} q16 q q8. q8. q8 | 
	r8 \xNote {q q} q16 q q8 q q16 q8 q16 |
	
	q4 r2. \bar "|."
}

cymbals = \new Staff \with {
    instrumentName = #"Cymbals"
} {
	\format
	
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		R1*8
		
		\xNote {c4 c c c} |
		\xNote {c4 c c c} |
		\xNote {c4 c c c} |
		\xNote {c4 c c c} |
		
		c1 |
		r8 c8 c2. |
		r8 c2.. |
		r8 c8 c2. |
		
		r8 c2.. |
		r8 c8 c2. |
		r8 c2.. |
		r8 c8 c2. |
		r8 c2.. |
		r8 c8 c2. |
		
		r8 c2.. |
		r8 c8 c2. |
		r8 c2.. |
		r8 c8 c2. |
		
		r8 c2.. |
		r8 c8 c2. |
		r8 c2.. |
		r8 c8 c2. |
		
		c1 \bar "|."
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

