#let width = 10.5cm
#let height = 10.5cm

#set page(width: width + 1cm, height: height + 1cm, margin: 0.5cm)

// #context{page.width}

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

#let xs = lq.linspace(-100, 100, num: 5000)
#let x11 = lq.linspace(-100, -1-1/10000, num: 5000)
#let x12 = lq.linspace(-1+1/10000, 100, num: 5000)

#let function11 = x11.map(x =>  (0.125 * x*x + 1) / (x + 1))
#let function12 = x12.map(x =>  (0.125 * x*x + 1) / (x + 1))
#let asymptote = xs.map(x =>  1/8 * x - 1/4)

#lq.diagram(
  xlim: (-5.25, 5.25),
  ylim: (-5.25, 5.25),
  width: width,
  height: height,
  legend: (position: right + bottom),
  xaxis: (tick-distance: 1, subticks: 1),
  yaxis: (tick-distance: 1, subticks: 1),
  lq.plot(x11, function11, mark: none, stroke: thirdcolor + 1.5pt, label: [$display(f(x) = (1/8 x^2 + 1)/(x + 2))$]),
  lq.plot(x12, function12, mark: none, stroke: thirdcolor + 1.5pt),
  lq.plot((-1, -1), (-5.5, 5.5), stroke: (paint: red, thickness: 1pt, dash: "dashed"), mark: none),
  lq.plot(xs, asymptote, mark: none, stroke: (paint: green.darken(50%), thickness: 1pt, dash: "dashed")),
)