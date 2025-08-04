#import "../../lib.typ": *
#import "../../plotsy-3d.typ": plot-3d-surface

== Cálculos de Volumen con Riemman

Sea $f : #text(red)[R] subset RR^2 arrow.long RR$ donde $#text(red)[R]$ es un rectángulo en $underline(overline(x y))$ dado por $#text(red)[R] = [a,b] times [c,d]$. $f$ es de la forma $ z = f(x,y) $

#let color_func(x, y, z, x_lo, x_hi, y_lo, y_hi, z_lo, z_hi) = {
  return rgb("#00008B").transparentize(50%)
}


#let func(x,y) = x*x + y*y + 14
#let plane(x,y) = 0

#let size = 4
#let scale-factor = 0.3
#let (xscale,yscale,zscale) = (0.3,0.3,0.05)

#align(center)[

#plot-3d-surface(
    func,
    func2: plane,
    color-func: color_func,
    subdivisions: 3,
    scale-dim: (xscale*scale-factor,yscale*scale-factor, zscale*scale-factor),
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad-low: (1,2,2),
    axis-step: (10,15,105),
    dot-thickness: 0.03em,
    front-axis-thickness: 0.1em,
    axis-label-size: 1.5em,
    front-axis-dot-scale: (0.6, 1),
    rear-axis-dot-scale: (0.08,0.08),
    rear-axis-text-size: 0em,
    axis-label-offset: (0.3,0.1,0.1),
  )
]

#align(center)[
  #canvas({
    import draw: *
    import plot: *
    plot(
      size: (8, 4),
      x-tick-step: none,
      y-tick-step: none,
      axis-style: "left",
      {
        add(
          x => 1,
          style: (stroke: red.transparentize(100%)),
          domain: (-2,3),
        )
      },
    )

    for i in (range(1,17)) {
      line((i * 0.5,-0.25), (i * 0.5,0.25), stroke: (paint: black.lighten(40%)))
    }

    for i in (range(1,9)) {
      line((-0.25, i * 0.5), (0.25, i * 0.5), stroke: (paint: black.lighten(40%)))
    }

    rect((1,1),(7,3), fill: red.transparentize(90%), stroke: (paint:red.transparentize(20%)))
    grid((0,0),(8,4), step: 0.5, stroke: (paint: black.transparentize(90%)))
    grid((1,1),(7,3), step: 0.5, stroke: (paint: red.transparentize(80%)))
    content((4,2), text(size: 15pt)[$#text(red.darken(30%))[$R$]$])

    line((1,-0.25),(1,1), stroke: (dash: "dashed", paint: black.transparentize(60%)))
    line((7,-0.25),(7,1), stroke: (dash: "dashed",paint: black.transparentize(60%)))
    line((1,-0.25),(1,0.25),)
    line((7,-0.25),(7,0.25))
    content((1,-0.5),[$a$])
    content((7,-0.5),[$b$])

    line((-0.25,3),(1,3), stroke: (dash: "dashed", paint: black.transparentize(60%)))
    line((-0.25,1),(1,1), stroke: (dash: "dashed", paint: black.transparentize(60%)))
    line((-0.25,3),(0.25,3))
    line((-0.25,1),(0.25,1))
    content((-0.5,3),[$d$])
    content((-0.5,1),[$c$])
    content((9,2),text(size: 12pt)[donde])

    rect((10,1.5),(11,2.5), fill: red.transparentize(80%), stroke: (paint: red.transparentize(60%)))
    content((10.5,2), text(size: 11pt)[$#text(red.darken(30%))[$Delta A$]$])
    line((10,1.2),(11,1.2), mark: (symbol: "bar"))
    line((11.3,2.5),(11.3,1.5), mark: (symbol: "bar"))
    content((11.7,2),[$Delta y$])
    content((10.5,0.8),[$Delta x$])
  })
]

Partimos el rectángulo:
- Eje $x$: $a = x_1, x_2, dots, x_n = b$
- Eje $y$: $c = y_1, y_2, dots, y_n = d$

El volumen de cada partición es:
$ V_i = "base" times "altura" = underbrace((Delta A), "base") times underbrace(f(C_(j k)),"altura") = f(C_(j k)) space.med Delta x Delta y $

El volumen total es approximadamente:
$ V_T approx sum_(i = 1)^n V_i = sum_(j,k = 1)^n f(C_(j k)) space.med Delta x Delta y $

Así, el volumen es la siguiente _Suma de Riemman_:
$ V_T = lim_(Delta x arrow 0) (lim_(Delta y arrow 0) (sum_(j,k = 1)^n f(C_(j k)) space.med Delta x Delta y) ) $
#definition("Integral Doble")[
  La Suma de Riemman anterior se llama *Integral Doble*:
  $ integral_R f(x,y) = integral_R f(x,y) space.med dif x dif y = integral_R f(x,y) space.med dif A $ donde $R$ es el rectángulo antes definido.
]

=== Propiedades de la Integral Doble

Sean $f,g : R subset RR^2 arrow.long RR$ integrables en $RR$, y sea $c in RR$

- Integrabilidad 
#align(center)[
  $f plus.minus g$, $f g$, $c f$, $c g$ son integrables.
]
- Linealidad
$ integral_R [f(x,y) + g(x,y)] space.med dif A = integral_R f(x,y) space.med dif A + integral_R g(x,y) space.med dif A $
- Homogeneidad
$ integral_R c f(x,y) space.med dif A = c integral_R f(x,y) space.med dif A $
- Monotonía
$ "Si " f(x,y) >= g(x,y) arrow.long.double integral_R f(x,y) space.med dif A >= integral_R g(x,y) space.med dif A $
