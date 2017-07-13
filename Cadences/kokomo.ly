\version "2.18.2"

\header {
  title = "Kokomo"
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
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		R1*3 |
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d16 d d d d d}
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d16 r d d8.} |
		
		\rhOn d16^"On rim" d d d \rhOff d \rhOn d d \rhOff d \rhOn d \rhOff d \rhOn d d \rhOff d \rhOn d d d \rhOff |
		\rhOn d16 d d d \rhOff d \rhOn d d \rhOff d \rhOn d \rhOff d \rhOn d d \rhOff d d d d |
		\rhOn d16 d d d \rhOff d \rhOn d d \rhOff d \rhOn d \rhOff d \rhOn d d \rhOff d d d d |
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d16 d d d d d}
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d16 r d d8.} |
		
		<<
			\new Voice = "melody" {
				<<
				{
					\voiceOne
					% cowbell
					a'8^"Cowbell solo" a a a16 a r a r a16 a8 a |
					a8 a a a16 a r a r a16 a a a8 |
					a8 a a a16 a r a r a16 a8 a |
				}
				\new Voice {
					\voiceTwo
					% other snares
					\rhOn r4 d, r d \rhOff |
					\rhOn r4 d r \rhOff d16 d d8 |
					\rhOn r4 d r d \rhOff |
				}
				>>
				\oneVoice
		    }
		>>
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d16 d d d d d}
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d16 r d d8.} |
		
		\rhOn d16 d d d \rhOff d \rhOn d d \rhOff d \rhOn d \rhOff d \rhOn d d \rhOff d \rhOn d d d \rhOff |
		\rhOn d16 d d d \rhOff d \rhOn d d \rhOff d \rhOn d \rhOff d \rhOn d d \rhOff d d d d |
		\rhOn d16 d d d \rhOff d \rhOn d d \rhOff d \rhOn d \rhOff d \rhOn d d \rhOff d d d d |
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d16 d d d d d}
		\tuplet 6/4 {d16 d d d d d} \tuplet 6/4 {d16 r d d8.} |
	
		\rsOn d4 \rsOff r2. \bar "|."
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
		f8 f d f16 f r f8 f16 d8 g, |
		f'8 f d f16 f r f8 f16 d16 d b8 |
		f'8 f d f16 f r f8 f16 d8 g, |
		\tuplet 6/4 {f'16 f f d d d} \tuplet 6/4 {f16 f f d d d} 
		\tuplet 6/4 {f16 f f d d d} \tuplet 6/4 {b16 r b g8.} |
		
		f'8 f d f16 f r f8 f16 d8 g, |
		f'8 f d f16 f r f8 f16 d16 d b8 |
		f'8 f d f16 f r f8 f16 d8 g, |
		\tuplet 6/4 {f'16 f f d d d} \tuplet 6/4 {f16 f f d d d} 
		\tuplet 6/4 {f16 f f d d d} \tuplet 6/4 {b16 r b g8.} |
		
		<<
			\new Voice = "melody" {
				<<
				{
					\voiceOne
					% cowbell
					a'8^"Cowbell solo" a a a16 a r a r a16 a8 a |
					a8 a a a16 a r a r a16 a a a8 |
					a8 a a a16 a r a r a16 a8 a |
				}
				\new Voice {
					\voiceTwo
					% other snares
					r4 \xNote {c,_"Stick click"} r \xNote {c} |
					r4 \xNote {c} r <b g>16 q q8 |
					r4 \xNote {c} r \xNote {c} |
				}
				>>
				\oneVoice
		    }
		>>
		\tuplet 6/4 {f16 f f d d d} \tuplet 6/4 {f16 f f d d d} 
		\tuplet 6/4 {f16 f f d d d} \tuplet 6/4 {b16 r b g8.} |
		
		f'8 f d f16 f r f8 f16 d8 g, |
		f'8 f d f16 f r f8 f16 d16 d b8 |
		f'8 f d f16 f r f8 f16 d8 g, |
		\tuplet 6/4 {f'16 f f d d d} \tuplet 6/4 {f16 f f d d d} 
		\tuplet 6/4 {f16 f f d d d} \tuplet 6/4 {b16 r b g8.} |
		
		g4-^ r2. \bar "|."
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
	
	R1*4 |
	
	\repeat percent 3 {<g b d' f'>8^"Boom" \xNote {q^"click"}  q^"boom" \xNote {q^"click..."} q  \xNote {q} q  \xNote {q} | }
	q8 q q q q q \tuplet 6/4 {q16 r q q8.} |
	
	R1 | 
	r2. q16-> q-> q8-> | 
	R1 | 
	q8 q q q q q \tuplet 6/4 {q16 r q q8.} |
	
	\repeat percent 3 {<g b d' f'>8 \xNote {q} q  \xNote {q} q  \xNote {q} q  \xNote {q} | }
	q8 q q q q q \tuplet 6/4 {q16 r q q8.} |
	
	q4-> r2. \bar "|."
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
		R1*4 |
		\repeat percent 3 {
			\xNote {r8 c r c r c r c | }
		}
		R1 |
		
		R1 |
		r2. r8 c |
		R1 |
		R1 |
		
		\repeat percent 3 {
			\xNote {r8 c r c r c r c | }
		}
		R1 |
		
		c4 r2. \bar "|."
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

