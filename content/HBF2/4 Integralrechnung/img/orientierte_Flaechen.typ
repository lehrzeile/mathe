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
  let axis-args = (position: 0, filter: filter, tick-distance: 0, subticks: 0)
  
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

#let xs = lq.linspace(-3, 15, num: 1000)

#let function = xs.map(x =>  -0.0015* (x - 1) * (x - 3) * (x - 7) * (x - 10) * (x - 13))

#let xt = lq.linspace(1.3, 12, num: 1000)
#let area1 = xt.map(x =>  -0.0015* (x - 1) * (x - 3) * (x - 7) * (x - 10) * (x - 13))
#let area2 = xt.map(x =>  0)

#lq.diagram(
  xlim: (-1.25, 15.25),
  ylim: (-1.25, 2.25),
  width: width,
  height: height,
  legend: none,
  xaxis: (ticks: none),
  yaxis: (ticks: none),
  lq.fill-between(
    fill: secondcolor.lighten(30%),
    xt,
    area1,
    y2: area2,
  ),
  lq.plot(xs, function, mark: none, stroke: maincolor + 1pt),
  lq.place(1.4, -.3, align: left, [$-A_1$]),
  lq.place(4.2, .5, align: left, [$+A_2$]),
  lq.place(8, -.3, align: left, [$-A_3$]),
  lq.place(10.7, .5, align: left, [$+A_4$]),
  lq.plot((1.3,1.3), (-1,15), mark: none, stroke: (paint: red, thickness: 1pt, dash: "dashed")),
  lq.plot((12,12), (-1,15), mark: none, stroke: (paint: red, thickness: 1pt, dash: "dashed")),
  lq.place(1.1, -1.15, align: left, [$a$]),
  lq.place(11.9, -1.15, align: left, [$b$]),
)