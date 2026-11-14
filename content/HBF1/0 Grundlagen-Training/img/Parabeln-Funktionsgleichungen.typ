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

#let function1 = xs.map(x =>  calc.pow(x + 3,2) - 4)
#let function2 = xs.map(x =>  calc.pow(x + 1,2) - 3)
#let function3 = xs.map(x =>  calc.pow(x - 2,2) - 1)
#let function4 = xs.map(x =>  calc.pow(x - 3,2) - 2.5)
#let function5 = xs.map(x =>  calc.pow(x,2) - 1.5)

#lq.diagram(
  xlim: (-5.25, 5.25),
  ylim: (-5.25, 5.25),
  width: width,
  height: height,
  legend: (position: right + bottom),
  xaxis: (tick-distance: 1, subticks: 1),
  yaxis: (tick-distance: 1, subticks: 1),
  lq.plot(xs, function1, mark: none, stroke: secondcolor + 1.5pt, label: [$f(x)$]),
  lq.plot(xs, function2, mark: none, stroke: maincolor + 1.5pt, label: [$g(x)$]),
  lq.plot(xs, function3, mark: none, stroke: thirdcolor + 1.5pt, label: [$h(x)$]),
  lq.plot(xs, function4, mark: none, stroke: red + 1.5pt, label: [$j(x)$]),
  lq.plot(xs, function5, mark: none, stroke: green.darken(50%) + 1.5pt, label: [$k(x)$]),
)