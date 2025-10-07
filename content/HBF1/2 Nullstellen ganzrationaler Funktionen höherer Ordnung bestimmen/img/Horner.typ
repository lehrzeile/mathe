#set page(width: 15cm, height: 9.5cm, margin: 0.5cm)

// Definition der Farben
#let maincolor = rgb("405a94")
#let secondcolor = rgb("f5a029")
#let thirdcolor = rgb("70aee0")

// GRAPHEN PLOTTEN
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/tiptoe:0.3.1": *

Gegeben: #h(10pt) $f(x)=-2x^3+12x^2+2x-60=0$ #h(10pt) und #h(10pt) $x_1=-2$

Gesucht: #h(10pt) $(-2x^3+12x^2+2x-60):(x+2)=$ ?

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  rows: (1.2cm),
  inset: 10pt,
  align: center + horizon,
  [],
  [-2],
  [12],
  [2],
  [-60],
  [$x_1=$ #text(maincolor, weight: 600, font: "Roboto")[-2]],
  [],
  [4],
  [-32],
  [60],
  [],
  [#text(fill: red.darken(20%))[-2]],
  [#text(fill: green.darken(30%))[16]],
  [#text(fill: purple)[-30]],
  [0],
)

#v(0.5cm)

$(-2x^3+12x^2+2x-60):(x+2)=#text(fill: red.darken(20%))[-2]x^2#text(fill: green.darken(30%))[+16]x#text(fill: purple)[-30]$

$-2x^3+12x^2+2x-60 = (x+2) dot (-2x^2+16x-30)$

// schräge Pfeile nach rechts oben
#place(top + left, dx: 5.1cm, dy: 3.5cm)[#rotate(-35deg)[#move(dx: 5pt)[#text(11pt, font: "Roboto", weight: 600, fill: maincolor)[$dot$ (-2)]] \ #v(-30pt) #line(tip: triangle, toe: none, length: 1.5cm, stroke: maincolor)]]
#place(top + left, dx: 7.9cm, dy: 3.5cm)[#rotate(-35deg)[#move(dx: 5pt)[#text(11pt, font: "Roboto", weight: 600, fill: maincolor)[$dot$ (-2)]] \ #v(-30pt) #line(tip: triangle, toe: none, length: 1.5cm, stroke: maincolor)]]
#place(top + left, dx: 10.7cm, dy: 3.5cm)[#rotate(-35deg)[#move(dx: 5pt)[#text(11pt, font: "Roboto", weight: 600, fill: maincolor)[$dot$ (-2)]] \ #v(-30pt) #line(tip: triangle, toe: none, length: 1.5cm, stroke: maincolor)]]


// Pfeile nach unten
#place(top + left, dx: 4.1cm, dy: 3cm)[#rotate(90deg)[#align(center)[#line(tip: triangle, toe: none, length: 1.8cm, stroke: secondcolor)  \ #v(-20pt) #text(fill: secondcolor, weight: 600, 16pt)[+]]]]
#place(top + left, dx: 6.9cm, dy: 3cm)[#rotate(90deg)[#align(center)[#line(tip: triangle, toe: none, length: 1.8cm, stroke: secondcolor)  \ #v(-20pt) #text(fill: secondcolor, weight: 600, 16pt)[+]]]]
#place(top + left, dx: 9.7cm, dy: 3cm)[#rotate(90deg)[#align(center)[#line(tip: triangle, toe: none, length: 1.8cm, stroke: secondcolor)  \ #v(-20pt) #text(fill: secondcolor, weight: 600, 16pt)[+]]]]
#place(top + left, dx: 12.5cm, dy: 3cm)[#rotate(90deg)[#align(center)[#line(tip: triangle, toe: none, length: 1.8cm, stroke: secondcolor)  \ #v(-20pt) #text(fill: secondcolor, weight: 600, 16pt)[+]]]]

// Pfeile zu den Koeffizienten
#place(top + left, dx: 4.5cm, dy: 5.3cm)[#rotate(40deg)[#align(center)[#line(tip: triangle, toe: none, length: 1.8cm, stroke: thirdcolor)]]]
#place(top + left, dx: 6.6cm, dy: 5.35cm)[#rotate(80deg)[#align(center)[#line(tip: triangle, toe: none, length: 1.2cm, stroke: thirdcolor)]]]
#place(top + left, dx: 8.6cm, dy: 5.35cm)[#rotate(120deg)[#align(center)[#line(tip: triangle, toe: none, length: 1.4cm, stroke: thirdcolor)]]]