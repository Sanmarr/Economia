// ============================================================
//  CLASE 3 – TEORÍA DE LA PRODUCCIÓN
// ============================================================

#let cuadro-concepto(titulo: [Concepto Clave], cuerpo) = block(
  width: 100%, inset: 10pt, radius: 4pt,
  fill: rgb("#e8f4f8"), stroke: (left: 4pt + rgb("#1b6ec2")),
  [
    #text(weight: "bold", fill: rgb("#104e8b"), size: 10.5pt)[💡 #titulo] \
    #v(0.4em)
    #cuerpo
  ]
)

#let cuadro-ejemplo(titulo: [Ejemplo Práctico], cuerpo) = block(
  width: 100%, inset: 10pt, radius: 4pt,
  fill: rgb("#eafaf1"), stroke: (left: 4pt + rgb("#2ecc71")),
  [
    #text(weight: "bold", fill: rgb("#1e8449"), size: 10.5pt)[🛠️ #titulo] \
    #v(0.4em)
    #cuerpo
  ]
)

#let cuadro-atencion(titulo: [¡Atención / Cuidado!], cuerpo) = block(
  width: 100%, inset: 10pt, radius: 4pt,
  fill: rgb("#fdf2e9"), stroke: (left: 4pt + rgb("#e67e22")),
  [
    #text(weight: "bold", fill: rgb("#a04000"), size: 10.5pt)[⚠️ #titulo] \
    #v(0.4em)
    #cuerpo
  ]
)

#let cuadro-registro(titulo: [Detalle Técnico / Registro], cuerpo) = block(
  width: 100%, inset: 10pt, radius: 4pt,
  fill: rgb("#f4ecf7"), stroke: (left: 4pt + rgb("#8e44ad")),
  [
    #text(weight: "bold", fill: rgb("#5b2c6f"), size: 10.5pt)[⚙️ #titulo] \
    #v(0.4em)
    #cuerpo
  ]
)

#let imagen(desc) = figure(
  rect(width: 100%, height: 6cm, fill: rgb("#f0f0f0"), stroke: 1pt + gray)[
    #align(center + horizon)[#text(fill: gray)[🖼️ #desc]]
  ]
)

// ============================================================

= Clase 3: Teoría de la Producción

La empresa es el origen de la oferta. Para producir bienes y servicios necesita *factores de producción*: principalmente *capital* (K) y *trabajo* (L). La teoría de la producción estudia cómo estos factores se combinan para generar producto.

#cuadro-concepto(titulo: [Función de Producción])[
  La *función de producción* indica el máximo nivel de producto $q$ que puede obtener una empresa con cada combinación de factores, *dada una tecnología*:

  $ q = F(K, L) $

  - $K$ = capital (máquinas, instalaciones)
  - $L$ = trabajo (horas-hombre)

  Una *mejora tecnológica* desplaza la función: con los mismos factores se obtiene más producto. No es un movimiento a lo largo de la curva, sino un cambio de la función $F$.
]

== Horizontes temporales

La distinción corto/largo plazo no depende de un número fijo de meses; se define caso a caso según la posibilidad de ajustar los factores.

#table(
  columns: (1fr, 1fr),
  align: (left, left),
  stroke: 0.5pt,
  table.header(
    [*Corto plazo*], [*Largo plazo*]
  ),
  [Al menos un factor está *fijo*. Suponemos $K$ fijo y $L$ variable. La función queda con *una sola variable*: $q = F(macron(K), L)$.],
  [*Todos* los factores son variables. La función depende de $K$ y $L$: $q = F(K, L)$. Aquí se minimizan costos eligiendo la combinación óptima de factores.],
)

== Corto Plazo

=== Producto Total, Medio y Marginal

Con $K$ fijo, el análisis se concentra en cómo varía la producción al agregar trabajo.

#cuadro-concepto(titulo: [Las tres medidas de producción])[
  #table(
    columns: (auto, 1fr, 1fr),
    align: (left, left, left),
    stroke: 0.5pt,
    table.header(
      [*Medida*], [*Fórmula*], [*Qué mide*]
    ),
    [Producto Total (PT)],   [$q = F(macron(K), L)$],            [Cuánto se produce con cada cantidad de $L$.],
    [Producto Medio ($P M e_L$)],  [$(q) / (L)$],          [Producción por trabajador. Mide la productividad laboral.],
    [Producto Marginal ($P M g_L$)], [$(partial q) / (partial L)$ o $(Delta q) / (Delta L)$], [Cuánto sube $q$ si $L$ aumenta una unidad, con $K$ fijo.],
  )
]

#cuadro-registro(titulo: [Derivadas parciales en la función Cobb–Douglas])[
  Para $q = 10 K^(0,5) L^(0,5)$:

  $ P M g_L = (partial q) / (partial L) = 5 K^(0,5) L^(-0,5) = (5 K^(0,5)) / (L^(0,5)) $

  $ P M g_K = (partial q) / (partial K) = 5 K^(-0,5) L^(0,5) = (5 L^(0,5)) / (K^(0,5)) $

  La *derivada parcial* trata el otro factor como constante y mide el aporte marginal de cada uno.
]

=== Tabla de ejemplo (K = 10)

#table(
  columns: (auto, auto, auto, auto, auto),
  align: (center, center, center, center, center),
  stroke: 0.5pt,
  table.header(
    [*L*], [*K*], [*PT (q)*], [*PMe*], [*PMg*]
  ),
  [0],  [10], [0],   [—],   [—],
  [1],  [10], [10],  [10],  [10],
  [2],  [10], [30],  [15],  [20],
  [3],  [10], [60],  [20],  [30],
  [4],  [10], [80],  [20],  [20],
  [5],  [10], [95],  [19],  [15],
  [6],  [10], [108], [18],  [13],
  [7],  [10], [112], [16],  [4],
  [8],  [10], [112], [14],  [0],
  [9],  [10], [108], [12],  [−4],
  [10], [10], [100], [10],  [−8],
)

Observaciones clave de la tabla:
- El *PMg crece* hasta $L = 3$ (llega a 30) y luego *cae*: desde $L = 4$ rigen los rendimientos marginales decrecientes.
- El *PMe máximo* (20) se alcanza en $L = 3$ y $L = 4$; en $L = 4$ el PMg coincide con el PMe.
- En $L = 8$, $P M g = 0$: el octavo trabajador no agrega producción → el PT es *máximo*.
- Desde $L = 9$, $P M g < 0$: agregar trabajadores *reduce* la producción.

=== Las tres curvas y cómo se relacionan

#imagen("Gráfico de las tres curvas: PT arriba, PMg y PMe abajo. Puntos B (PMg máximo) y D (PMe máximo = intersección PMg-PMe)")

#cuadro-concepto(titulo: [Relaciones entre PT, PMe y PMg])[
  1. *PMg es la pendiente del PT:* mientras $P M g > 0$, el PT crece. Cuando $P M g = 0$, el PT alcanza su máximo (punto C).

  2. *PMg y PMe se cortan en el máximo del PMe (punto D):*
     - Si $P M g > P M e$ → el PMe *sube*.
     - Si $P M g < P M e$ → el PMe *baja*.
     - Por eso se intersectan exactamente en el pico del PMe.

  3. Formalmente: la derivada del PMe respecto a $L$ es

     $ (d P M e_L) / (d L) = (P M g_L - P M e_L) / L $

     que se anula cuando $P M g_L = P M e_L$.
]

=== Ley de Rendimientos Marginales Decrecientes

#cuadro-concepto(titulo: [Ley de Rendimientos Marginales Decrecientes])[
  A medida que se agregan cantidades iguales de un *factor variable*, manteniendo los *demás factores fijos*, los incrementos de producción son cada vez *menores*: el PMg decrece.
]

*¿Por qué ocurre?* El factor fijo ($K$) se reparte entre más unidades del variable ($L$): cada trabajador adicional dispone de *menos capital* con el cual trabajar.

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  align: (center, center, center, center, center, center),
  stroke: 0.5pt,
  table.header(
    [*L*], [*1*], [*3*], [*5*], [*8*], [*10*]
  ),
  [K fijo], [10], [10], [10], [10], [10],
  [K por trabajador], [10], [3,3], [2], [1,25], [1],
)

La ley rige con la *tecnología dada* y los *demás factores fijos*. No es una ley universal: si todos los factores crecen, puede haber rendimientos crecientes (ver largo plazo).

#cuadro-atencion(titulo: [No confundir con rendimientos a escala])[
  Los rendimientos marginales decrecientes son un fenómeno de *corto plazo* (un factor fijo). Los rendimientos a escala son un fenómeno de *largo plazo* (todos los factores varían). Son preguntas *independientes*.
]

=== Efecto de una Mejora Tecnológica

Una mejora tecnológica *desplaza hacia arriba* la función de producción: con el mismo $L$, se produce más.

- No cambia la *forma* de la curva: los rendimientos marginales siguen siendo decrecientes.
- Si la mejora multiplica el producto por un factor constante $m$, entonces PT, PMg y PMe se multiplican todos por $m$.

#imagen("Gráfico PT antes y después de la mejora tecnológica: curva nueva desplazada hacia arriba, misma forma convexa")

#cuadro-ejemplo(titulo: [Ejemplo — La panadería (K = 4)])[
  $q = F(K, L) = 10 K^(0,5) L^(0,5)$. Con $K = 4$:

  $ q(L) = 10 dot 4^(0,5) dot L^(0,5) = 20 L^(0,5) $

  $ P M g_L = (partial q) / (partial L) = (10) / (L^(0,5)) $

  $ P M e_L = (q) / (L) = (20) / (L^(0,5)) $

  #table(
    columns: (auto, auto, auto, auto),
    align: (center, center, center, center),
    stroke: 0.5pt,
    table.header([*L*], [*PT*], [*PMg_L*], [*PMe_L*]),
    [1],  [20],  [10],    [20],
    [4],  [40],  [5],     [10],
    [9],  [60],  [3,33],  [6,67],
    [16], [80],  [2,5],   [5],
    [25], [100], [2],     [4],
  )

  El PMg cae con $L$ ($(d P M g_L) / (d L) = -5 L^(-3/2) < 0$): los 4 hornos se reparten entre más trabajadores. *Con una mejora que sube el coeficiente de 10 a 15*, todos los valores de PT, PMg y PMe suben un 50\%.
]

== Largo Plazo

En el largo plazo, todos los factores son variables. El análisis se realiza en el plano $(L, K)$.

=== Isocuantas

#cuadro-concepto(titulo: [Isocuanta])[
  Una *isocuanta* es el conjunto de todas las combinaciones $(L, K)$ que permiten producir la misma cantidad $q_0$:

  $ F(K, L) = q_0 = "constante" $

  Es el análogo de la curva de indiferencia, pero para la producción.
]

*Propiedades de las isocuantas:*

1. *Pendiente negativa:* para mantener $q$ constante al aumentar $L$, hay que reducir $K$.
2. *Convexas al origen:* la sustitución entre factores es posible pero tiene límite; la TMST es decreciente.
3. *Más lejos del origen → mayor producción:* isocuantas superiores representan niveles de producto más altos.
4. *No se cruzan* (igual que las curvas de indiferencia).

El conjunto de todas las isocuantas forma el *mapa de isocuantas*, que describe completamente $F(K,L)$.

#imagen("Mapa de isocuantas: tres curvas convexas decrecientes q=20, q=40, q=60 en plano (L, K)")

=== Tasa Marginal de Sustitución Técnica (TMST)

#cuadro-concepto(titulo: [TMST — Definición])[
  La *Tasa Marginal de Sustitución Técnica* (TMST) es la cantidad de capital que se puede reducir por cada unidad adicional de trabajo, *manteniendo la producción constante*. Es la pendiente de la isocuanta en valor absoluto:

  $ T M S T = - (Delta K) / (Delta L) = (P M g_L) / (P M g_K) $
]

*Derivación de la fórmula:* a lo largo de una isocuanta, $d q = 0$:

$ d q = P M g_L dot d L + P M g_K dot d K = 0 $

$ => (d K) / (d L) = - (P M g_L) / (P M g_K) $

$ => T M S T = (P M g_L) / (P M g_K) $

*La TMST decrece a medida que nos movemos hacia la derecha* sobre la isocuanta: al usar más $L$ y menos $K$, el $P M g_L$ cae (rendimientos marginales decrecientes del trabajo) y el $P M g_K$ sube (capital más escaso), entonces el cociente $P M g_L \/ P M g_K$ disminuye. Esto explica la *convexidad* de la isocuanta.

#imagen("Isocuanta convexa con puntos A, B, C: pendiente se aplana de A hacia C mostrando TMST decreciente")

#cuadro-ejemplo(titulo: [Ejercicio — TMST en la panadería])[
  $q = 10 K^(0,5) L^(0,5)$. Para la isocuanta $q = 40$: $K = (16) / L$.

  $ T M S T = (P M g_L) / (P M g_K) = (5 K^(0,5) L^(-0,5)) / (5 K^(-0,5) L^(0,5)) = (K) / (L) $

  #table(
    columns: (auto, auto, auto, auto),
    align: (center, center, center, center),
    stroke: 0.5pt,
    table.header([*Punto*], [*(L; K)*], [*TMST = K/L*], [*Interpretación*]),
    [A], [(1; 16)], [16],  [1 trabajador más libera 16 unidades de K],
    [B], [(4; 4)],  [1],   [1 trabajador más libera 1 unidad de K],
    [C], [(16; 1)], [1/16],[1 trabajador más libera solo 1/16 de K],
  )

  La TMST disminuye: al ir hacia la derecha, el trabajo es relativamente abundante y el capital escaso, por lo que cada trabajador adicional "vale" menos capital.
]

=== Casos Extremos de Sustituibilidad

#table(
  columns: (1fr, 1fr, 1fr),
  align: (left, left, left),
  stroke: 0.5pt,
  table.header(
    [*Sustitutos perfectos*], [*Cobb–Douglas*], [*Complementos perfectos (Leontief)*]
  ),
  [$q = L + 2K$. \ Isocuantas *rectas*. TMST constante (= 1/2). Un factor reemplaza al otro a tasa fija.],
  [$q = 10 K^(0,5) L^(0,5)$. \ Isocuantas *convexas*. TMST decreciente. Sustitución posible, con límite.],
  [$q = min(2L, K)$. \ Isocuantas *en L (Leontief)*. No hay sustitución: los factores son complementos perfectos. Para producir más hay que aumentar ambos en proporción fija.],
)

#imagen("Tres paneles: isocuantas rectas (sustitutos), convexas (Cobb-Douglas) e isocuantas en L (Leontief)")

#cuadro-registro(titulo: [Leontief — Interpretación])[
  Con $q = min(6K, 5L)$, la isocuanta $q = 30$ tiene su vértice en $(L = 6, K = 5)$.

  - Con $K = 5$ y $L = 8$: $q = min(30, 40) = 30$. El trabajo extra *no aporta nada*.
  - El $P M g_L = 0$ a la derecha del vértice: el factor trabajo está saturado.
  - Para producir más *hay que aumentar ambos factores* en la proporción $K/L = 5/6$.
]

=== Rendimientos a Escala

Los rendimientos a escala responden: *¿qué pasa con $q$ si multiplico todos los factores por $lambda > 1$?*

#cuadro-concepto(titulo: [Tipos de Rendimientos a Escala])[
  #table(
    columns: (1fr, 1fr, 1fr),
    align: (left, left, left),
    stroke: 0.5pt,
    table.header(
      [*Crecientes*], [*Constantes*], [*Decrecientes*]
    ),
    [$F(lambda K, lambda L) > lambda F(K, L)$ \ La producción crece *más* que proporcionalmente.],
    [$F(lambda K, lambda L) = lambda F(K, L)$ \ La producción crece en la *misma* proporción.],
    [$F(lambda K, lambda L) < lambda F(K, L)$ \ La producción crece *menos* que proporcionalmente.],
  )
]

*Regla para Cobb–Douglas* $q = A K^alpha L^beta$:

$ A (lambda K)^alpha (lambda L)^beta = lambda^(alpha + beta) A K^alpha L^beta $

El exponente $alpha + beta$ determina los rendimientos:

#table(
  columns: (auto, auto, auto),
  align: (center, center, center),
  stroke: 0.5pt,
  table.header([*Función*], [*$alpha + beta$*], [*Rendimientos*]),
  [$q = 5 K^(0,7) L^(0,5)$], [1,2], [Crecientes],
  [$q = 10 K^(0,5) L^(0,5)$], [1,0], [Constantes],
  [$q = 3 K^(0,3) L^(0,4)$], [0,7], [Decrecientes],
)

*¿Por qué pueden existir cada tipo?*
- *Crecientes:* especialización y ventajas de la producción en escala (economías de escala).
- *Constantes:* duplicar la planta duplica los recursos y el producto.
- *Decrecientes:* problemas de gestión, coordinación y congestión al crecer.

#cuadro-atencion(titulo: [Rendimientos a escala ≠ Rendimientos marginales decrecientes])[
  #table(
    columns: (1fr, 1fr),
    align: (left, left),
    stroke: 0.5pt,
    table.header([*Rendimientos marginales*], [*Rendimientos a escala*]),
    [Un factor varía; los demás *fijos*.], [*Todos* los factores varían en la misma proporción.],
    [Horizonte: *corto plazo*.], [Horizonte: *largo plazo*.],
    [Pregunta: ¿cuánto suma un trabajador más?], [Pregunta: ¿qué pasa si duplico la planta entera?],
  )

  Una función puede tener rendimientos marginales decrecientes en cada factor *y aun así* tener rendimientos a escala crecientes. Ejemplo: $q = 5 K^(0,7) L^(0,5)$ — cada exponente es menor que 1 (marginales decrecientes) pero $0,7 + 0,5 = 1,2$ (escala creciente).
]

#cuadro-ejemplo(titulo: [Ejemplo — La panadería, escala])[
  $q = 10 K^(0,5) L^(0,5)$. Rendimientos *constantes* ($alpha + beta = 1$).

  #table(
    columns: (auto, auto, auto, auto, auto),
    align: (left, center, center, center, center),
    stroke: 0.5pt,
    table.header([*Escenario*], [*K*], [*L*], [*q*], [*Variación*]),
    [Base],                   [4],  [9],  [60],    [—],
    [Duplicar solo el trabajo], [4],  [18], [84,85], [+41\%],
    [Duplicar solo el capital], [8],  [9],  [84,85], [+41\%],
    [Duplicar la escala (ambos)],[8], [18], [120],   [+100\%],
  )

  Duplicar un solo factor da +41\% (rendimientos marginales decrecientes). Duplicar ambos da exactamente +100\% (rendimientos constantes a escala). *Son compatibles*: responden preguntas distintas.
]

=== Isocostos y Minimización de Costos

En el largo plazo, la empresa elige la combinación $(L, K)$ que *minimiza el costo* de producir una cantidad dada $q_0$.

#cuadro-concepto(titulo: [Isocosto])[
  La *línea de isocosto* muestra todas las combinaciones de $K$ y $L$ que tienen el mismo costo total $C$:

  $ C = w dot L + r dot K $

  donde $w$ = salario (precio del trabajo) y $r$ = alquiler del capital.

  Despejando $K$:

  $ K = (C) / (r) - (w) / (r) dot L $

  - Ordenada al origen: $(C) / (r)$
  - *Pendiente*: $-(w) / (r)$
]

#imagen("Mapa de isocostos: líneas paralelas con pendiente negativa -w/r en plano (L, K)")

=== Condición de Óptimo del Productor

La empresa minimiza costos en el punto donde la *isocuanta es tangente a la isocosto*: la pendiente de la isocuanta (TMST) iguala la pendiente de la isocosto.

$ T M S T = (w) / (r) $

$ => (P M g_L) / (P M g_K) = (w) / (r) $

Reordenando:

$ (P M g_L) / (w) = (P M g_K) / (r) $

#cuadro-concepto(titulo: [Condición de Óptimo — Interpretación])[
  En el óptimo, el *producto marginal por peso gastado* debe ser igual en ambos factores:

  $ (P M g_L) / (w) = (P M g_K) / (r) $

  Si esta condición no se cumple, conviene reasignar el gasto: si $(P M g_L) / (w) > (P M g_K) / (r)$, el trabajo rinde más por peso y la empresa debería usar más trabajo y menos capital, hasta que se igualen.
]

#imagen("Tangencia isocuanta-isocosto: punto óptimo E* donde la curva q=q0 toca la línea de costo mínimo")

=== Senda de Expansión

Al variar el nivel de producción objetivo $q_0$ (manteniendo los precios $w$ y $r$ constantes), el punto óptimo se desplaza. La *senda de expansión* une todos los puntos de tangencia.

#cuadro-concepto(titulo: [Senda de Expansión])[
  La *senda de expansión* es el lugar geométrico de las combinaciones óptimas $(L^*, K^*)$ para distintos niveles de producción, a precios de factores fijos.

  - Si la senda es una *línea recta desde el origen*, los factores se usan en proporción constante al crecer la producción.
  - La senda de expansión genera la *función de costo de largo plazo*: $C^"LP"(q)$.
]

#imagen("Senda de expansión: línea que une puntos de tangencia en distintas isocuantas con distintas isocostos paralelas")

== Síntesis: mapa conceptual de la clase

#cuadro-registro(titulo: [Resumen de conceptos clave])[
  #table(
    columns: (1fr, 1fr),
    align: (left, left),
    stroke: 0.5pt,
    table.header([*Concepto*], [*Fórmula / Regla clave*]),
    [Producto Marginal],  [$(partial q) / (partial L)$ = pendiente del PT],
    [Producto Medio],     [$(q) / (L)$; máximo cuando $P M g = P M e$],
    [Rend. marg. decrecientes], [Factor fijo → cada unidad de L aporta menos],
    [TMST],               [$(P M g_L) / (P M g_K)$ = pendiente de la isocuanta],
    [Rend. a escala (Cobb-Douglas)], [$alpha + beta$: creciente, constante o decreciente],
    [Condición de óptimo], [$(P M g_L) / (w) = (P M g_K) / (r)$],
    [Senda de expansión], [Tangencias óptimas para cada nivel de $q$],
  )
]

#cuadro-atencion(titulo: [Próxima clase — Costos])[
  Hasta aquí los factores no tenían precio en el análisis de producción. La *Clase 4* introduce los costos: ¿cuál es la combinación más barata para producir cada cantidad? ¿Cómo se forman las curvas de costo de corto y largo plazo?
]
