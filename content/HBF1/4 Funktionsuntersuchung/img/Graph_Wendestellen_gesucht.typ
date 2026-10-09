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

#lq.diagram(
  xlim: (-5.25, 9.25),
  ylim: (-5.25, 9.25),
  width: 12.5cm,
  height: 12.5cm,
  legend: none,
  xaxis: (tick-distance: 1, subticks: 1),
  yaxis: (tick-distance: 1, subticks: 1),
  lq.plot(xs, function1, mark: none, stroke: thirdcolor + 1.5pt, label: [$f$]),
  // Tangenten
  lq.plot((-1.5, 1.5), (7.2, 7.2), stroke: red + 1.5pt, mark: none),
  lq.place(0.4, 7.6, align: center + horizon)[#text(14pt, fill: red, font: "Roboto")[$arrow.bl$]],
  lq.place(0.2, 8, align: left)[#text(9pt, fill:red, font: "Roboto")[Steigung = 0]],
  lq.plot((3.17, 6.17), (-2.96, -2.96), stroke: red + 1.5pt, mark: none),
  lq.place(5, -3.3, align: center + horizon)[#text(14pt, fill: red, font: "Roboto")[$arrow.tl$]],
  lq.place(4.4, -3.75, align: left)[#text(9pt, fill:red, font: "Roboto")[Steigung = 0]],
  // Wendepunkt
  lq.place(2.75, 3.5, align: left)[#text(9pt, font: "Roboto")[Wendepunkt !?]],
  lq.place(1.05, 2.25, align: left)[#rotate(73deg)[#ellipse(stroke: 1pt + red, width: 2.2cm, height: 0.7cm)]],
  lq.place(3.1, 3, align: center + horizon)[#text(17pt, font: "Roboto")[$arrow.bl$]],
  // Markierungen
  lq.line(tip: tiptoe.triangle, stroke: red, (-2.3, 1), (-1.7, 4.5)),
  lq.place(-3.4, 2.75, align: left)[#rotate(-80deg)[#text(9pt, fill: red, font: "Roboto")[Steigung > 0]]],
  lq.line(tip: tiptoe.triangle, stroke: red, (6.5, 1), (7, 4.5)),
  lq.place(6.1, 2.75, align: left)[#rotate(-83deg)[#text(9pt, fill: red, font: "Roboto")[Steigung > 0]]],
  lq.line(tip: tiptoe.triangle, stroke: red, (1, 6.7), (2.2, 3.8)),
  lq.place(1.3, 5.6, align: left)[#rotate(70deg)[#text(9pt, fill: red, font: "Roboto")[Steigung \ nimmt ab]]],
  lq.line(tip: tiptoe.triangle, stroke: red, (2.6, 0.4), (3.7, -2.5)),
  lq.place(1.85, -1.4, align: left)[#rotate(70deg)[#text(9pt, fill: red, font: "Roboto")[Steigung \ nimmt zu]]],
)