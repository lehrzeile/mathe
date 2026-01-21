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
#let ys = lq.linspace(-100, 100, num: 5000)

#let function = xs.map(x =>  calc.pow(1.5, x))
#let exp_func(x) = calc.pow(1.5, x)

#lq.diagram(
  xlim: (-2.25, 5.25),
  ylim: (-1.25, 5.25),
  width: width,
  height: height,
  legend: (position: right + bottom),
  xaxis: (tick-distance: 1, subticks: 1),
  yaxis: (tick-distance: 1, subticks: 1),
  lq.plot(xs, function, mark: none, stroke: maincolor + 1.5pt, label: [$display(f(x) = 1.5^x)$]),
)