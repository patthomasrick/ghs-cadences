\version "2.18.2"

\header {
  title = "Cadence"
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
	
	\relative d' {
		
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

