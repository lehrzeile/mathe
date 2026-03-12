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

#let xs = lq.linspace(-5, 5, num: 1000)

#let function = xs.map(x =>  calc.pow(x,3))

#let xt = lq.linspace(-1, 2, num: 1000)
#let area1 = xt.map(x =>  calc.pow(x,3))
#let area2 = xt.map(x =>  0)

#lq.diagram(
  xlim: (-5.25, 5.25),
  ylim: (-1.75, 8.75),
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
  lq.place(1.1, .5, align: left, [$+A_2$]),
  lq.place(-0.9, .5, align: left, [$-A_1$]),
  lq.plot((-.6,-.8), (.25,-.25), mark: none, stroke: (paint: black, thickness: .5pt)),
  lq.plot((-1,-1), (-2,10), mark: none, stroke: (paint: red, thickness: 1pt, dash: "dashed")),
  lq.plot((2,2), (-2,10), mark: none, stroke: (paint: red, thickness: 1pt, dash: "dashed")),
  lq.place(-1.25, -.25, align: left, [$a$]),
  lq.place(2.1, -.25, align: left, [$b$]),
)