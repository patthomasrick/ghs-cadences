\version "2.18.2"

% special percussion notation tools
% rim shots
rsOn = {
    \override NoteHead.stencil = #ly:text-interface::print
    \override NoteHead.text = #(markup #:musicglyph "noteheads.s2xcircle")
}
rsOff = {
    \revert NoteHead.stencil
	\revert NoteHead.text
}
rs = {
    \once \override NoteHead.stencil = #ly:text-interface::print
    \once \override NoteHead.text = #(markup #:musicglyph "noteheads.s2xcircle")
}

% rim hits and stick clicks
rhOn = {
    \override NoteHead.stencil = #ly:text-interface::print
    \override NoteHead.text = #(markup #:musicglyph "noteheads.s0doThin")
}
rhOff = {
    \revert NoteHead.stencil
	\revert NoteHead.text
}
rh = {
    \once \override NoteHead.stencil = #ly:text-interface::print
    \once \override NoteHead.text = #(markup #:musicglyph "noteheads.s0doThin")
}

% cross overs
xoOn = {
    \override NoteHead.stencil = #ly:text-interface::print
    \override NoteHead.text = #(markup #:musicglyph "noteheads.s2cross")
}
xoOff = {
    \revert NoteHead.stencil
	\revert NoteHead.text
}
xo = {
    \once \override NoteHead.stencil = #ly:text-interface::print
    \once \override NoteHead.text = #(markup #:musicglyph "noteheads.s2cross")
}


% buzzes
z = \markup { \override #'(font-family . typewriter) 
              \fontsize #2 "z" } 
bz =  {
	\stemUp
	
	\once \override TextScript #'extra-offset = #'(.4 . -2.5)
	d8^\z
}

bu =  {
	\once \override TextScript #'extra-offset = #'(.4 . -2.5)
}
zz = \markup { 
	\override #'(font-family . typewriter) 
    \fontsize #2 "z" 
} 

% my default formatting
format = {
	\override Score.SpacingSpanner.strict-note-spacing = ##t
	\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
	\compressFullBarRests
	\stemUp
}

% stuff for drummode for snare

drumPitchNames.rim = #'rim
drumPitchNames.rh = #'rim

drumPitchNames.stickclick = #'stickclick
drumPitchNames.sc = #'stickclick

drumPitchNames.rimshot = #'rimshot
drumPitchNames.rs = #'rimshot

#(define snarestaff '(
         (snare				default   				#f           1)
         (hihat				cross   				#f           3)
         (rimshot			noteheads.s2xcircle   	#f           1)
	))