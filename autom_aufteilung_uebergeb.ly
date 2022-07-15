\new Voice \with {
\remove "Note_heads_engraver"
\consists "Completion_heads_engraver"
\remove "Rest_engraver"
\consists "Completion_rest_engraver"
}
\relative {
c'2. c8 d4 e f g a b c8 c2 b4 a g16 f4 e d c8. c2 r1*2
}