\version "2.18.2"

\header {
  title = "UT"
  subtitle = "GHS Cadence"
  arranger = "Arr. by Patrick Thomas"
}

\include "percussion-tools.ly"

format = {
	%\override Score.SpacingSpanner.strict-note-spacing = ##t
	%\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
	\compressFullBarRests
	\stemUp
}

snare = \new Staff \with {
    instrumentName = #"Snare"
} { 
	\format
  
	\time 4/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative d' {
		R1*3 |
		\tuplet 3/2 4 {d8 \< d d d d d d d d \! } d4-> 
		
		\bu <d d>4^\zz \bu q^\zz \bu q^\zz \bu q^\zz |
		\bu q4^\zz \bu q^\zz \bu q8^\zz \bu q^\zz \bu q4^\zz |
		\bu <d d>4^\zz \bu q^\zz \bu q^\zz \bu q^\zz |
		\tuplet 3/2 4 {d8 \< d d d d d d d d \! } d8-> d16:32 d:32 |
		
		\repeat percent 2 {
			d-> d d d d-> d d d d-> d d d d-> d d d |
			d-> d d d-> d d d-> d d d d-> d d-> d d:32 d:32 |
		}
		
		\repeat volta 2 {
			\repeat percent 2 {
				d4 r2 r8 d16 d |
			}
			d4 r2 r8 d16:32 d:32 |
			d-> d d d d-> d d d d:32 d:32 d:32 d:32 d:32 d:32 d:32 d:32 |
		}
		
		\repeat volta 2 {
			\time 5/4
			\rs d4 \rs d \rs d8 d \rs d16_"R" d8_"L" d16_"L" \rs d8 d |
			\time 4/4
			\repeat percent 2 {
				\rs d4 \rs d8 d \rs d16 d8 d16 \rs d8 d |
			}
			d16_"R" d_"R" d_"L" d_"L" d_"R" d_"R" d_"L" d_"L" d_"..." d d d d d d d |
		}
		
		\improvisationOn
		c16^"Improvised solo. Can be as long as wanted." c c c c c c c	 c c c c 	c c c c |
		c c c c c c c8 \improvisationOff \tuplet 3/2 {d d d} d4 |
		\bar "."
		
		\repeat percent 2 {d8. d8. d8 r d d \rs d-> |}
		
		\repeat volta 2 {
			\repeat percent 3 {d16:32 d:32 d:32 d:32 d8-> d-> d-> d-> d16-> d d d | }
			d16-> d d d d -> d d d d -> d d d d -> d d d |
		}
		
		\repeat volta 2 {
			\repeat percent 3 {d16 d d-> d d-> d d d-> d d d-> d-> \bu d8^\zz \rh d | }
			\rs d4-> d16:32 d:32 d:32 d:32 d-> d8-> d16-> r16 d-> d8 |
		}
		
		\rs d4-^ r2. \bar "|."
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
	
	\relative f' {
		f16_"R"[ f_"R" r d_"L"] f_"R" f_"R" g,_"L" g_"L" 	f'_"..."[f r d] f f g, g |
		f'[f r d] f f g, g f'_"R" f_"R" d_"L" d_"L" b_"R" b_"R" g_"L" g_"L" |
		f'[f r d] f f g, g 	f'[f r d] f f g, g |
		\tuplet 3/2 4 {f'8 \< f f d d d b b b \! } g4-> |
		
		f'16[f r d] f f g, g 	f'[f r d] f f g, g |
		f'[f r d] f f g, g f' f d d b b g g |
		f'[f r d] f f g, g 	f'[f r d] f f g, g |
		\tuplet 3/2 4 {f'8 \< f f d d d b b b \! } g8-> g16 g |
		
		f'-> g, g g f'-> g, g g f'-> g, g g f'-> g, g g |
		f'-> g, g \xo f'->^"Cross over" g, g f'-> g, g g f'-> g, f'-> g, g:32 g:32 |
		f'-> g, g g f'-> g, g g f'-> g, g g f'-> g, g g |
		f'-> g, g \xo f'-> g, g f'-> g, g g f'-> g, f'-> g, f':32 f:32 |
		
		\repeat volta 2 {
			f16->^"Tenor feature" f f f-> f f f-> f f f-> f f \rs f8-> <b, g>16-> q-> |
			q8-> f'16-> f f d-> d d f-> f f d8-> r16 q-> q-> |
			q8-> f16-> f f d-> d d b-> b b g8-> r16 g:32 g:32 |
			f'-> g, g g f'-> g, g g f':32 d:32 b:32 g:32 f':32 d:32 b:32 g:32 |
		}
		
		\repeat volta 2 {
			\time 5/4
			\rs f'4 \rs f \rs f8 g, \rs f'16 g,8 g16 \rs f'8 g, |
			\time 4/4
			\repeat percent 2 {
				\rs f'4 \rs f8 g, \rs f'16 g,8 g16 \rs f'8 g, |
			}
			f'16_"R" f_"R" d_"L" d_"L" b_"R" b_"R" g_"L" g_"L" f'_"..." f d d b b g g |
		}
		
		\improvisationOn
		c16^"Improvised solo. Can be as long as wanted." c c c c c c c	 c c c c 	c c c c |
		c c c c c c c8 \improvisationOff \tuplet 3/2 {q q q} q4 |
		\bar "."
		
		\repeat percent 2 {q8. q8. q8 r q q \rs <f d>->}
		
		\repeat volta 2 {
			f16:32 f:32 f:32 f:32 f8-> f-> f-> f-> f16-> d b g |
			d'16:32 d:32 d:32 d:32 d8-> d-> d-> d-> f16-> d b g |
			b16:32 b:32 b:32 b:32 b8-> b-> b-> b-> f'16-> d b g |
			f'16-> d b g f' -> d b g f' -> d b g f' -> d b g |
		}
		
		\repeat volta 2 {
			\repeat percent 3 {g16 g f'-> g, f'-> g, g \xo f'-> g, g f' f b,8 \rh c | }
			\rs f4-> b,16:32 b:32 d:32 d:32 f-> f8-> f16-> r16 f-> b,8 |
		}
		
		\rs g4-^ r2. \bar "|."
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
	R1*3 |
	\tuplet 3/2 4 {<g b d' f'>8 q q q q q q q q} q4 |
	
	q4 q q q | 
	q q q8 q q4 |
	q4 q q q | 
	\tuplet 3/2 4 {<g b d' f'>8 q q q q q q q q} q4 |
	
	\repeat percent 2 {
		q4 q q q |
		q8. q8. q8 r q q4 |
	}
	
	\repeat volta 2 {
		\repeat percent 3 {q4 r2 r8 q16 q | }
		q4 q q8 q q q |
	}
	
	\repeat volta 2 {
		\time 5/4
		q4 q q8 q q16 q8 q16 q8 q |
		\time 4/4
		\repeat percent 2 {
			q4 q8 q q16 q8 q16 q8 q |
		}
		q8 q q q q q q q |
	}
	
	R1*2 |
	
	\repeat percent 2 {q8. q8. q8 r q q \xNote {q} |}
	
	\repeat volta 2 {
		\repeat percent 3 {q4 q8 q q q q16 q q q | }
		q4 q q q |
	}
	
	\repeat volta 2 {
		\repeat percent 3 {q8 q q8. q16 r8 q8 q \xNote {q} | }
		q4 q8 q q16 q8 q16 r q q8 |
	}
	
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
		R1*3 |
		r2. c4 |
		
		\xNote {c4 c c c | } 
		\xNote {c c c8 c c4 | }
		\xNote {c c c c | }
		r2. c4 |
		
		\repeat percent 2 {
			\xNote {
				c4 c c c |
				c8. c8. c8 r c c4 |
			}
		}
		
		\repeat volta 2 {
			\repeat percent 3 {c1 | }
			\xNote {c4 c c c | }
		}
		
		\repeat volta 2 {
			\time 5/4
			\xNote {c4 c c c c | }
			\time 4/4
			\repeat percent 3 { \xNote {c4 c c c | } }
		}
		
		R1*2 |
		\repeat percent 2 {r2. r8 c8 | }
		
		\repeat volta 2 {
			\repeat percent 3 {\xNote {c4 c c } c4 | }
			c4 c c c |
		}
		
		\repeat volta 2 {
			\repeat percent 3 {\xNote {c8 c c8. c16 r8 c8 c} c |}
			\xNote {c4 c c c} |
		}
		
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

