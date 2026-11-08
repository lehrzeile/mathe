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
  let axis-args = (position: 0, filter: filter, tick-distance: 0, subticks: 0)
  
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

#let xs = lq.linspace(-10, 10, num: 1000)

#let function3 = xs.map(x =>  x)
#let x3 = lq.linspace(-3, 3, num: 1000)
#let area31 = x3.map(x =>  x)
#let area32 = x3.map(x =>  0)

#lq.diagram(
  xlim: (-4.25, 4.25),
  ylim: (-4.25, 4.25),
  width: width,
  height: height,
  legend: none,
  xaxis: (tick-distance: 1, subticks: 1),
  yaxis: (tick-distance: 1, subticks: 1),
  lq.plot(xs, function3, mark: none, stroke: thirdcolor + 1pt),
  lq.fill-between(
    fill: thirdcolor.transparentize(80%),
    x3,
    area31,
    y2: area32,
    z-index: 0,
  ),
  lq.line((-3,0), (-3,-3), stroke: (paint: thirdcolor, thickness: 1.5pt, dash: "loosely-dashed")),
  lq.line((3,0), (3,3), stroke: (paint: thirdcolor, thickness: 1.5pt, dash: "loosely-dashed")),
  lq.place(2.25,1.25,[$A_1$]),
  lq.place(-2.25,-1.25,[$A_2$]),
  lq.place(1.02,-2.99, align: bottom + left, [#box(width: 2.4cm, height: 1.8cm, fill: white, inset: 5pt)[$A_1 = A_2 \ => display(integral_(-3)^(3) x "dx" = 0)$]]),
)