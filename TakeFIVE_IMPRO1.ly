\version "2.24.0"

\header {
  title = "Solo Take Five"
  subtitle = "Sax Contralto (Note Scritte)"
  composer = "Dave Brubeck / Arr. Paul Desmond"
  tagline = ""
}

% Struttura Armonica (3/4 + 2/4)
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

% Melodia e Ritmica
melody = {
  \clef treble
  \key c \minor
  \time 5/4
  \tempo 4 = 174

  % Battuta 1
  c'8 d' es'4 g' f' d' |
  
  % Battuta 2
  c'4. c'8 es'4 d' bes |
  
  % Battuta 3
  f'4 \acciaccatura fis'8 g'4 bes' d' f' |
  
  % Battuta 4
  R1*5/4 |
  
  % Battuta 5
  g'4 f'8 es' d'4 bes g |
  
  % Battuta 6
  g'4 fis'8 f' es'4 d' bes |
  
  % Battuta 7
  es'8 f' g'4 r a'2 |
  
  % Battuta 8
  R1*5/4 |
  
  % Battuta 9
  c'8 c' c' c' es'4 bes2 |
  
  % Battuta 10
  \tuplet 3/2 { c'8 es' f' } g'4 bes' c'' d'' |
  
  % Battuta 11
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
      % Mostra la suddivisione del 5/4
      beatStructure = 3 2
    }
  }
  \midi { }
}