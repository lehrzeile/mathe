#set page(width: 9cm, height: 10cm, margin: 0.5cm)

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
  legend: (position: (bottom + right)),
  xaxis: (tick-distance: 1, subticks: 0),
  yaxis: (tick-distance: 1, subticks: 0),

  // Graph
  lq.plot(xs, function1, mark: none, stroke: thirdcolor + 1.5pt, label: [$f$]),
)

#place(top + left, dx: -1.2cm, dy: 4.5cm)[
  #text(8pt, gray.lighten(50%), font: "Roboto", weight: 600)[#rotate(-90deg)[F U N K T I O N]]
]