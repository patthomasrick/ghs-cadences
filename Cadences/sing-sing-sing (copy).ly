\version "2.18.2"

\header {
  title = "Sing Sing Sing"
  subtitle = "GHS Cadence"
  arranger = "Arr. by Patrick Thomas"
}

\include "percussion-tools.ly"

startinfo = {
	%\time 4/4
	\tempo "Straight" 4 = 108
	\clef "percussion"
}

swinginfo = {
	\tempo "Swing" 2 = 80
}	

snare = \new Staff \with {
    instrumentName = #"Snare"
} { 
	\format
	\startinfo
	
	% g b d' f'
	
	\relative d' {
		d4 d d8 d d d |

		R1*2 |
	
		\repeat volta 2 {
			d16-> d d d-> d d d:32 d:32 d16-> d d d-> d d d:32 d:32 |
			d16-> d d d-> d d d:32 d:32 d-> d d d d-> d d d |
		}
		
		\repeat percent 2 {\tuplet 6/4 4 {d16-> d d d-> r d d-> d d d-> r d d-> d d d-> d d d-> d d d-> d d } | }
		
		\swinginfo
		
		\repeat percent 3 {\xNote f4^"Ride cymbal or rim" <d \xNote f>8 \xNote f \xNote f4 q8 \xNote f | }
		\xNote f4 <d \xNote f>8 \xNote f \xNote f4 \xNote f16 d d \xNote f | 
		
		\repeat percent 3 {
			\xNote f4 <d \xNote f>8 \xNote f \xNote f4 q8 \xNote f | 
			\xNote f4 <d \xNote f>8 \xNote f \xNote f4 \xNote f16 d d \xNote f | 
		}
		
		\xNote f4 <d \xNote f>8 \xNote f \xNote f4 q8 \xNote f | 
		\tuplet 3/2 4 {d d d d d d d d d d d d d d d d d d d[ r d] } d4 |
		
		\startinfo
		\repeat percent 2 {r4 \rh d^"Rim" r \rh d | }
		
		d16-> d d d-> d d d:32 d:32 d16-> d d d-> d d d:32 d:32 |
		d16-> d d d-> d d d:32 d:32 d-> d d d d-> d d d |
		
		d8 \ff d 	d16 d d8	d8 d16 d	r d d8 |
		d8 d 	d16:32 d:32 d8	d16:32 d:32 d:32 d	r d d8 |
		\rs d4 r2. \bar "|."
	}	
}

tenors = \new Staff \with {
    instrumentName = #"Tenors"
} {
	\format
	\startinfo
	
	% g b d' f'
	
	\relative c' {
		R1*3 |
		
		\repeat volta 2 {
			b16-> d d g,-> d' d f-> d b-> d d g,-> d' d f-> d |
			b16-> d d g,-> d' d f-> d f d b g f' d b g |
		}
		\repeat percent 2 {r2 \tuplet 6/4 4 {f'16 f f d d d b b b g g g } | }
		
		\swinginfo
		
		R1*3 |
		r2. r8 d'16:32 d:32 |
		\repeat percent 3 {
			f4 g, g4. g8 |
			\tuplet 3/2 4 {f' f f d d d} f4. d16:32 d:32 |
		}
		f4 g, g4. g8 |
		\tuplet 3/2 4 {f'8 f f d d d f f f d d d f f f d d d b b b g g g } |
		
		\startinfo
		R1*2 |
		
		b16-> d d g,-> d' d f-> d b-> d d g,-> d' d f-> d |
		b16-> d d g,-> d' d f-> d f d b g f' d b g |
		
		g8 \ff g 	g16 g g8	g8 g16 g	r g g8 |
		g8 g 	g16:32 g:32 g8	g16:32 g:32 g:32 g	r g g8 |
		\rs g4 r2. \bar "|."
	}
}

bassdrum = \new Staff \with {
    instrumentName = #"B. D."
} {
	\format
	\startinfo
	
	% g b d' f'	
	
	R1 |
	
	\repeat percent 2 {
		g8 g g16 g g8 g g16 g16 r g g8 |
	}
	
	\repeat volta 2 {
		b8. g8. f'8 b8. g8. f'8 |
		b8. g8. f'8 <f' d' b g> q q q |
	}
	\repeat percent 2 {
		r2 q8 q q q |
	}
	
	\swinginfo
	
	\repeat percent 13 {
		q2 q |
	}
	
	\startinfo
	
	\repeat percent 2 {
		g8 g g16 g g8 g g16 g16 r g g8 |
	}
	
	b8. g8. f'8 b8. g8. f'8 |
	b8. g8. f'8 <f' d' b g> q q q |
	
	\repeat percent 2 {
		q8 \ff q q16 q q8 q q16 q16 r q q8 |
	}
	q4 r2. |
}

cymbals = \new Staff \with {
    instrumentName = #"Cymbals"
} {
	\format
	\startinfo
	
	% g b d' f'
	
	\relative c' {
		R1
		
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

