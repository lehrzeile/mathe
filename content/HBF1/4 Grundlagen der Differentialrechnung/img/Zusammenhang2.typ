#set page(width: 9cm, height: 19.6cm, margin: 0.5cm)

// Definition der Farben
#let maincolor = rgb("405a94")
#let secondcolor = rgb("f5a029")
#let thirdcolor = rgb("70aee0")

// GRAPHEN PLOTTEN
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/tiptoe:0.3.1"

// Pinit für Anmerkungen mit Pfeilen an relativen Positionen
#import "@preview/pinit:0.2.2": *

// GRAPHEN PLOTTEN
#import "@preview/zero:0.3.3": *
#set-num(decimal-separator: ",")
#let xs = lq.linspace(-100, 100, num: 5000)
#let ys = lq.linspace(-100, 100, num: 5000)

// GRAPHEN PLOTTEN
#let schoolbook-style = it => context {
  let filter(value, distance) = value != 0 and distance >= 5pt
  let axis-args = (position: 0, filter: filter, tick-distance: 2, subticks: 1)
  
  show: lq.set-tick(inset: 2pt, outset: 2pt, pad: 0.4em)
  show: lq.set-spine(tip: tiptoe.stealth)
  show: lq.set-diagram(xaxis: axis-args, yaxis: axis-args, width: 8cm, height: 8cm, xlabel: lq.xlabel(dx: 0.25cm, dy: -0.75cm)[$x$], ylabel: lq.ylabel(angle: 0deg, dx: 0.6cm, dy: -0.2cm)[$y$], xlim: (-5, 5), ylim: (-5, 5))
  show lq.selector(lq.diagram): set text(0.8em)
  show lq.selector(lq.label): set align(top + right) // Position der Achsenbeschriftungen
  show: lq.set-label(angle: 0deg)
  show: lq.set-legend(position: (100% + .5em, 0%))
  show: lq.set-grid(stroke: luma(80%), stroke-sub: 0.5pt + luma(80%))
  it
}
#show: schoolbook-style

#let function1 = xs.map(x =>  1/8*x*x*x - 3/16*x*x -9/4*x + 2)

#lq.diagram(
  xlim: (-5.5, 5.5),
  ylim: (-5.5, 7.5),
  width: 11cm*0.7,
  height: 13cm*0.7,
  legend: none,
  xaxis: (tick-distance: 1, subticks: 0),
  yaxis: (tick-distance: 1, subticks: 0),

  // Graph
  lq.plot(xs, function1, mark: none, stroke: thirdcolor + 1.5pt),

  // Hochpunkt
  lq.ellipse(-2, 4.75, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(-2.6, 5.5, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.br$]],
  lq.place(-4.25, 6.5, align: left)[#text(9pt, font: "Roboto")[Hochpunkt \ bei $x=-2$]],

  // Wendepunkt
  // lq.ellipse(0.5, 0.84, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + green.darken(50%), fill: none),
  // lq.place(1.1, 1.5, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.bl$]],
  // lq.place(.75, 2.5, align: left)[#text(9pt, font: "Roboto")[Wendepunkt \ bei $x=0,5$]],

  // Tiefpunkt
  lq.ellipse(3, -3.06, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(3.9, -3, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.l$]],
  lq.place(4.5, -3, align: left)[#text(9pt, font: "Roboto")[Tiefpunkt \ bei $x=3$]],

  // Anker
  lq.place(-2, 4.75, align: left)[#text(9pt, font: "Roboto")[#pin(1)#pin(2)]],
  lq.place(3, -3.06, align: left)[#text(9pt, font: "Roboto")[#pin(3)#pin(4)]],
  lq.place(0.5, 0.84, align: left)[#text(9pt, font: "Roboto")[#pin(5)#pin(6)]],
)

#let function2 = xs.map(x =>  3/8*x*x - 3/8*x -9/4)
    
#lq.diagram(
  xlim: (-5.5, 5.5),
  ylim: (-5.5, 7.5),
  width: 11cm*0.7,
  height: 13cm*0.7,
  legend: none,
  xaxis: (tick-distance: 1, subticks: 0),
  grid: none,
  yaxis: (ticks: none, tick-distance: 0, subticks: 0),

  // Graph
  // lq.plot(xs, function2, mark: none, stroke: secondcolor + 1.5pt),

  // Punkte
  lq.plot((-2,3), (0, 0), stroke: none, mark: mark => move(dx:-4.9pt,dy:-4.2pt)[#text(12pt, fill:red)[\u{2717}]], mark-size: 8pt),

  // Nullstelle
  // lq.ellipse(-2, 0, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(-2.6, -0.5, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.tr$]],
  lq.place(-4.25, -1.6, align: left)[#text(9pt, font: "Roboto")[Nullstelle \ bei $x=-2$]],

  // Nullstelle
  // lq.ellipse(3, 0, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(3.7, -0.6, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.tl$]],
  lq.place(4.3, -1.4, align: left)[#text(9pt, font: "Roboto")[Nullstelle \ bei $x=3$]],

  // Tiefpunkt
  // lq.ellipse(0.5, -2.34, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + green.darken(50%), fill: none),
  // lq.place(.75, -4, align: left)[#text(9pt, font: "Roboto")[Tiefpunkt \ bei $x=0,5$]],
  // lq.place(1.1, -2.9, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.tl$]],
)

#pinit-line-to((1, 2), stroke: (thickness: 1.5pt, paint: red, dash: "loosely-dashed"), offset-dx: 0cm, offset-dy: 12.8cm, body-dy: -0.5cm, pin-dy:.1cm, pin-dx: 0cm)[]
#pinit-line-to((3, 4), stroke: (thickness: 1.5pt, paint: red, dash: "loosely-dashed"), offset-dx: 0cm, offset-dy: 7.3cm, body-dy: -0.5cm, pin-dy:.1cm, pin-dx: 0cm)[]
// #pinit-line-to((5, 6), stroke: (thickness: 1.5pt, paint: green.darken(50%), dash: "loosely-dashed"), offset-dx: 0cm, offset-dy: 11.8cm, body-dy: -0.5cm, pin-dy:.1cm, pin-dx: 0cm)[]

#place(top + left, dx: -1.2cm, dy: 4.5cm)[
  #text(8pt, gray.lighten(50%), font: "Roboto", weight: 600)[#rotate(-90deg)[F U N K T I O N]]
]
#place(top + left, dx: -1.2cm, dy: 13.5cm)[
  #text(8pt, gray.lighten(50%), font: "Roboto", weight: 600)[#rotate(-90deg)[A B L E I T U N G]]
]