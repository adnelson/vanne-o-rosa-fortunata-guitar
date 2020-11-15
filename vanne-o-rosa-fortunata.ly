\version "2.20.0"

# #(set-global-staff-size 28)

#(define RH rightHandFinger)

\paper {
  system-system-spacing.padding = #4
  top-system-spacing = #20
}

\header {
  title = "Vanne, o rosa fortunata"
  composer = "Vincenzo Bellini (1801 - 1835)"
  arranger = "arr. Allen Nelson, 2020"
  copyright = "©2020 Allen Nelson. Free use with attribution."
}

songlyrics = \lyricmode {
  Van -- ne,_o ro -- so for -- tu -- na -- ta,
  A -- po -- sar -- di ni -- ce_in pet -- to
}

<<

\new Staff \with {
  instrumentName = "Voice."
}
\new Voice = "melody"
\relative {
  \key g \major
  \accidentalStyle modern
  \autoBeamOff
  \partial 4. r4 r8
  r2. |
  r2. |
  r4. r 8 b' c
  |
  d4 d8 d4 d8
  |
  e4 d8 d([ c]) b
  |
  d([ c]) b a([ b]) a
  |
  g4 g8 r b c
}

\new Lyrics {
  \lyricsto "melody" \songlyrics
}

\new Staff \with {
  instrumentName = "Guitar."
  \override StaffSymbol.staff-space = #(magstep +1)
} <<
  \tempo "Andante mosso assai"
  \key g \major
  \time 6/8
  \clef "treble_8"
  \accidentalStyle modern
  \override Score.SpacingSpanner.spacing-increment = #1.5
  \new Voice = "upper"
    \relative g {
      \voiceOne
      \set fingeringOrientations = #'(left)
      \set stringNumberOrientations = #'(up)
      \partial 4. <b d>4\mf <a c>8
      <g b>4 g'8 <b, d>( <a c>) <fis a> |
      g r <d b'> <b g'> r <b g'>
      |
      <b g'>8 r4 r4.
      |
      r8 <g'-3\4 b-2\3>( <d-0>) r <fis-1 c'-3>( <d-0>)
      |
      r8 <g-1\4 d'-3\3>( <d-0>) r <gis-1 d'-3>( <e-2\RH #2 >)
      |
      r8 <a-3 c-1>( <e-2>) r <fis-1 c'-3>( <d-0 >)
      |
      r8 <g-3 b-2>( <d-0>) r <g b>( d)
      |
      r8 <g b>( d) r <fis c'>( d)
      |
      r8 <g d'>( <d-0>) r <b'-3 g'-2>( <g-0>)
      |
      r8 <c-3 e-4>( <a-1>) r4 <d, fis c'>8
      |
      r <d b'>( <c a'> <b g'>) r r
      |
      r <fis' a>( d) r <g a>( e)
      |
      r <fis a>( d) r <a' d>( fis)
      |
      r <g b>( e) r <g cis>( e)
      |
      <fis d'> r r\fermata r4.
      |
      r8 <g b>( d) r <fis c'>( d)
      |
      r8 <g d'>( <d-0>) r <b'-3 g'-2>( <g-0>)
      |
      r8 <c-3 e-4>( <a-1>) r4 <d, fis c'>8
      |
      r <b' d> <c fis> <b g'> r r
    }
  \new Voice = "lower"
    \relative g, {
      \voiceTwo
      \set fingeringOrientations = #'(left)
      \partial 4. r8 g' dis
      |
      e4 c8 d4 c8
      |
      <g b>8 r g g r g
      |
      g r4 r4.
      |
      <g-1>8\pp r r <a-2> r r
      |
      <b-2> r r e, r r
      |
      <a-0> r r <d-2> r r
      |
      <g,-1> r r g r r
      |
      g r r a r r
      |
      b r r e, r r
      |
      c' r r d r r
      |
      g,4 d'8 g, r r
      |
      d' r r cis r r
      |
      d r r fis, r r
      |
      g r r a r r
      |
      d r r\fermata r4.
      |
      g,8 r r a r r
      |
      b r r e, r r
      |
      c' r r d r r
      |
      r g d g, r r
    }

>>

>>