#import "../../lib.typ": *
#import "../../plotsy-3d.typ": plot-3d-surface

== Integrales sobre áreas generales

#definition("Región Tipo I")[
  Sean $Phi_1 : [a,b] subset RR arrow.long RR space.med$ y $space.med Phi_2 : [a,b] subset RR arrow.long RR$ tales que $Phi_1(x) <= Phi_2(x) space.med forall x in [a,b]$. Decimos que el conjunto $ D = {x in [a,b] | Phi_1(x) <= y <= Phi_2(x)} $ es de *Tipo I*.
]

Los siguientes son ejemplos de la definición anterior.
#stack(
  dir: ltr,
  spacing: 5em,
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
