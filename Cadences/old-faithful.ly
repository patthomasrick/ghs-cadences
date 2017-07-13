\version "2.18.2"

\header {
  title = "Old Faithful"
  subtitle = "GHS Cadence"
  arranger = "Arr. by Patrick Thomas"
}

\include "percussion-tools.ly"

format = {
	%\override Score.SpacingSpanner.strict-note-spacing = ##t
	\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
	\compressFullBarRests
	\stemUp
}

zz = \markup { \override #'(font-family . typewriter) 
              \fontsize #2 "z" } 
bu =  {
	\once \override TextScript #'extra-offset = #'(.4 . -2.5)
}
snare = \new Staff \with {
    instrumentName = #"Snare"
} { 
	\format
  
	\time 2/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
		
		\partial 8 d16:32^"One snare" \f d:32 |
		
		\repeat percent 3  {
			d-> d d d-> d d d:32 d:32 |
		}
		d-^ d d-^ d d-^ d d:32^"All snares" d:32 |
		
		\repeat percent 3  {
			d-> d d d-> d d d:32 d:32 |
		}
		d-^ d d-^ d d-^ d d:32^"All tenors" d:32 |
		
		\repeat percent 3  {
			d-> d d d-> d d d:32 d:32 |
		}
		d-^ d d-^ d d-^ d d:32 d:32 |
		
		d4-> \rs d-> |
		
		\time 4/4
		
		d16-> d d d-> d d d:32 d:32 
		d-> d d d-> d d d:32 d:32 |
		d-> d d d-> d d d:32 d:32 
		d-^ d d-^ d d-^ d d:32 d:32 |
		d-> d d d-> d d d:32 d:32 
		d-> d d d-> d d d:32 d:32 |
		d-> d d d-> d d d:32 d:32 
		d-^ d d-^ d d-^ d d:32 d:32 |
		
		d8 d16 d r d d8 d4-> d8 d16:32 d:32 |
		d8 d16 d r d16 d d d8 d-> d-> d16:32 d:32 |
		d8 d16 d r d d8 d4-> d8 d16:32 d:32 |
		d8 d16 d r d d8 \tuplet 3/2 {d8-> d-> d->} d8-> d16:32 d:32 |
		
		R1*8 |
		
		\repeat percent 4 {
			\rhOn r8 \mp d^"On rim" r d r d r d |
		}
		\rhOff
		
		\repeat percent 4 {
			r8 \mf \bu d^\zz r \bu d^\zz r \bu d^\zz r \bu d^\zz |
		}
		
		\bu d4^\zz \bu d4^\zz \bu d4^\zz \bu d8^\zz d16:32 d:32 |
		
		d16-> d d d-> d d d8-> <d d>16^"Double stop" q8 q16 q8 q |
		d16:32 d:32 d8-> d16:32 d:32 d8-> \rs d8 d d d16:32 d:32 |
		d16-> d d d-> d d d8-> <d d>16 q8 q16 q8 q |
		d16:32 d:32 d:32 d:32 d:32 d:32 d:32 d:32 \rs d4-> \rh d4->^"Stick click" |
		
		d8-> d16:32 d:32 	d8-> d16:32 d:32 	d16-> d d d-> 	d d d-> d |
		d d \rs d-^ d		\rs d-^ d d:32 d:32 	d16-> d d d-> 	d d d-> d |
		d d \rs d-^ d		\rs d-^ d d:32 d:32		d16-> d d d-> 	d d d-> d |
		\rs d8-^ d16:32 d:32 d:32 d:32 \rs d8-^ d16:32 d:32 d:32 d:32 \rs d4-^ |
		
		d8-> d16:32 d:32 	d8-> d16:32 d:32 	d16-> d d d-> 	d d d-> d |
		d d \rs d-^ d		\rs d-^ d d:32 d:32 	d16-> d d d-> 	d d d-> d |
		d d \rs d-^ d		\rs d-^ d d:32 d:32		d16-> d d d-> 	d d d-> d |
		\rs d8-^ d16:32 d:32 d:32 d:32 \rs d8-^ d16:32 d:32 d:32 d:32 \rs d4-^ \bar "|."
	}
}

tenors = \new Staff \with {
    instrumentName = #"Tenors"
} {
	\format
	
	\time 2/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
	
		\partial 8 r8 |
		
		R2*7 |
		r4. f16:32 f:32 |
		
		f-> f f f-> f f f:32 f:32 |
		f-> f f f-> f f f:32 f:32 |
		f-> f f f-> f f f:32 f:32 |
		f-^ f f-^ f f-^ f f:32 f:32 |
		f4-> \rs <b, g>4-> | \break
		
		\time 4/4
		
		f'16-> f f d-> d d b-> g-> f'16-> f f d-> d d b-> g-> |
		f'16-> f f d-> d d b-> g-> \rs f' d b g \rs f' d b g | \break
		f'16-> f f d-> d d b-> g-> f'16-> f f d-> d d b-> g-> |
		f'16-> f f d-> d d b-> g-> \rs f' d b g \rs f' d b g | \break
		
		f'8 f16 d r d f8 f4-> <b, g>8 f'16:32 f:32 |
		f8 f16 d r d16 f f f8 <b, g>-> q-> f'16:32 f:32 | \break
		f8 f16 d r d f8 f4-> <b, g>8 f'16:32 f:32 |
		f8 f16 d r d f8 \tuplet 3/2 {<b, g>8-> q-> q->} q8-> d16:32 d:32 | \break
		
		\repeat percent 3 {
			f8->^"Tenor feature" \f f-> 	d16 d f f 	f-> f f d-> 	d d b g
		}
		f'8-> f-> 	d16 d f f 	f-> d b g		f'-> d b g | \break
		
		\repeat percent 3 {
			f'8-> f-> 	d16 d f f 	f-> f f d-> 	d d b g
		}
		f'8-> f-> 	d16 d f f 	f-> d b g		f'-> d b g | \break
		
		\repeat percent 3 {
			f'8-> f-> 	d16 d f f 	f-> f f d-> 	d d b g
		}
		f'8-> f-> 	d16 d f f 	f-> d b g		f'-> d b g | \break
		
		\repeat percent 3 {
			f'8-> f-> 	d16 d f f 	f-> f f d-> 	d d b g
		}
		f'8-> f-> 	d16 d f f 	f-> d b g		f'-> d b g |
		
		\bu f'4^\zz \bu d4^\zz \bu b4^\zz \bu g8^\zz g16:32 g:32 |  \break
		
		f'16-> f f d-> d d f8-> q16-> q8-> q16-> q8-> q-> |
		f16:32 f:32 f8-> d16:32 d:32 d8-> \rs f8-^ q-> q-> d16:32 d:32 | \break
		f16-> f f d-> d d f8-> q16-> q8-> q16-> q8-> q-> |
		g,16:32 g:32 d':32 d:32 f:32 d:32 b:32 g:32 \rs f'4 \rh c4->^"Stick click" |  \break
		
		f8-> d16:32 d:32 	f8-> d16:32 d:32 	f16-> d d \xo f->^"Cross over" 	d d f-> d |
		d d \rs f-^ d		\rs f-^ d g,:32 g:32 	b16-> g g \xo b-> 	g g b-> g | \break
		g g \rs b-^ g		\rs b-^ g d':32 d:32		f16-> d d \xo f-> 	d d f-> d |
		\rs f8-^ d16:32 d:32 d:32 d:32 \rs f8-^ g,16:32 g:32 g:32 g:32 \rs f'4-^ | \break
		
		f8-> d16:32 d:32 	f8-> d16:32 d:32 	f16-> d d \xo f-> 	d d f-> d |
		d d \rs f-^ d		\rs f-^ d g,:32 g:32 	b16-> g g \xo b-> 	g g b-> g | \break
		g g \rs b-^ g		\rs b-^ g d':32 d:32		f16-> d d \xo f-> 	d d f-> d |
		\rs f8-^ b,16:32 b:32 b:32 b:32 \rs b8-^ g16:32 g:32 g:32 g:32 \rs g4-^  \bar "|."
	}
}

bassdrum = \new Staff \with {
    instrumentName = #"B. D."
} {
	\format
	
	\time 2/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	
	\partial 8 r8 |
		
	R2*12 |
	
	r4	<f' d' b g>-> |
	
	\time 4/4
	
	\repeat percent 2 {
		q8. q16 r4 q8. q16 r4 |
		q8. q16 r4 q8 q q4 |
	}
	% q8. q16 r4 q8. q16 r4 |
	% q8. q16 r4 q8 q q4 |
	
	r2. q4 | 
	r2 r8 q8 q4 |
	r2. q4 | 
	r2 \tuplet 3/2 {q8 q q} q4 |
	
	R1*4 |
	
	\repeat percent 6 {
		g4 r8 f'8 r4 r8 g8 |
		g4 r8 f' r d' r b |
	}
	
	q4 q q q |
	
	q2 q16-> q8-> q16-> q8-> q8-> |
	r2 r8 q-> q4-> |
	r2 q16-> q8-> q16-> q8-> q8-> |
	r2 q4 \xNote {q} |
	
	q4 q q8. q8. q8 |
	r8 q8 q4 q8. q8. q8 |
	r8 q8 q4 q8. q8. q8 |
	q4 r8 q8 r4 q4 |
	
	q4 q q8. q8. q8 |
	r8 q8 q4 q8. q8. q8 |
	r8 q8 q4 q8. q8. q8 |
	q4 r8 q8 r4 q4  \bar "|."
}

cymbals = \new Staff \with {
    instrumentName = #"Cymbals"
} {
	\format
	
	\time 2/4
	\tempo "120"
	\clef "percussion"
	
	% g b d' f'
	
	\relative c' {
	
		\partial 8 r8 |
		
		R2*12 |
		
		r4 c4 |
		
		\xNotesOn c4 c c c |
		c c c8 c c4 |
		c c c c |
		c c c8 c c4 \xNotesOff |
		
		r2. c4 |
		r2 r8 c8 c4 |
		r2. c4 |
		r2. c4 |
		
		
		R1*8 |
		
		\xNotesOn
		\repeat percent 8 {
			r8 c r c r c r c |
		}
		
		c4 c c c |
		\xNotesOff
		
		c2 c4 c( |
		r2) r8 c8 c4( |
		r2) c4 c( |
		r2.) c4 |
		
		c4 \mf c c8. c8. c8 |
		r8 c8 c4 c8. c8. c8 |
		r8 c8 c4 c8. c8. c8 |
		c4( r8) c8( r4) c4 |
		
		c4 c c8. c8. c8 |
		r8 c8 c4 c8. c8. c8 |
		r8 c8 c4 c8. c8. c8 |
		c4( r8) c8( r4) c4  \bar "|."
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

