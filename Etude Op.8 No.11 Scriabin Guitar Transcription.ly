\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% MIT License
%
% Copyright (c) 2016 Daniel Daowz
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  ragged-last-bottom = true 
}

\header {
 title = "Etude Op. 8 No. 11"
 composer = "Alexander Scriabin"
 arranger = "Transcripción por Daniel Daowz"
 instrument = "Guitarra"
 tagline = ##f
 
}

\paper {
  page-count = 3
  system-system-spacing =
  #'((basic-distance . 16)
     (minimum-distance . 12)
     (padding . 1)
     (stretchability . 60)) 
}

%%%%%%%00%%%%%%%
%%%%%%%00%%%%%%%
%%%%%%%00%%%%%%%

Vozsuperioruno = \relative c'' {
  \key bes \minor
  
  \tempo "Andante cantabile"
  s2. \bar "" | 
  des8.\p des16 des4 f16-4 des \times 2/3 { f es bes} |
  bes8~ \times 2/3 {bes16 b c} es-4 des~-4 des8~ des4 | 
  es16-4\mf d8 d16 d des8 des16 des c8 c16 |
  ces8. ges16  ces4. bes8 |
  a8. a16 a4 bes |
  \textSpannerUp
  \override TextSpanner.bound-details.left.text = #"I "
  es,8.\startTextSpan f16 ges2 |
  ges16 f8 f16 aes16 ges8 ges16\stopTextSpan f-1 e8-4 e16 |
  \textSpannerUp
  \override TextSpanner.bound-details.left.text = #"I "
  
  f8.\startTextSpan f16\stopTextSpan f4 r |
  des'8. des16 des4 f16 des \times 2/3 { f es bes} |
  bes8~ \times 2/3 {bes16 b c} des2 | 
  des16\1 c8 c16 c bes8 bes16 bes a8 bes16 |
  des c8 c16 c bes8 bes16 bes a c16 bes |
  bes-4\1 beses8 beses16 beses aes8 aes16 aes g8 g16 |
  g ges8 ges16 ges f8 f16 f e8 as,16 |  
  
}

% ! y ? Son para marcar alteraciones aun cuando ya estan en la armadura
% Scale duration fue usado para tener tresillos y seisillos sin el numero (da la apariencia de que la partitura no ha sido alterada, sin embargo el valor de las notas se multiplica internamente)
VozsuperiorB = \relative c' {
  
  f4~\2\mf f16 ges e f as8 as, |
  \scaleDurations 2/3 {\dimTextDim des16\2\> es\! des c des es} \autoBeamOff <e^0 cis^2 g^0>\pp \autoBeamOn <cis'-1 a'-4>-.\ppp <b g'>-. <g fis'>-. fis'-.[ e-.]  es,\2 e|
  f4~-4 f16 ges e f as8 as,\3 |
  \scaleDurations 2/3 {des16 es\dimTextDim des\> c\! des es} \autoBeamOff <e cis g>\pp \autoBeamOn  <cis' b'>-.\ppp <b g'>-. <g fis'>-. fis'-.[ e-.]  e,\1 eis|
  \key e \major fis4~ fis16 gis \crescTextCresc eis\< fis\! b8 b,-0 |
  \scaleDurations 2/3 {e16-0 fis-3 e dis e fis} gis2 |
  \key bes \minor
  bes4~ \crescTextCresc bes16\< ces\! a bes es8\1 es, |
  \scaleDurations 2/3 {aes16\f bes aes g aes bes} c2 |
  << {
    \voiceOne c4~\1\pp c16 d b c f d \times 2/3 {c f, a,} 
     }
     \new Voice{
     \voiceFour r4 r8 <a f'> } |
  >>
  c'4 r8 <e, bes'c>-. <e bes'des>-.[ <e bes'c>-.]  |
  << {
    \voiceOne c'4~ c16 d b c f d \times 2/3 {c f, a,} 
     }
     \new Voice{
     \voiceFour r4 r8 <a f'> } |
  >>
  c'4 r8 \crescTextCresc <e, bes'c>-.\< <e bes'des>-.[\! <e bes'c>-.]  |
  \textSpannerUp
  \override TextSpanner.bound-details.left.text = #"VIII"
  c'4\startTextSpan r8 <es,! bes'c> <es bes'des>[ <es bes'c>\stopTextSpan]  |
  <es a ges'>8--[ <f a f'>--] <ges bes e>--[ <ges bes es>--] \crescTextCresc <bes des>--\< <bes c>--\! |
}

VozsuperiorAprima = \relative c''{
  << { \voiceTwo f,2 r4 } \new Voice {\voiceOne des'8. des16 des4 f16 des \times 2/3 { f es bes} } >> |
  bes8~ \times 2/3 {bes16 b c} es des~ des8~ des4 | 
  es16 d8 d16 d des8 des16 des c8 c16 |
  ces8. ges16  ces4. bes8 |
  a8. a16 a4 bes |
  es,8. f16 ges2 |
  ges16 f8 f16 aes16 ges8 ges16 f e8 e16 |
  f4~ f8 r8 r4-"rit" | 
  << { \voiceTwo f2 r4 } \new Voice {\voiceOne des'8.-"a tempo" des16 des4 f16 des \times 2/3 { f es bes} } >> |
  bes8~ \times 2/3 {bes16 b c} des2 | 
  des16 c8 c16 c bes8 bes16 bes a8 bes16 |
  des c8 c16 c bes8 bes16 bes a c16 bes |

  << { \voiceOne bes4\1 bes bes } 
     \new Voice { 
       \voiceFour
       <bes, des>4 <bes f'> <bes f'> } |
  >>
  << { \voiceOne bes'8. c16 des2 } 
     \new Voice { 
       \voiceFour
       <des, f>8[ <des f>] <des f bes>[ <des f bes>] <des f bes>[ <des f bes>] } |
  >>
  << { \voiceOne ges4-1 ges ges-3 } 
     \new Voice { 
       \voiceFour
       bes,8-2[ bes] bes[ bes] bes-4 bes } |
  >>
  << { \voiceOne ges'8. as16 bes2 } 
     \new Voice { 
       \voiceFour
       bes,8[ bes] <bes ges'>[ <bes ges'>] <bes ges'>[ <bes ges'>] } |
  >>
  << { \voiceOne ces'8. des16 es4\ppp r } 
     \new Voice { 
       \voiceFour
       <ces, ges'>4\pp r r } |
  >>
  b'2.\rest |
  << { \voiceOne f4 f f } 
     \new Voice { 
       \voiceFour
       <a, es'>8[ <a es'>] <a es'>[ <a es'>] <a es'>[ <a es'>]  } |
  >>
  << { \voiceOne f'4 r r } 
     \new Voice { 
       \voiceFour
       <bes, d>8[ <bes d>] r <bes d> <bes d>[ <bes d>]  } |
  >>
  << { \voiceOne f'4 f f } 
     \new Voice { 
       \voiceFour
       <a, es'>8[ <a es'>] <a es'>[ <a es'>] <a es'>[ <a es'>]  } |
  >>
  << { \voiceOne f'4 r r } 
     \new Voice { 
       \voiceFour
       <bes, d>8[ <bes d>] r <bes d> <bes d>[ <bes d>16] r  } |
  >>
  \clef bass
  <ces, es a f'>4 des\rest des\rest |
  <d bes' f'> des\rest des\rest |
  d2\rest s4 | d2\rest s4 |  
}

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%

Vozmediouno = \relative c {
  \voiceOne
  
  \cadenzaOn s2. \bar ""  |  \cadenzaOff 
  <f des'>8[ <f des'>] <f des'>[ <f des'>] <ges-2 bes-1>[ <ges bes>] |
  <f des'>[ <f des'>] <f des'>[ <f des'>] <f des'>[ <f des'>] |
  <ges bes>[ <ges bes>] <ges bes>[ <ges bes>] <ges bes>[ <ges bes>] |
  <ges es'>[ <ges es'>] <ges es'>[ <ges es'>] <ges es'>[ <ges es'>] |
  des'4 ces bes |
  ges8. f16 es2 |
  <bes bes'>8[ <bes bes'>] bes[ bes] <c bes'>[ <c bes'>] |
  <c c' bes>[ <c c' bes>] <f a^2 c-1>[ f-3] f[ f] | 
  <f des'>8[ <f des'>] <f des'>[ <f des'>] <ges bes>[ <ges bes>] |
  <f des'>[ <f des'>] <f des'>[ <f des'>] <f des'>[ <f des'>] |
  <e_\5 bes'>[ <e ges'>] <des ges'>[ <es des'>] <f des'>[ <f des'>] |
  < ges e'>[ <ges e'>] <e des'>[ <des e'>] <es des'>[ <ges es'>] |
  < f-2 des'-1>[ f,-1] <f' des'>[ f,] <fes' des'>[ f,] |
  <es' des'>[ f,] <aes' c>2]  
}

% Es posible usar /clef "treble"  para cambiar de clave
% nota/harmonic para hacer armonicos
VozmedioB = \relative c {
  
  <des aes' c>4 c'8[ <ges c>] <ges c>[ ges] |
  <des\5 f\4>4 a16-0 r8. <g' a\harmonic>8 <beses,_\5 g' des'>\noBeam |
  <as as' c-2>4 c'8[ <ges c>] <ges c> ges |
  <des f>4 a16 r8. <b' a\harmonic>8 <a, cis'>\noBeam |
  <a' d>8[ <a d>] <a e'-0>[ <a e'>] <a dis>[ a\4] |
  <gis^1 b-0>8[ gis] <b fis'>[ <b fis'>] <b eis> <b eis> |
  bes8[ <ges bes>] des'[ <aes des>] <g^\5 des'\4> des' | 
  c8[ c] \dimTextDim <e bes'>[^\> <e bes'>]\! <e bes'> <bes e> |
  r16 a~\4\noBeam a8~ a4 c |
  s2. |
  r16 a~\noBeam a8~ a4 c |
  s2. | s2. | s2. |
  
}

VozmediaAprima = \relative c' {
  \repeat unfold 4 {s2. |}
  des4 ces bes |
  ges8. f16 es2 |
  <bes bes'>8[ <bes bes'>] bes[ bes] <c bes'>[ <c bes'>] |
  s2. |
  s2. |
  s2. |
  
  <e bes'>8[ <e ges'>] <des ges'>[ <es des'>] <f des'>[ <f des'>] |
  < ges e'>[ <ges e'>] <e des'>[ <des e'>] <es des'>[ <ges es'>] |
  s2. | s | s |
  des'8 des des[ des] des des |
  s2. |
  
  
   
}

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%

Vozbajouno = \relative c {
  \time 3/4
  \key bes \minor
  \clef "bass"
  \voiceTwo
  
  s2. \bar ""| 
  \acciaccatura bes8 \stemDown bes2._\6 | 
  \acciaccatura bes8 bes2. | 
  bes_\6 | 
  bes |
  <bes ges'>8[ <bes ges'>] <bes ges'>[ <bes ges'>] <bes ges'>[ <bes ges'>]|
  bes[ bes] bes[ bes] bes[ bes] |
  bes4 es ges,-2 |
  f r r |
  \acciaccatura bes8 bes2. | \acciaccatura bes8 bes2. |
  s2. | s | s | s4 r8 \stemDown as as as  \stemNeutral  |  
}


%%  Arreglar los tenutos que aparecen posicionados incorrectamente
VozbajoB = \relative c {
  
  r8 \times 2/3 {c'16 bes16. as32} \stemDown as4. aes,8 |
  s2. |
  r8 \times 2/3 {c'16 bes16. as32} \stemDown as4. aes,8 |
  s2. |
  \key e \major
  \stemDown
  d8.-0 d16 c4_\5 b_\6 |
  e4-1 d8[ gis] d cis |
  \key bes \minor
  ges'8. ges16 fes4 es_\6 |
  aes g4 ges8 <ges, c> |
  f'8_\5 \times 2/3 {f16[ d16. c32]} c4 a'\harmonic |
  f16 c \times 2/3 {ges' e'^0 bes'\2} bes8 r g,4 |
  f8 \times 2/3 {f16[ d16. c32]} c4 a'\harmonic |
  f16 c \times 2/3 {ges' e' bes'} bes8 r ges,4 |
  f16 c \times 2/3 {ges' es'! bes'} bes8 r ges,4 |
  f4 c' \times 2/3 {des8-- es-- e--} |  
}

VozbajoAprima = \relative c {
  des'16 des f, bes, des' des f, bes, <ges' bes>8 <ges bes> |
  des'16 f, bes, bes\rest <f' des'>16 des' f, bes, f' bes, des' f, |
  <bes, ges' bes> ges' bes ges bes ges bes ges bes ges bes ges| 
  <bes, ges'> ges' bes, r r ges' bes, ges' es'4| 
  <bes, ges' des'>16 des' ges, bes, <bes ges' ces> ces' ges bes, <bes ges' bes> bes' ges bes, |
  <bes ges'> ges' bes, f' <bes, es> bes' es, bes es bes' es bes |
  bes,4 es ges, |
  <bes' c>16 c, f, c' a' f b c es-- c-- des-- e-- |
  des16 des f, bes, des' des f, bes, <ges' bes>8 <ges bes> |
  des'16 f, bes, bes\rest <f' des'>16 des' f, bes, f' bes, des' f, |
  s2. | 
  s |
  f16-3 bes-4 ges-3 bes-2 c,-3 bes'-4 des,-3 bes'-1 f bes des bes |
  f2. |
  fes,16-0 des'-3 ges-4 des c-2 des-4 des'-1 des, fes-2 c'-1 des-1 c |
  fes,2. |
  es16\noBeam  es ces ges' ges'4 des,\rest |
  d2.\rest |
  f4 c ces |
  f,8. f'16 f2 | 
  f4 c ces |
  \autoBeamOff f,8. f'16-> f2->~ |
  f8. f16-> f2->~ |
  f2. |
  <bes, f'>4 d\rest d\rest |
  <bes f'>4 d\rest d\rest |
  \autoBeamOn
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Impresion de la partitura %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\score {
  \new PianoStaff <<
  
    
    \new Staff {
           
      \Vozsuperioruno
      \VozsuperiorB
      \VozsuperiorAprima
    }
    
    
    \new Staff = "treble_8" << 
    \context Voice = "Dos" {
      
      \Vozmediouno
      \VozmedioB
      \VozmediaAprima
      
    }
    
    \context Voice = "Tres" {
      
      \Vozbajouno
      \VozbajoB
      \VozbajoAprima
      \bar "|."
      
    }
    >>
  >>
  \layout {
     %Tamano por defecto 20
    #(layout-set-staff-size 20)
   }
   %\midi {}
}