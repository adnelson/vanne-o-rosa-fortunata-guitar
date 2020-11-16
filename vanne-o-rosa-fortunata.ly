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
      |
      <b, fis' a b>4. <b e g b>
      |
      <b dis a' b> r
      |
      <b fis' a b>4. <b e g b>
      |
      <b dis a' b> r
      |
      r8 <f' g b> <f g b> r <f g b> <f g b>
      |
      r8 <e-2 g-0 c-1> <e g c> r <e g c> <e g c>
      |
      r <g-4 bes-2>( <e-1>) r <g bes>( e)
      |
      <fis a>4 r8\fermata r4.
      |
      r8 <d-0\RH #2 >( <g-3\4\RH #3 b-2\3\RH #4 >) r <d-0\RH #2 >( <fis-1\RH #3 c'-2\RH #4 >)
      |
      r <d-0\RH #2 >( <g-1\4\RH #3 d'-3\3\RH #4 >) r <e-2\5\RH #2 >( <gis-1\RH #3 d'-3\RH #4 >)
      |
      r <e-3>(<a-4 c-1>) r <d,-0\4 >( <fis-2 c'-4>)
      |
      r <d-0>( <g-3 b-2>) r d( <g b>)
      |
      r d( <g b>) r d( <fis c'>)
      |
      r d( <g d'>) r g( <b-1 g'-4>)
      |
      r e,( <a c>) r4 <d, fis c'>8
      |
      r e( <g a>) r fis( <a b>)
      |
      r e( <g b>) r a( <c d>)
      |
      r g( <b d>) r e,( <b' d>)
      |
      r e,( <a c>) r e( <gis b>)
      |
      r e( <a c>) r e( <a c>)
      |
      r d,( <g b>) r d( <f a>)
      |
      r e( <g a>) r fis( <a b>)
      |
      r e( <g b>) r a( <c d>)
      |
      r g( <b d>) r e,( <b' d>)
      |
      r e,( <a c>) r e( <gis b>)
      |
      r e( <a c>) r e( <a c>)
      |
      r d,( <g b>) r d( <f a>)
      |
      <b g> <g bes e>2-> r8
      |
      r d( <g a>) r4 <fis a>8
      |
      <g b> <g bes e>2-> r8
      |
      r d( <g a>) <fis a>8 r\fermata r
      |
      r <b d>( <a c>) <g b> <e g>( <c e>)
      |
      <b' d> r r <a c fis> r r
      |
      <b d g> r r <b d g> r r
      |
      <b d g>4 r8 r4.\fermata
    }
  \new Voice = "lower"
    \relative g, {
      \voiceTwo
      \set fingeringOrientations = #'(left)
      \set stringNumberOrientations = #'(down)
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
      |
      r4. e
      |
      fis r
      |
      r4. e
      |
      fis r
      |
      <d'-3>8 r r d r r
      |
      <c-3> r r c r r
      |
      <cis-3> r r cis r r
      |
      <d-4>4 r8\fermata r4.
      |
      g,8 r r a r r
      |
      b r r e, r r
      |
      a r r <d-2\5> r r
      |
      <g,-1> r r g r r
      |
      g r r a r r
      |
      b r r e, r r
      |
      c' r r d r r
      |
      cis r r dis r r
      |
      e, r r fis r r
      |
      g r r gis r r
      |
      a r r b r r
      |
      c r r c r r
      |
      d r r d r r
      |
      cis r r dis r r
      |
      e, r r fis r r
      |
      g r r gis r r
      |
      a r r b r r
      |
      c r r c r r
      |
      d r r d r r
      |
      g, cis2-> r8
      |
      d r r d r r
      |
      g, cis2-> r8
      |
      d r r d r\fermata r
      |
      r g( dis) e4 c8
      |
      d r r d r r
      |
      g d b g' d b
      |
      g4 r8 r4.\fermata
    }

>>

>>