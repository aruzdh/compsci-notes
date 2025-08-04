#import "../../lib.typ": *
#import "../../plotsy-3d.typ": plot-3d-surface

== Integrales sobre áreas generales

#definition("Región Tipo I")[
  Sean $Phi_1 : [a,b] subset RR arrow.long RR space.med$ y $space.med Phi_2 : [a,b] subset RR arrow.long RR$ tales que $Phi_1(x) <= Phi_2(x) space.med forall x in [a,b]$. Decimos que el conjunto $ D = {x in [a,b] | Phi_1(x) <= y <= Phi_2(x)} $ es de *Tipo I*.
]

Los siguientes son ejemplos de la definición anterior.
#align(center)[
  #stack(
    dir: ltr,
    spacing: 3em,
    canvas({
      import draw: *
      import plot: *
      plot(
        size: (6, 4),
        x-tick-step: none,
        y-tick-step: none,
        axis-style: "left",
        {
          add-fill-between(
            style: (fill: yellow.transparentize(80%)),
            domain: (-0.8,2.2),
            x => calc.pow(x,3) - 8 * x - 3,
            x => calc.pow(x,3) - x * 3 + 10,
          )
          add(
            style: (stroke: blue),
            domain: (-2,3),
            x => calc.pow(x,3) - 8 * x - 3,
          )
          add(
            style: (stroke: red),
            domain: (-2,3),
            x => calc.pow(x,3) - x * 3 + 10,
          )
        },
      )
      content((3.3, 1.3), [$D$])
      line((1.5,-0.20), (1.5, 0.10))
      line((5,-0.20), (5, 0.10))
      set-style(
        stroke: (dash: "dashed")
      )
      content((3.3,2.5), text(red)[$Phi_2(x)$])
      content((1.5,3.3), text(size: 10pt)[$a$])
      line((1.5,0), (1.5, 2.87))
      content((2.2,0.4), text(blue)[$Phi_1(x)$])
      content((5,3.3), text(size: 10pt)[$b$])
      line((5,0), (5, 2.87))
    }),

    canvas({
      import draw: *
      import plot: *
      plot(
        size: (6, 4),
        x-tick-step: none,
        y-tick-step: none,
        axis-style: "left",
        {
          add-fill-between(
            style: (fill: yellow.transparentize(80%)),
            domain: (-1.2,2.18),
            x => calc.pow(x,2) - 7 * calc.sin(3*x) - 7 * - calc.cos(x),
            x => calc.pow(x,2) + 3 * calc.sin(3*x) - calc.cos(x) + 25,
          )
          add(
            style: (stroke: blue),
            domain: (-2,3),
            x => calc.pow(x,2) - 7 * calc.sin(3*x) - 7 * - calc.cos(x),
          )
          add(
            style: (stroke: red),
            domain: (-2,3),
            x => calc.pow(x,2) + 3 * calc.sin(3*x) - calc.cos(x) + 25,
          )
        },
      )
      content((3.1, 2), [$D$])
      line((1,-0.20), (1, 0.10))
      line((5,-0.20), (5, 0.10))
      set-style(
        stroke: (dash: "dashed")
      )
      
      content((3,3.5), text(red)[$Phi_2(x)$])
      content((1,4.3), text(size: 10pt)[$a$])
      line((1,0), (1, 4))
      content((5,4.3), text(size: 10pt)[$b$])
      content((2,0.5), text(blue)[$Phi_1(x)$])
      line((5,0), (5, 4))
    })
  )
]

#definition("Región Tipo II")[
  Sean $Psi_1 : [c,d] subset RR arrow.long RR space.med$ y $space.med Psi_2 : [c,d] subset RR arrow.long RR$ tales que $Psi_1(y) <= Psi_2(y) space.med forall y in [c,d]$. Decimos que el conjunto $ D = {y in [c,d] | Psi_1(y) <= x <= Psi_2(y)} $ es de *Tipo II*.
]

Los siguientes son ejemplos de la definición anterior.

#align(center)[
  #stack(
    dir: ltr,
    spacing: 3em,
    canvas({
      import draw: *
      import plot: *
      plot(
        size: (6, 4),
        x-tick-step: none,
        y-tick-step: none,
        axis-style: "left",
        {
          add-fill-between(
            style: (fill: yellow.transparentize(80%)),
            domain: (-1.7,2.2),
            axes: ("y", "x"),
            x => calc.pow(x,3) - 8 * x - 3,
            x => calc.pow(x,3) - x * 3 + 10,
          )
          add(
            axes: ("y", "x"),
            style: (stroke: blue),
            domain: (-3.3,3),
            x => calc.pow(x,3) - 8 * x - 3,
          )
          add(
            axes: ("y", "x"),
            style: (stroke: red),
            domain: (-3.3,3),
            x => calc.pow(x,3) - x * 3 + 10,
          )
        },
      )

      content((2.3, 2.7), [$D$])
      line((-.2,1), (.1, 1))
      line((-.2,3.5), (.1, 3.5))
      set-style(
        stroke: (dash: "dashed")
      )

      content((4.2,2.5), text(red)[$Psi_2(y)$])
      content((6,3.53), text(size: 10pt)[$d$])
      line((5.5,3.5), (0, 3.5))
      content((1.2,1.6), text(blue)[$Psi_1(y)$])
      content((6,1.05), text(size: 10pt)[$c$])
      line((5.5,1), (0, 1))
    }),

    canvas({
      import draw: *
      import plot: *
      plot(
        size: (6, 4),
        x-tick-step: none,
        y-tick-step: none,
        axis-style: "left",
        {
          add-fill-between(
            axes: ("y", "x"),
            style: (fill: yellow.transparentize(80%)),
            domain: (-0.8,2.40),
            x => calc.pow(x,2) - 7 * calc.sin(3*x) - 7 * - calc.cos(x),
            x => calc.pow(x,2) + 3 * calc.sin(3*x) - calc.cos(x) + 25,
          )
          add(
            axes: ("y", "x"),
            style: (stroke: blue),
            domain: (-2,3),
            x => calc.pow(x,2) - 7 * calc.sin(3*x) - 7 * - calc.cos(x),
          )
          add(
            axes: ("y", "x"),
            style: (stroke: red),
            domain: (-2,3),
            x => calc.pow(x,2) + 3 * calc.sin(3*x) - calc.cos(x) + 25,
          )
        },
      )
      content((3.1, 2), [$D$])
      line((-.2,1), (.1, 1))
      line((-.2,3.5), (.1, 3.5))
      set-style(
        stroke: (dash: "dashed")
      )
      
      content((5.5,2.5), text(red)[$Psi_2(y)$])
      content((6.4,3.53), text(size: 10pt)[$d$])
      line((6,3.5), (0, 3.5))
      content((1.0,1.4), text(blue)[$Psi_1(y)$])
      content((6.4,1.05), text(size: 10pt)[$c$])
      line((6,1), (0, 1))
    })
  )
]

#definition("Región Tipo III")[
  $D subset RR^2$ es una *Región Tipo III* si es una Región de _Tipo I_ y de _Tipo II_.
]

Los siguientes son ejemplos de la definición anterior. Ambos de radio $R$, y siendo de Tipo I y Tipo II, respectivamente.
#align(center)[
  #stack(
    dir: ltr,
    spacing: 3em,
    canvas({
      import draw: *
      import plot: *
      plot(
        size: (4, 4),
        x-tick-step: none,
        y-tick-step: none,
        axis-style: "school-book",
        {
          add-fill-between(
            style: (fill: yellow.transparentize(80%)),
            domain: (-4,4),
            x => calc.sqrt(16 - calc.pow(x,2)),
            x => -calc.sqrt(16 - calc.pow(x,2)),
          )
          add(
            style: (stroke: red),
            domain: (-4,4),
            x => calc.sqrt(16 - calc.pow(x,2)),
          )
          add(
            style: (stroke: blue),
            domain: (-4,4),
            x => -calc.sqrt(16 - calc.pow(x,2)),
          )
        },
      )
      content((2.9, 1.2), [$D$])
      set-style(
        stroke: (dash: "dashed")
      )
      content((2.9,2.9), text(red)[$Phi_2(x)$])
      content((1.2,.9), text(blue)[$Phi_1(x)$])
    }),

    canvas({
      import draw: *
      import plot: *
      plot(
        size: (4, 4),
        x-tick-step: none,
        y-tick-step: none,
        axis-style: "school-book",
        {
          add-fill-between(
            axes: ("y","x"),
            style: (fill: yellow.transparentize(80%)),
            domain: (-4,4),
            x => calc.sqrt(16 - calc.pow(x,2)),
            x => -calc.sqrt(16 - calc.pow(x,2)),
          )
          add(
            axes: ("y","x"),
            style: (stroke: red),
            domain: (-4,4),
            x => calc.sqrt(16 - calc.pow(x,2)),
          )
          add(
            axes: ("y","x"),
            style: (stroke: blue),
            domain: (-4,4),
            x => -calc.sqrt(16 - calc.pow(x,2)),
          )
        },
      )
      content((2.9, 1.2), [$D$])
      set-style(
        stroke: (dash: "dashed")
      )
      content((2.9,2.9), text(red)[$Psi_2(y)$])
      content((1.2,.9), text(blue)[$Psi_1(y)$])
    }),
  )
]

#definition("Frontera de una Región")[
  $diff D$ representa la frontera de una región $D$.
]
#definition("Regiones Elementales")[
  Las regiones de Tipo I, II, y III se llaman *regiones elementales*.
]

#theorem("Integración en Regiones de Tipo I")[
  Si $D$ es una región de Tipo I, entonces podemos integrar $f(x,y)$ en $D$ de la siguiente manera.
  $ integral_D f(x,y) space.med dif y dif x = integral_a^b integral_(Phi_1(x))^(Phi_2(x)) f(x,y) space.med dif y dif x $ donde $a <= x <= b$, $Phi_1(x) <= y <= Phi_2(x)$, y el orden de integración *debe mantenerse*.
]

#theorem("Integración en Regiones de Tipo II")[
  Si $D$ es una región de Tipo II, entonces podemos integrar $f(x,y)$ en $D$ de la siguiente manera.
  $ integral_D f(x,y) space.med dif x dif y = integral_c^d integral_(Psi_1(y))^(Psi_2(y)) f(x,y) space.med dif x dif y $ donde $c <= y <= d$, $Psi_1(y) <= x <= Psi_2(y)$, y el orden de integración *debe mantenerse*.
]

*Ejemplo.*

Calcular $ integral_D x^3 y space.med dif A $, donde $D$ es el triángulo mostrado a continuación.
#align(center)[
  #canvas({
    import draw: *
    import plot: *
    plot(
      size: (4, 4),
      x-tick-step: none,
      y-tick-step: none,
      axis-style: "left",
      {
        add-fill-between(
          style: (fill: yellow.transparentize(80%)),
          domain: (0,calc.pi / 2),
          x => x,
          x => 0
        )
        add(
          style: (stroke: red),
          domain: (0,calc.pi / 2),
          x => x,
        )
        add(
          style: (stroke: black),
          domain: (0,calc.pi / 2),
          x => 0,
        )
      },
    )
    content((2.5, 1.2), [$D$])
    line((4 ,-0.20), ( 4, 0.10))
    set-style(
      stroke: (dash: "dashed")
    )
    content((1.3,2.5), text(red)[$y = m x + b$])
    // content((0,3.3), text(size: 10pt)[$a$])
    line((0,4), (4, 4))
    // content((2.2,0.4), text(blue)[$Phi_1(x)$])
    // content((5,3.3), text(size: 10pt)[$b$])
    line((4,0), (4, 4))
    circle((), radius: .13, fill: orange, stroke: orange)
    content((4.5,4.5),[$(pi/2, pi/2)$])
  })
]

*Paso 1*: Parametrizar $D$

- Tipo I:
$
cases(
  a <= x <= b,
  Phi_1(x) <= y <= Phi_2(x)
) 
arrow.double.long
cases(
  0 <= x <= pi slash 2,
  0 <= y <= x,
)
$ 
Tenemos la recta:
$ y = underbrace(m,#place(center)[Pendiente]) x + underbrace(b,#place()[Ordenada al orgine]) $

Así,
$
cases(
  b = 0 "intersección con " y,
  m = (y_2 - y_1)/(x_2 - x_2) = (pi slash 2 - 0)/(pi slash 2 - 0) = 1,
)
arrow.long.double
y = x
$

- Tipo II
$
cases(
  c <= y <= d,
  Psi_1(y) <= x <= Psi_2(y)
) 
arrow.double.long
cases(
  y <= x <= pi slash 2,
  0 <= y <= pi slash 2,
)
$

Despejando: $y = x arrow.long.double x = y$

*Paso 2*: Integrar (Tipo 1)

$
integral_D x^3 y space.med dif A &= integral_0^(pi slash 2) integral_0^x x^3 y space.med dif y dif x
= integral_0^(pi slash 2) (integral_0^x x^3 y space.med dif y )dif x \
&= integral_0^(pi slash 2) (x^3 integral_0^x y space.med dif y )dif x/
&= integral_0^(pi slash 2) (x^3 space.med [y^2 / 2] lr(|,size: #300%) _0^x )dif x \
&= integral_0^(pi slash 2) x^3 space.med (x^2 / 2) dif x 
= integral_0^(pi slash 2) x^5/2 dif = 1/2 [x^6/6] lr(|, size: #300%)_0^(pi slash 2) \
&= 1/12 (pi/2)^6  = 1/12 (pi^6/64) = pi^6/768
$
