\version "2.18.2"

\header {
  title = "Rap"
  subtitle = "GHS Cadence"
  arranger = "Arr. by Patrick Thomas"
}

\include "percussion-tools.ly"

snare = \new Staff \with {
    instrumentName = #"Snare"
} { 
	\format
	\stemUp
  
	\time 4/4
	\tempo "140"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		R1*4 |
		
		\repeat percent 2 {
			d16-> d d d-> 	d d d-> d 	d-> d d d-> 	d d d-> d |
			d-> d d d-> 	d d d-> d 	d8-> d16:32 d:32 \rs d4-^ |
		}
		
		\repeat percent 2 {
			d8-> d16 d16-> r d d8-> d8-> d16 d16-> r d d8-> |
			d8-> d16 d16-> r d d8-> d8-> d16:32 d:32 \rs d4-^ |
		}
		
		r2 \rh d4 r4 \bar "|."
	}
}

tenors = \new Staff \with {
    instrumentName = #"Tenors"
} {
	\format
	
	\time 4/4
	\tempo "140"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		\repeat percent 6 { 
			\bu f8.^\zz \bu d^\zz \bu b8^\zz \bu g8.^\zz \bu b8.^\zz \bu d8^\zz |
			\bu f8.^\zz \bu d^\zz \bu b8^\zz \bu g8^\zz f'16:32 f:32 \rs f4 |
		}
	
		f16:32 f:32 f:32 f:32 \rs f4-^ \rh c4 r4 \bar "|."
	}
}

bassdrum = \new Staff \with {
    instrumentName = #"B. D."
} {
	\format
	
	\time 4/4
	\tempo "140"
	\clef "percussion"
	
	% g b d' f'	
	
	R1*4 |
	
	\repeat percent 4 {
		<f' d' b g>8. q8. q8 q8. q8. q8 |
		q8. q8. q8 q4 q |
	}
	
	r2 \rh q4 r4 \bar "|."
}

cymbals = \new Staff \with {
    instrumentName = #"Cymbals"
} {
	\format
	
	\time 4/4
	\tempo "140"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		R1*4 |
		
		\repeat percent 8 {
			\xNote {c4 c c c | }
		}
		
		r2 \xNote {c4} r \bar "|."
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

