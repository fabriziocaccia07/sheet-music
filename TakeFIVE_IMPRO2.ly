\version "2.24.0"

\header {
  title = "Solo Take Five"
  subtitle = "Sax Contralto (Basato sulle 4 Scale)"
  composer = "Dave Brubeck / Arr. Paul Desmond"
  tagline = ""
}

% Struttura Armonica
chordsList = \chordmode {
  c2.:m g2:m7
  c2.:m g2:m7
  c2.:m g2:m7
  s1*5/4
  c2.:m g2:m7
  c2.:m g2:m7
  c2.:m g2:m7
  s1*5/4
  c2.:m g2:m7
  c2.:m g2:m7
  c2.:m g2:m7
}

melody = {
  \clef treble
  \key c \minor
  \time 5/4
  \tempo 4 = 174

  % Battuta 1 - Scala 3 (Dorico)
  c'8 d' es'4 g' f' d' |
  
  % Battuta 2 - Scala 1 (Pentatonica)
  c'4. c'8 es'4 d' bes |
  
  % Battuta 3 - Scala 2 (Blues con Fa#)
  f'4 \acciaccatura fis'8 g'4 bes' d' f' |
  
  % Battuta 4 - Pausa
  R1*5/4 |
  
  % Battuta 5 - Scala 4 (Eolio con Lab)
  g'4 as'8 f' es'4 d' bes |
  
  % Battuta 6 - Scala 2 (Blues)
  g'4 fis'8 f' es'4 d' bes |
  
  % Battuta 7 - Scala 3 (Dorico con La)
  es'8 f' g'4 r a'2 |
  
  % Battuta 8 - Pausa
  R1*5/4 |
  
  % Battuta 9 - Scala 1 (Pentatonica)
  c'8 c' c' c' es'4 bes2 |
  
  % Battuta 10 - Scala 1 e 3
  \tuplet 3/2 { c'8 es' f' } g'4 bes' c'' d'' |
  
  % Battuta 11 - Chiusura
  c''2. g'2 \bar "|."
}

\score {
  <<
    \new ChordNames { \chordsList }
    \new Staff { \melody }
  >>
  \layout {
    \context {
      \Score
      beatStructure = 3 2
    }
  }
  \midi { }
}