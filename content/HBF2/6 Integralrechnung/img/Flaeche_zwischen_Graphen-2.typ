#let width = 7.5cm
#let height = 8.5cm

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
  show: lq.set-diagram(xaxis: axis-args, yaxis: axis-args, width: 8cm, height: 8cm, xlabel: lq.xlabel(dx: 0.2cm, dy: -0.6cm)[$x$], ylabel: lq.ylabel(angle: 0deg, dx: 0.5cm, dy: -0.2cm)[$y$], xlim: (-5, 5), ylim: (-5, 5))
  show lq.selector(lq.diagram): set text(0.8em)
  show lq.selector(lq.label): set align(top + right) // Position der Achsenbeschriftungen
  show: lq.set-label(angle: 0deg)
  show: lq.set-legend(position: (100% + .5em, 0%))
  show: lq.set-grid(stroke: luma(80%), stroke-sub: 0.5pt + luma(80%))
  it
}
#show: schoolbook-style

#let xs = lq.linspace(-3, 7, num: 1000)

#let function1 = xs.map(x =>  0.5 * calc.pow((x - 2),2) + 1.5)
#let function2 = xs.map(x =>  x + 1)

#let xt = lq.linspace(1, 5, num: 1000)
#let area1 = xt.map(x =>  0.5 * calc.pow((x - 2),2) + 1.5)
#let area2 = xt.map(x =>  0)

#lq.diagram(
  xlim: (-1.25, 6.25),
  ylim: (-1.25, 7.25),
  width: width,
  height: height,
  legend: none,
  xaxis: (tick-distance: 1, subticks: 1),
  yaxis: (tick-distance: 1, subticks: 1),
  lq.fill-between(
    fill: maincolor.transparentize(80%),
    xt,
    area1,
    y2: area2,
  ),
  lq.plot(xs, function1, mark: none, stroke: maincolor + 1pt, label: [$display(f_1(x))$]),
  lq.plot(xs, function2, mark: none, stroke: secondcolor + 1pt, label: [$display(f_2(x))$]),
  lq.line((1,0), (1,2), stroke: (paint: maincolor, thickness: 1.5pt, dash: "loosely-dashed")),
  lq.line((5,0), (5,6), stroke: (paint: maincolor, thickness: 1.5pt, dash: "loosely-dashed")),
  lq.place(3.25,1.25,[$A_g$]),
)