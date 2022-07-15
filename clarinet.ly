clarinet = \relative c' {
\transposition bes
fis4 d d c
}
\addQuote "clarinet" { \clarinet }
pianoRH = \relative c'' {
\transposition c'
% position name of cue-ing instrument below the staff
\new CueVoice {
\override InstrumentSwitch.self-alignment-X = #RIGHT
\override InstrumentSwitch.direction = #DOWN
\set instrumentCueName = "Clar."
}
\cueDuring "clarinet" #DOWN { c4. g8 }
g4 bes4
}
pianoLH = \relative { c4 <c' e> e, <g c> }
\score {
<<
\new PianoStaff <<
\new Staff {
\new Voice {
\pianoRH
}
}
\new Staff {
\clef "bass"
\pianoLH
}
>>
>>
}
