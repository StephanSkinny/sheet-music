\version "2.23.0"
\include "english.ly <http://english.ly/>"
SopranoMusic = \relative c'
{
   fs4 fs e | d d d | b'2 b4 | a d, e | d2.^\markup "why right?" | s2. | s2.
}

AltoMusic = \relative  c'
 {
   d4 d cs | b cs c | b2 d4 | d d cs | d4 d e | { fs4 e d | e2. } \\ { d2 s4 | d b cs } >>
 }

\score {
       \new Staff
         \key d \major
         \time 3/4
         \new Voice = "sopranos"
         {
           \override Staff.NoteCollision.prefer-dotted-right = ##f
           \voiceOne
             { \SopranoMusic }
         }
         \new Voice = "altos"
         {
           \voiceTwo
           << 
             { \AltoMusic }
         }
   \layout { }
 }