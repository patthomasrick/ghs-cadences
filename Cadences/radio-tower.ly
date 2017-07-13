\version "2.18.2"

\header {
  title = "Radio Tower"
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
	\tempo "160"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		<d d>8-> d16 d d8-> d16 d d8-> d16 d-> r8 q-> |
		q8-> d16 d d8-> d16 d d8-> d16 d-> r8 q-> |
		q-> d16 d d8 q-> q-> d16 d d8 d |
		d16 d d8 d16 d d8 d16 d d8 d16 d d8 |
		
		\repeat percent 2 {
			d16 d d-> d d d d-> d d d \rs d-> d \rs d-> d \rs d-> d |
		}
		
		\repeat percent 2 {
			d-> d d d d-> d d d d-> d d d d-> d d d |
		}
		
		\rs d4-^ d16-> d-> d-> d-> \rs d4-^ r4  \bar "|."
	}
}

tenors = \new Staff \with {
    instrumentName = #"Tenors"
} {
	\format
	
	\time 4/4
	\tempo "160"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		<b g>8-> f'16 f f8-> f16 f f8-> f16 f-> r8 q-> |
		q8-> f16 f f8-> f16 f f8-> f16 f-> r8 q-> |
		q-> f16 f f8 q-> q-> f16 f f8 d |
		f16 f f8 d16 d d8 b16 b b8 g16 g g8 |
		
		\repeat percent 2 {
			g16 g f'-> g, g g f'-> g, g g \rs f'-> g,-> \rs f'-> g,-> \rs f'-> g,-> |
		}
		
		\repeat percent 2 {
			f' f f f d d d d f d b g f' d b g |
		}
		
		\rs f'4-^ g,16-> g-> g-> g-> \rs g4-^ r4  \bar "|."
	}
}

bassdrum = \new Staff \with {
    instrumentName = #"B. D."
} {
	\format
	
	\time 4/4
	\tempo "160"
	\clef "percussion"
	
	% g b d' f'	
	
	\repeat percent 2 {
		<f' d' b g>4 r2 r8 q8
	}
	q4. q8 q4. q8 |
	q4 q q q |
	
	\repeat percent 2 {
		r8 q r q r q q q |
	}
	
	\repeat percent 2 {
		q4 q q8 q q q |
	}
	
	q4-> q16 q q q q4-> r4  \bar "|."
}

cymbals = \new Staff \with {
    instrumentName = #"Cymbals"
} {
	\format
	
	\time 4/4
	\tempo "160"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		\repeat percent 2 {
			c2. r8 c8 |
		}
		c4. c8 c4. c8 |
		\xNote {c4 c c c} |
		
		\repeat percent 2 {
			\xNote {r8 c r c r c c c} |
		}
		
		\repeat percent 2 {
			\xNote {c4 c c c} |
		}
		
		c2 c4 r4 \bar "|."
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

