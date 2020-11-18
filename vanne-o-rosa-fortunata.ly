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
  Van -- ne,_o ro -- sa for -- tu -- na -- ta,
  A -- po -- sar -- di ni -- ce_in pet -- to
  Ed o -- gnun sa -- rà co -- stret -- to
  La tua sor -- te in -- vi -- dï -- ar.
  Oh, se_in te po -- tes -- si_an chi'i -- o
  Tra -- sfor -- mar -- mi_un sol mo -- men -- to
  non a -- vria più bel con -- ten -- to
  Que -- sto co -- re a so -- spi -- rar.
  Ma tu_in -- chi -- ni di -- spet -- to -- sa,
  Bel -- la ro -- sa_im -- pal -- li -- di -- ta,
  La tua fron -- te -- sco -- lo -- ri -- ta
  Dal -- lo -- sde -- gno -- e_dal do -- lor.
  Bel -- la ro -- sa,_è de -- sti -- na -- ta
  Ad -- en -- tram -- bi un'u -- gual sor -- te:
  Là tro -- var dob -- biam la mor -- te,
  Tu d'in -- vi -- dia ed i -- o d'a -- mor.

  Bel -- la ro -- sa, bel -- la ro -- sa,
  Là tro -- var dob -- biam la mor -- te,
  Tu d'in -- vi -- dia ed i -- o d'a -- mor;
  Bel -- la ro -- sa, bel -- la ro -- sa,
  Là tro -- var dob -- biam la mor -- te,
  Tu d'in -- vi -- dia ed i -- o d'a -- mor,
  Tu d'in -- vi -- dia_ed i -- o d'a -- mor,
  Tu d'in -- vi -- dia_ed i -- o d'a -- mor.
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
  |
  d4 d8 d4 d8
  |
  e4 d8 g4 g8
  |
  g8.([ e16]) c a g8([ b8.]) a16
  |
  \appoggiatura b8 g4 r8 r d' b
  |
  a4 a8 b[( a)] g
  |
  a4 fis8 d'4 dis8
  |
  e4 e8 g4 cis,8
  |
  e4\fermata d8 r8\fermata b c
  |
  d4 d8 d4 d8
  |
  e4 d8 g4 g8
  |
  g8.([ e16]) c a g8([ b8.]) a16
  |
  g8 r r r b b
  |
  b4 b8 b4 b8
  |
  c4 b8 r b b
  |
  b4 b8 b4 b8
  |
  c4 b8 r b b
  |
  b4 b8 b([ a]) g
  |
  g4 c8 r c c
  |
  e4 e8 e4 e8
  |
  a,4 r8 r b c
  |
  d4 d8 d4 d8
  |
  e4 d8 d([ c]) b
  |
  d([ c]) b a([ b]) a
  |
  g4 d8 r b' c
  |
  d4 d8 d4 d8
  |
  e4 d8 g4 g8
  |
  g8.([ e16]) c a g8 b8. a16
  |
  a4 r8 c4 b8
  |
  a4 g8 e'4 d8
  |
  c4 b8 f'4 e8
  |
  f4 e8 f4 e8
  |
  e4 a8 a8.([ g16]) fis[ e]
  |
  e8.([ d16]) c b d8. c16 b( [a])
  |
  a4 r8 c4 b8
  |
  a4 g8 e'4 d8
  |
  c4 b8 f'4 e8
  |
  f4 e8 f4 e8
  |
  e4 a8 a8.([ g16]) fis[ e]
  |
  e8.([ d16]) c b d8. c16 b( [a])
  |
  g8 e'4( e) e8
  |
  a,8 b4 c8 e8. d16
  |
  b8 e4( e) e8
  |
  a,8 b4 c8 e8.\fermata d16
  |
  g,4 r8 r4.
  |
  r4. r4.
  |
  r4. r4.
  |
  r4. r4.\fermata
  \bar "|."
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
      \partial 4. <b-2 d-1>4\mf <a c>8
      |
      <g b>4 g'8 <b, d>( <a c>) <fis a>
      |
      g r <d b'> <b g'> r <b g'>
      |
      <b g'>8 r4 r4.
      |
      r8 <g'-3\4 b-1\3>( <d-0>) r <fis-1 c'-3>( d)
      |
      r8 <g-0 d'-4>( d) r <gis-1 d'-3>( <e-2\RH #2 >)
      |
      r8 <a-3 c-1>( <e-2>) r <fis-1 c'-3>( d)
      |
      r8 <g-3 b-2>( d) r <g b>( d)
      |
      r8 <g b>( d) r <fis c'>( d)
      |
      r8 <g d'>( d) r <b'-3 g'-2>( <g-0>)
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
      <fis d'> r r r\fermata r4
      |
      r8 <g b>( d) r <fis c'>( d)
      |
      r8 <g d'>( d) r <b'-3 g'-2>( <g-0>)
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
      <g-2>8\pp r r <a-0> r r
      |
      <b-1> r r e, r r
      |
      <a-0> r r <d,-0> r r
      |
      <g-1> r r g r r
      |
      g r r a r r
      |
      b r r e, r r
      |
      c' r r d, r r
      |
      g4 d8 g r r
      |
      d r r cis' r r
      |
      d, r r fis r r
      |
      g r r a r r
      |
      d r r r\fermata r4
      |
      g,8 r r a r r
      |
      b r r e, r r
      |
      c' r r d, r r
      |
      r g' d g, r r
      |
      dis4. e
      |
      fis r
      |
      dis4. e
      |
      fis r
      |
      <d-3>8 r r d r r
      |
      <c'-3> r r c r r
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
      c' r r d, r r
      |
      cis' r r dis, r r
      |
      e r r fis r r
      |
      g r r gis r r
      |
      a r r b r r
      |
      c r r c r r
      |
      d, r r d r r
      |
      cis' r r dis, r r
      |
      e r r fis r r
      |
      g r r gis r r
      |
      a r r b r r
      |
      c r r c r r
      |
      d, r r d r r
      |
      g cis2-> r8
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