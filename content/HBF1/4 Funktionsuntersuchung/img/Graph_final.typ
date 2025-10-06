#set page(width: 13.5cm, height: 13.5cm, margin: 0.5cm)

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
  show: lq.set-diagram(xaxis: axis-args, yaxis: axis-args, width: 8cm, height: 8cm, xlabel: lq.xlabel(dx: 0.1cm, dy: -0.5cm)[$x$], ylabel: lq.ylabel(angle: 0deg, dx: 0.6cm, dy: -0.2cm)[$y$], xlim: (-5, 5), ylim: (-5, 5))
  show lq.selector(lq.diagram): set text(0.8em)
  show lq.selector(lq.label): set align(top + right) // Position der Achsenbeschriftungen
  show: lq.set-label(angle: 0deg)
  show: lq.set-legend(position: (100% + .5em, 0%))
  show: lq.set-grid(stroke: luma(80%), stroke-sub: 0.5pt + luma(80%))
  it
}
#show: schoolbook-style

#let function1 = xs.map(x =>  0.2*x*x*x - 1.4*x*x +7.2)
// #let function1 = xs.map(x =>  1*x*x*x + 3*x*x - 4)
// #let function1 = xs.map(x =>  1/18*x*x*x -1/2*x*x + 6)

#lq.diagram(
  xlim: (-5.25, 9.25),
  ylim: (-5.25, 9.25),
  width: 12.5cm,
  height: 12.5cm,
  legend: none,
  xaxis: (tick-distance: 1, subticks: 1),
  yaxis: (tick-distance: 1, subticks: 1),
  lq.plot(xs, function1, mark: none, stroke: thirdcolor + 1.5pt, label: [$f$]),

  // Hochpunkt
  lq.ellipse(0, 7.2, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(0.5, 8.25, align: left)[#text(9pt, font: "Roboto")[Hochpunkt]],
  lq.place(0.6, 7.8, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.bl$]],

  // Tiefpunkt
  lq.ellipse(4.67, -2.96, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(3.9, -4.25, align: left)[#text(9pt, font: "Roboto")[Tiefpunkt]],
  lq.place(4.67, -3.5, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.t$]],

  // 1. Nullstelle
  lq.ellipse(-2, 0, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(-4.5, -1.25, align: left)[#text(9pt, font: "Roboto")[Nullstelle]],
  lq.place(-2.65, -0.65, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.tr$]],

  // 2. Nullstelle
  lq.ellipse(3, 0, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(1, -1.25, align: left)[#text(9pt, font: "Roboto")[Nullstelle]],
  lq.place(2.4, -0.65, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.tr$]],

  // 3. Nullstelle
  lq.ellipse(6, 0, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(7, -1.25, align: left)[#text(9pt, font: "Roboto")[Nullstelle]],
  lq.place(6.7, -0.65, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.tl$]],

  // y-Achsenabschnitt
  lq.ellipse(0, 7.2, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(-3.75, 8.25, align: left)[#text(9pt, font: "Roboto")[y-Achsenabschnitt]],
  lq.place(-0.6, 7.8, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.br$]],

  // Wendepunkt
  lq.ellipse(2.33, 2.1, align: center + horizon, width: 0.4, height: 0.4, stroke: 1pt + red, fill: none),
  lq.place(2.9, 3.25, align: left)[#text(9pt, font: "Roboto")[Wendepunkt]],
  lq.place(2.9, 2.7, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.bl$]],

  // Grenzverhalten
  lq.place(7.5, 8.75, align: left)[#text(9pt, font: "Roboto")[$arrow.tr + infinity$]],
  lq.place(-4, -4.75, align: left)[#text(9pt, font: "Roboto")[$arrow.bl - infinity$]],
)