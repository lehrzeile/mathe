#set page(width: 10.5cm, height: 6.5cm, margin: 0.5cm)

// Definition der Farben
#let maincolor = rgb("405a94")
#let secondcolor = rgb("f5a029")
#let thirdcolor = rgb("70aee0")

// GRAPHEN PLOTTEN
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/tiptoe:0.3.1"

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
  show: lq.set-diagram(xaxis: axis-args, yaxis: axis-args, width: 8cm, height: 8cm, xlabel: lq.xlabel(dx: 0.1cm, dy: -0.1cm)[$x$], ylabel: lq.ylabel(angle: 0deg, dx: 0.6cm, dy: -0.2cm)[$y$], xlim: (-5, 5), ylim: (-5, 5))
  show lq.selector(lq.diagram): set text(0.8em)
  show lq.selector(lq.label): set align(top + right) // Position der Achsenbeschriftungen
  show: lq.set-label(angle: 0deg)
  show: lq.set-legend(position: (100% + .5em, 0%))
  show: lq.set-grid(stroke: luma(80%), stroke-sub: 0.5pt + luma(80%))
  it
}
#show: schoolbook-style

#let function1 = xs.map(x =>  0.2*(x - 1)*(x - 4)*(x - 7)) // = 0.2x^3-2.4x^2+7.8x-5.6)
// f'(x) = 0.6x^2 - 4.8x + 7.8
#let xs1 = lq.linspace(0.5, 3.5, num: 5000)
#let tangente1 = xs1.map(x => 0.6*x + 0.8) // Punkt (2|2), m=0,6 y=0,6x+0,8
#let xs2 = lq.linspace(2, 4, num: 5000)
#let tangente2 = xs2.map(x => -1.2*x + 5.2) // Punkt (3|1.6), m=-1.2, y=-1.2x + 5.2
#let xs3 = lq.linspace(3.73, 7.73, num: 5000)
#let tangente3 = xs3.map(x => -2.08) 

#show: lq.set-tick(
  inset: 0pt, outset: 0pt
)

#lq.diagram(
  xlim: (-1.25, 8.25),
  ylim: (-2.25, 3.25),
  width: 9.5cm,
  height: 5.5cm,
  legend: none,
  grid: none,
  xaxis: (tick-distance: 1, subticks: 0, format-ticks: none),
  yaxis: (tick-distance: 1, subticks: 0, format-ticks: none),

  // Graph
  lq.plot(xs, function1, mark: none, stroke: thirdcolor + 1.5pt, label: [#text(9pt, font: "Roboto")[Funktionsgraph]]),

  // Tangente 1
  lq.plot(xs1, tangente1, mark: none, stroke: black + 1pt, label: [#text(9pt, font: "Roboto")[Sekante]]),
  lq.ellipse(2, 2, align: center + horizon, width: 0.2, height: 0.2, stroke: 1pt + red, fill: none),
  lq.place(0.2, 1.6, align: left)[#text(5pt, font: "Roboto")[#rotate(-29deg)[positive Steigung]]],

  // Tangente 2
  lq.plot(xs2, tangente2, mark: none, stroke: black + 1pt, label: [#text(9pt, font: "Roboto")[Tangente]]),
  lq.ellipse(3, 1.6, align: center + horizon, width: 0.2, height: 0.2, stroke: 1pt + red, fill: none),
  lq.place(3.1, 1, align: left)[#text(5pt, font: "Roboto")[#rotate(50deg)[negative Steigung]]],

  // Tangente 3
  lq.plot(xs3, tangente3, mark: none, stroke: black + 1pt, label: [#text(9pt, font: "Roboto")[Tangente]]),
  lq.ellipse(5.73, -2.08, align: center + horizon, width: 0.2, height: 0.2, stroke: 1pt + red, fill: none),
  lq.place(5.73, -2.3, align: center)[#text(5pt, font: "Roboto")[Steigung = 0]],
)