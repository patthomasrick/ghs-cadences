\version "2.18.2"

\header {
  title = "Feet of Fury"
  subtitle = "GHS Cadence"
  arranger = "Arr. by Patrick Thomas"
}

\include "percussion-tools.ly"

tenors = \new Staff \with {
    instrumentName = #"Tenors"
} {
	\format
	
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		
		R1 | \bar "."
		
		\repeat percent 3 {
			r4 \rh d r \rh d |
		}
		r4 \rh d r f16 f d d |
		
		\repeat percent 3 {
			g,16 g g g f'-> g, g \xo f'->^"Cross-over" g, g f'-> f-> \bu b,4->^\zz |
		}
		\rs f'4-^ f4-^ f4-^ g,16:32 g:32 d':32 d:32 |

		% tenor feature
		f8^"Tenor feature"_"R" d16_"L" f_"R" r g,_"L" g_"R" g_"L" \tuplet 6/4 {b_"R" b_"L" b_"R" d_"L" d_"R" d_"L"} b8 <b g>16 q |
	}
}

% individual parts
\book {
	\tenors
}

