#set page(width: 11.5cm, height: 9.5cm, margin: 0.5cm)

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

#let function1 = xs.map(x =>  0.2*(x - 3)*(x - 3) + 1)
#let x1 = 4
#let y1 = 1.2
#let x2 = 6
#let y2 = 2.8
#let sekante = xs.map(x => (y2 - y1)/(x2 - x1) * (x - x1) + y1)
#let tangente = xs.map(x => 0.4*x - 0.4)

#show: lq.set-tick(
  inset: 0pt, outset: 0pt
)

#lq.diagram(
  xlim: (-1.25, 9.25),
  ylim: (-1.25, 5.25),
  width: 10.5cm,
  height: 8.5cm,
  legend: (position: (30%, 0%)),
  grid: none,
  xaxis: (tick-distance: 1, subticks: 0, format-ticks: none),
  yaxis: (tick-distance: 1, subticks: 0, format-ticks: none),

  // Graph
  lq.plot(xs, function1, mark: none, stroke: thirdcolor + 1.5pt, label: [#text(9pt, font: "Roboto")[Funktionsgraph]]),

  // Sekante
  lq.plot(xs, sekante, mark: none, stroke: black + 1.5pt, label: [#text(9pt, font: "Roboto")[Sekante]]),

  // Tangente
  lq.plot(xs, tangente, mark: none, stroke: secondcolor + 1.5pt, label: [#text(9pt, font: "Roboto")[Tangente]]),

  // Punkte
  lq.plot((x1, x2), (y1, y2), stroke: none, mark: mark => move(dx:-4.9pt,dy:-4.2pt)[#text(12pt, fill:red)[\u{2717}]], mark-size: 8pt),

  // Hilfslinien
  lq.plot((x1, x1), (0, y1), stroke: (paint: red, thickness: 1.5pt, dash: "dashed"), mark: none),
  lq.plot((x2, x2), (0, y2), stroke: (paint: red, thickness: 1.5pt, dash: "dashed"), mark: none),
  lq.plot((0, x1), (y1, y1), stroke: (paint: red, thickness: 1.5pt, dash: "dashed"), mark: none),
  lq.plot((0, x2), (y2, y2), stroke: (paint: red, thickness: 1.5pt, dash: "dashed"), mark: none),

  // Markierungen
  lq.place(x1, -0.25, align: center + horizon)[#text(14pt, font: "Roboto")[$x_1$]],
  lq.place(x2, -0.25, align: center + horizon)[#text(14pt, font: "Roboto")[$x_2$]],
  lq.place(-0.35, y1, align: center + horizon)[#text(14pt, font: "Roboto")[$y_1$]],
  lq.place(-0.35, y2, align: center + horizon)[#text(14pt, font: "Roboto")[$y_2$]],
  lq.place(x1 - 0.2, y1 + 0.3, align: bottom)[#text(14pt, font: "Roboto")[$P_1$]],
  lq.place(x2 - 0.2, y2 + 0.3, align: bottom)[#text(14pt, font: "Roboto")[$P_2$]],

  // Steigungsdreieck
  lq.plot((x1, x2), (y1, y1), stroke: (paint: red, thickness: 1.5pt), mark: none),
  lq.plot((x2, x2), (y1, y2), stroke: (paint: red, thickness: 1.5pt), mark: none),
  lq.place((x2 - x1)/2+x1, y1 - 0.3, align: bottom)[#text(14pt, font: "Roboto")[$x_2-x_1$]],
  lq.place(x2 + 1, y1 + (y2 - y1)/2, align: bottom)[#text(14pt, font: "Roboto")[$y_2-y_1$]],
)