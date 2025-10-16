#import "./utils.typ":*

#align(center)[
  #text(18pt)[
    = .
  ]
  // #text(13pt)[
  // ]
]

$
"con"(phi) < 2^("depth"(phi) + 1)
$

B: $phi = p$
$
"con"(p) < 2^("depth"(p) + 1)
$

$
"con"(p) < 2^("depth"(p) + 1) arrow.double.l.r
0 < 2^(0 + 1) arrow.double.l.r
0 < 2
$

HI:

$
"con"(phi) < 2^("depth"(phi) + 1)
space.quad space.quad
"con"(psi) < 2^("depth"(psi) + 1)
$

Negación: $phi = not phi$

$
"con"(not phi) = 1 + "con"(phi) & < 2^("depth"(phi) + 1) + 1\
& < 2^("depth"(phi) + 1 + 1) \
& < 2^("depth"(not phi) + 1)
$

Necesitamos
$
 2^("depth"(phi) + 1) + 1 <=  2^("depth"(phi) + 2)
$

Entonces
$
 2^("depth"(phi) + 1) + 1 <=  2^("depth"(phi) + 2)\
arrow.double.l.r\
 2 dot.c 2^("depth"(phi)) + 1 <=  2^2 dot.c 2^("depth"(phi))\
arrow.double.l.r\
2^("depth"(phi)) + 1 <= 2 dot 2^("depth"(phi))\
$

Si $"depth"(phi) > 0$, es inmediato que la desigualdad se cumple. Si $"depth"(phi) = 0$, llegos a que $0 <= 0$. En ambos casos la desigualdad es correcta.

Por la transitividad de $<$, se cumple la desigualdad buscada.

Binario:

$
"con"(phi triangle psi) = "con"(phi) + "con"(psi) + 1 
&< 2^("depth"(phi) + 1) +  2^("depth"(psi) + 1) + 1\
&< 2^("depth"(phi) + 1) +  2^("depth"(psi) + 1) + 1\
$

Necesitamos
$
2^("depth"(phi) + 1) +  2^("depth"(psi) + 1) + 1 <= 2^("depth"(phi triangle psi) + 1)
$

Entonces

$
2^("depth"(phi) + 1) +  2^("depth"(psi) + 1) + 1 <= 2^("max"("depth"(phi), "depth"(psi)) + 1+ 1)\
$


Suponiendo $"depth"(phi) > "depth"(psi)$

$
2^("depth"(phi) + 1) +  2^("depth"(psi) + 1) + 1 <= 2^("max"("depth"(phi), "depth"(psi)) + 2)\
arrow.double.l.r\
2^("depth"(phi) + 1) +  2^("depth"(psi) + 1) + 1 <= 2^("depth"(phi) + 2)\
arrow.double.l.r\
2^("depth"(phi) + 1) +  2^("depth"(psi) + 1) + 1 <= 2 dot.c 2^("depth"(phi) + 1)\
arrow.double.l.r\
2^("depth"(psi) + 1) + 1 <= 2^("depth"(phi) + 1)\
arrow.double.l.r\
2^("depth"(psi) + 1) - 1 < 2^("depth"(phi) + 1)\
$

Como $"depth"(phi) > "depth"(psi)$, lo anterior en cierto

= sin + 1


$
"con"(phi) < 2^("depth"(phi))
$

B: $phi = p$
$
"con"(p) < 2^("depth"(p))
$

$
"con"(p) < 2^("depth"(p)) arrow.double.l.r
0 < 2^(0) arrow.double.l.r
0 < 1
$

HI:

$
"con"(phi) < 2^("depth"(phi))
space.quad space.quad
"con"(psi) < 2^("depth"(psi))
$

Negación: $phi = not phi$

$
"con"(not phi) = 1 + "con"(phi) < 2^("depth"(phi)) + 1
$

Necesitamos
$
2^("depth"(phi)) + 1 <= 2^("depth"(not phi))
$

Entonces
$
2^("depth"(phi)) + 1 <= 2^("depth"(not phi))\
arrow.l.r.double\
2^("depth"(phi)) + 1 <= 2^("depth"(phi) + 1)\
arrow.l.r.double\
2^("depth"(phi)) + 1 <= 2 dot.c 2^("depth"(phi))\
arrow.l.r.double\
1 <= 2^("depth"(phi))\
$

Dado que $"depth"(phi) >= 0$, la desigualdad se cumple

Binario:

$
"con"(phi triangle psi) = "con"(phi) + "con"(psi) + 1 
&< 2^("depth"(phi)) +  2^("depth"(psi)) + 1\
$

Necesitamos
$
2^("depth"(phi)) +  2^("depth"(psi)) + 1 <= 2^("depth"(phi triangle psi))
$
