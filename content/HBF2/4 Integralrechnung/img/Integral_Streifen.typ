#let width = 7.5cm
#let height = 6.5cm

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
  show: lq.set-diagram(xaxis: axis-args, yaxis: axis-args, width: 8cm, height: 8cm, xlabel: lq.xlabel(dx: 0.3cm, dy: -0.45cm)[$x$], ylabel: lq.ylabel(angle: 0deg, dx: 0.2cm, dy: -0.2cm)[$y$], xlim: (-5, 5), ylim: (-5, 5))
  show lq.selector(lq.diagram): set text(0.8em)
  show lq.selector(lq.label): set align(top + right) // Position der Achsenbeschriftungen
  show: lq.set-label(angle: 0deg)
  show: lq.set-legend(position: (100% + .5em, 0%))
  show: lq.set-grid(stroke: luma(80%), stroke-sub: 0.5pt + luma(80%))
  it
}
#show: schoolbook-style

#let xs = lq.linspace(-3, 6, num: 1000)

#let function = xs.map(x =>  0.01 * (x + 2) * (x - 5) * (x - 6) + 1)

#let xt = lq.linspace(1, 4, num: 1000)
#let area1 = xt.map(x =>  0.01 * (x + 2) * (x - 5) * (x - 6) + 1)
#let area2 = xt.map(x =>  0)
#let xt2 = lq.linspace(2, 2.5, num: 1000)
#let area11 = xt2.map(x =>  0.01 * (x + 2) * (x - 5) * (x - 6) + 1)
#let area12 = xt2.map(x =>  0)

#lq.diagram(
  xlim: (-1.25, 6.25),
  ylim: (-0.25, 2.25),
  width: width,
  height: height,
  legend: none,
  xaxis: (ticks: none),
  yaxis: (ticks: none),
  lq.fill-between(
    fill: secondcolor.lighten(80%),
    xt,
    area1,
    y2: area2,
  ),
  lq.fill-between(
    fill: secondcolor.lighten(30%),
    xt2,
    area11,
    y2: area12,
  ),
  lq.plot(xs, function, mark: none, stroke: maincolor + 1pt),
  lq.plot((1,1), (-.02,1.6), mark: none, stroke: .5pt + black),
  lq.plot((1.5,1.5), (-.02,1.55), mark: none, stroke: .5pt + black),
  lq.plot((2,2), (-.02,1.48), mark: none, stroke: .5pt + black),
  lq.plot((2.5,2.5), (-.02,1.39), mark: none, stroke: .5pt + black),
  lq.plot((3,3), (-.02,1.3), mark: none, stroke: .5pt + black),
  lq.plot((3.5,3.5), (-.02,1.2), mark: none, stroke: .5pt + black),
  lq.plot((4,4), (-.02,1.12), mark: none, stroke: .5pt + black),
  lq.place(1, -.08, align: center, [$a$]),
  lq.place(4, -.08, align: center, [$b$]),
  lq.place(1.8, .75, align: center, text(font: "Roboto", 5pt)[f(x)]),
  lq.place(2.25, -.05, align: center, text(font: "Roboto", 5pt)[dx]),
  lq.place(5.8, 1.07, align: center, text(font: "Roboto", maincolor)[f]),
)