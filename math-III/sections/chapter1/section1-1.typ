#import "../../lib.typ": *

== Integrales de Riemman

¿Qué es la integral?

+ Antiderivada
$ F(x) = integral f(x) space.med dif x; space.quad F'(x) = f(x) $

+ Área bajo la curva

#align(center)[
  #canvas({
    import draw: *
    import plot: *
    plot(
      size: (9, 4),
      x-tick-step: none,
      y-tick-step: none,
      axis-style: "left",
      {
        add(
          style: (stroke: red),
          domain: (-2,3),
          x => calc.cos(x) + 1,
        )
        add-fill-between(
          domain: (-1.44,1.9),
          x => 0,
          x => 1 + calc.cos(x)
        )
      },
    )
    content((4, 1.6), [$A$])
    set-style(
      stroke: (dash: "dashed")
    )
    content((1,2.8), text(size: 10pt)[$a$])
    line((1,0), (1, 2.3))
    content((7,1.8), text(size: 10pt)[$b$])
    line((7,0), (7, 1.3))
  })
  $ A = integral_a^b f(x) space.med dif x $
]

#align(center)[
  #canvas({
    import draw: *
    import plot: *
    plot(
      size: (9, 4),
      x-tick-step: none,
      y-tick-step: 0.5,
      axis-style: "left",
      {
        add(
          style: (stroke: red),
          domain: (-2,3),
          x => calc.cos(x) + 1,
        )
      },
    )
    rect((1.9,0), (2.5,3.43), stroke : (dash: "dashed"), name: "rect")
    content((1.8,-0.5), [$x_i$])
    content((2.7,-0.5), [$x_(i + i)$])
    line((2.2,0),(2.2,3.43), stroke : (dash: "dashed", paint: orange))
    circle("rect.north", radius: 0.1, fill: orange)
    content((1.8,3.8), [$f(c_i)$])
    content((2.2, 1.6), [$A_i$])
    set-style(stroke: (dash: "dashed"))
    content((1,-0.5), text(size: 10pt)[$a$])
    line((1,0), (1, 2.3))
    content((7,-0.5), text(size: 10pt)[$b$])
    line((7,0), (7, 1.3))
    content((1,-1), text(size: 10pt)[$x_0$])
    content((7,-1), text(size: 10pt)[$x_n$])
  })
]

Definimos una *partición* de $[a,b]$, con $a = x_1, x_2, ..., x_i = b$

El área de cada rectángulo es:

$ A_i = "base" times "altura" 
  = underbrace((x_(i + 1) - x_i), "base")space.med underbrace(f(c_i),"altura")  $

El área bajo la curva es approximadamente:
$ A_T approx sum_(i = 1)^n A_i = sum_(i = 1)^n f(c_i) space.med (x_(i + 1) - x_i) $

El área total es:
$ A_T = lim_(Delta x arrow 0) sum_(i = 1)^n f(c_i) space.med Delta x space.quad "donde" space.quad Delta x = x_(i + 1) - x_i $

#definition("Suma de Riemman")[
  Bajo las condiciones anteriores, tenemos la *Suma de Riemman*:
  $ A_T = integral_a^b f(x) space.med dif x = lim_(Delta x arrow 0) sum_(i = 1)^n f(c_i) space.med Delta x $
]

