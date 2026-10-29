// ============================================================
//  CLASE 5 - COMPETENCIA PERFECTA
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
  rect(
    width: 100%, height: 3cm, radius: 3pt,
    stroke: (dash: "dashed", paint: gray),
    align(center + horizon, text(fill: gray, size: 8pt)[Imagen: #desc]),
  ),
  caption: desc, kind: image, supplement: [Figura],
)

// ============================================================

= Clase 5: Competencia Perfecta

En la clase anterior estudiamos los costos de producción. Ahora usamos esas curvas para responder una pregunta central: *dado el precio de mercado, ¿cuánto produce una empresa y cuándo le conviene cerrar?* En competencia perfecta, cada empresa toma el precio como dado; de su decisión individual se deriva la oferta del mercado.

== La Empresa Competitiva

=== Supuestos de la Competencia Perfecta

#cuadro-concepto(titulo: [¿Qué caracteriza a un mercado perfectamente competitivo?])[
  #table(
    columns: (1fr, 1fr),
    align: (left, left),
    stroke: 0.5pt,
    table.header([*Supuesto*], [*Implicancia*]),
    [Muchos compradores y vendedores], [Ningún participante individual tiene tamaño suficiente para influir sobre el precio de mercado.],
    [Producto homogéneo], [Los compradores consideran idénticos los bienes ofrecidos por las distintas empresas.],
    [Empresas precio-aceptantes], [Cada empresa toma el precio de mercado como dado y decide cuánto producir.],
    [Información perfecta], [Compradores y vendedores conocen los precios y las condiciones del mercado.],
    [Libre entrada y salida], [No hay barreras relevantes para ingresar o retirarse de la industria en el largo plazo.],
  )
]

=== Demanda de la Empresa e Ingreso Marginal

La demanda de mercado puede tener pendiente negativa, pero la demanda que enfrenta *una empresa individual* es horizontal al precio de mercado $P_0$. Como su producción es pequeña respecto del mercado:

- Si intenta cobrar más que $P_0$, los compradores pueden adquirir el mismo producto a otros vendedores y la empresa no vende.
- No tiene motivo para cobrar menos: puede vender lo que desea al precio vigente.
- Puede vender más o menos unidades sin modificar el precio.

Por lo tanto, para la empresa competitiva:

$ P = I M e = I M g $

El ingreso total es $I T = P q$. Como $P$ es constante, cada unidad adicional aumenta el ingreso en $P$.

#imagen("Comparar el mercado, donde oferta y demanda determinan P0, con la empresa individual, que enfrenta una demanda horizontal d = IMg = P0.")

== Maximización del Beneficio

El beneficio económico es la diferencia entre el ingreso total y el costo total:

$ pi(q) = I T(q) - C T(q) = P q - C T(q) $

La empresa elige $q$ para maximizarlo. La condición de primer orden es:

$ (d pi) / (d q) = I M g - C M g = 0 $

Como en competencia $I M g = P$, la condición queda:

$ P = C M g $

#cuadro-atencion(titulo: [La igualdad no alcanza por sí sola])[
  La empresa produce en el punto donde el $C M g$ es *creciente*. Si el $C M g$ fuera decreciente, la igualdad $P = C M g$ no identificaría el máximo de beneficio. Además, hay que comprobar si el precio alcanza para cubrir los costos variables.
]

#imagen("Curvas de CMg y CTMe junto con el precio horizontal P = IMg. El óptimo q* está en la intersección sobre el tramo creciente del CMg.")

=== Beneficio o Pérdida en el Corto Plazo

Una vez elegido el nivel de producción, se compara el precio con el costo total medio:

#table(
  columns: (auto, 1fr, 1fr),
  align: (left, left, left),
  stroke: 0.5pt,
  table.header([*Situación*], [*Resultado por unidad*], [*Beneficio total*]),
  [$P > C T M e$], [El ingreso por unidad supera el costo total por unidad.], [Beneficio económico positivo.],
  [$P = C T M e$], [El ingreso por unidad iguala el costo total por unidad.], [Beneficio económico nulo.],
  [$P < C T M e$], [El ingreso por unidad no cubre el costo total por unidad.], [Pérdida económica.],
)

$ pi = (P - C T M e) q $

Tener pérdidas no implica necesariamente que convenga cerrar: la decisión de corto plazo depende de si producir cubre los costos variables.

=== Producir o Cerrar Temporalmente

Si la empresa cierra temporalmente, produce $q = 0$: no tiene ingresos ni costos variables, pero sigue afrontando los *costos fijos*. Su pérdida es $C F$.

Si produce, su beneficio puede escribirse como:

$ pi = I T - C V - C F $

Conviene producir cuando los ingresos cubren al menos los costos variables:

$ I T >= C V quad <=> quad P >= C V M e $

#cuadro-concepto(titulo: [Regla de cierre de corto plazo])[
  - Si $P > C V M e$, producir permite cubrir todos los costos variables y una parte de los fijos. La pérdida (si la hay) es menor que cerrando.
  - Si $P = C V M e$, la empresa es indiferente entre producir y cerrar: en ambos casos pierde exactamente $C F$.
  - Si $P < C V M e$, los ingresos ni siquiera cubren los costos variables. Conviene cerrar y limitar la pérdida a los costos fijos.

  El *precio de cierre* es el mínimo del $C V M e$.
]

#cuadro-atencion(titulo: [Cierre temporal y salida no son lo mismo])[
  Cerrar temporalmente es una decisión de *corto plazo*: la empresa deja de producir, pero mantiene sus costos fijos. Salir de la industria es una decisión de *largo plazo*: la empresa puede evitar todos sus costos y compara la rentabilidad económica con sus alternativas.
]

#imagen("Curvas CMg, CTMe y CVMe. Mostrar el precio de cierre en el mínimo del CVMe y la regla de producir si P lo iguala o supera.")

=== Ejercicio: Producir con Pérdidas o Cerrar

Una empresa competitiva tiene:

$ C T = q^3 - 8 q^2 + 30 q + 180 $

Y el mercado está dado por $Q_D = 150 - P$ y $Q_S = 66 + P$.

1. *Precio de cierre:* $C F = 180$ y $C V = q^3 - 8q^2 + 30q$. Entonces:

   $ C V M e = (C V) / q = q^2 - 8q + 30 $

   Su mínimo ocurre cuando $2q - 8 = 0$, es decir, $q = 4$. El precio de cierre es:

   $ C V M e(4) = 16 - 32 + 30 = 14 $

2. *Precio de mercado:* igualamos oferta y demanda:

   $ 150 - P = 66 + P => P^* = 42, quad Q^* = 108 $

3. *Producción de la empresa:* $C M g = 3q^2 - 16q + 30$. En el tramo creciente:

   $ 42 = 3q^2 - 16q + 30 => q^* = 6 $

4. *Decisión:* $P = 42 > C V M e(6) = 18$, por lo que conviene producir. El beneficio es:

   $ pi = P q - C T(6) = 42 dot 6 - 288 = -36 $

   La empresa tiene una pérdida de $36$, pero es menor que los $180$ que perdería si cerrara.

== La Oferta Competitiva

=== Oferta de la Empresa

Para cada precio, la empresa elige la cantidad donde $P = C M g$, siempre que el precio cubra el costo variable medio. De ahí se deriva que:

#cuadro-concepto(titulo: [Curva de oferta de corto plazo])[
  La oferta de una empresa competitiva es el tramo *creciente del $C M g$ que queda por encima del mínimo del $C V M e$*. Por debajo del precio de cierre, la empresa no produce.
]

#imagen("Curva de oferta individual: tramo creciente del CMg a partir del mínimo del CVMe; por debajo del precio de cierre, q = 0.")

=== Oferta de la Industria

La oferta de mercado se obtiene mediante la *suma horizontal* de las ofertas individuales: a cada precio se suman las cantidades que ofrece cada empresa.

#imagen("Suma horizontal de las curvas de oferta de varias empresas para obtener la oferta de la industria.")

=== Excedente del Productor y Beneficio

El excedente del productor (EP) mide lo que la empresa recibe por encima del costo variable de producir las unidades vendidas. Gráficamente es el área entre el precio y la curva de oferta, hasta la cantidad producida:

$ E P = I T - C V $

Como el beneficio descuenta también los costos fijos:

$ pi = E P - C F $

#cuadro-ejemplo(titulo: [Nancy y la miel])[
  Nancy vende miel en un mercado competitivo a $P = 50$ por kilo. Sus costos fijos son $15$ y puede producir hasta 6 kg.

  #table(
    columns: (auto, auto, auto, auto, auto),
    align: (center, center, center, center, center),
    stroke: 0.5pt,
    table.header([*q*], [*CV*], [*CMg del kilo*], [*IT*], [*Beneficio*]),
    [1], [38], [38], [50], [−3],
    [2], [81], [43], [100], [4],
    [3], [130], [49], [150], [5],
    [4], [189], [59], [200], [−4],
    [5], [257], [68], [250], [−22],
    [6], [337], [80], [300], [−52],
  )

  A $P = 50$, la tercera unidad todavía agrega más ingreso ($50$) que costo ($49$), pero la cuarta cuesta $59$. Produce *3 kg* y obtiene un beneficio de $150 - 130 - 15 = 5$.

  El excedente del productor es $150 - 130 = 20$. La diferencia entre el EP ($20$) y el beneficio ($5$) son los costos fijos ($15$).
]

== Equilibrio Competitivo de Largo Plazo

En el largo plazo las empresas pueden entrar o salir de la industria:

- Si hay beneficios económicos positivos, nuevas empresas entran. La oferta de mercado aumenta y el precio tiende a bajar.
- Si hay pérdidas económicas, algunas empresas salen. La oferta de mercado disminuye y el precio tiende a subir.
- El ajuste se detiene cuando no hay incentivo para entrar ni para salir.

#cuadro-concepto(titulo: [Beneficio económico nulo])[
  En una industria competitiva con libre entrada y salida, el equilibrio de largo plazo satisface:

  $ P = C M g = min(C M e L P) $

  El precio cubre todos los costos económicos, incluido el costo de oportunidad. Por eso *beneficio económico cero no significa que el dueño no gane dinero*: obtiene el retorno normal de su trabajo y de su capital, igual al de su mejor alternativa.
]

Para empresas idénticas, las condiciones de equilibrio también incluyen:

- $Q = D(P)$: el mercado se vacía.
- $N = Q / q^*$: la cantidad de empresas es la producción total dividida por la producción de cada empresa.

#imagen("Equilibrio de largo plazo: empresa representativa con P en el mínimo del CMeLP y mercado con entrada/salida hasta beneficio económico cero.")

=== Ejercicio: Equilibrio de Largo Plazo

Empresas idénticas tienen $C T = 4q^2 + 25q + 100$, y la demanda es $Q_D = 5.300 - 20P$. Hay libre entrada y salida, y los precios de los factores son constantes.

1. El costo medio de largo plazo es:

   $ C M e L P = (C T) / q = 4q + 25 + 100/q $

   Su mínimo se alcanza cuando $4 - 100/q^2 = 0$, es decir, $q^* = 5$. En ese nivel, $C M e L P = 65$.

2. En equilibrio de largo plazo, $P^* = 65$. La cantidad de mercado es:

   $ Q^* = 5.300 - 20 dot 65 = 4.000 $

3. El número de empresas es $N = 4.000 / 5 = 800$. Cada una tiene beneficio económico cero.

4. Si la demanda sube a $Q_D = 6.500 - 20P$, en el corto plazo (con las 800 empresas existentes) el precio sube a $75$ y cada empresa produce $6,25$. Aparecen beneficios positivos, que atraen nuevas empresas. En el largo plazo el precio vuelve a $65$, la producción de cada empresa vuelve a $5$ y el mercado alcanza $Q = 5.200$: quedan $1.040$ empresas, es decir, entran $240$.

=== La Oferta de Largo Plazo de la Industria

La forma de la oferta de largo plazo depende de cómo cambian los costos de las empresas cuando se expande la industria:

#table(
  columns: (1fr, 1fr, 1fr),
  align: (left, left, left),
  stroke: 0.5pt,
  table.header([*Tipo de industria*], [*Qué pasa al expandirse*], [*Oferta de largo plazo*]),
  [Costo constante], [Los precios de los factores no cambian; el costo mínimo de cada empresa permanece igual.], [Horizontal, al precio mínimo del $C M e L P$.],
  [Costo creciente], [La expansión encarece factores escasos; suben los costos de las empresas.], [Creciente.],
  [Costo decreciente], [La expansión abarata factores o genera beneficios externos; bajan los costos de las empresas.], [Decreciente.],
)

#imagen("Tres casos de oferta de largo plazo: horizontal en industria de costo constante, creciente en industria de costo creciente y decreciente en industria de costo decreciente.")

=== Aumento Permanente de la Demanda

Ante un aumento permanente de la demanda, el ajuste ocurre en dos etapas:

1. *Corto plazo:* con el número de empresas fijo, suben el precio y la producción de cada empresa. Si el precio supera el costo medio, aparecen beneficios económicos positivos.
2. *Largo plazo:* los beneficios atraen empresas y la oferta de mercado se desplaza a la derecha. El precio vuelve al nivel compatible con beneficio económico nulo.

En una industria de *costo constante*, el precio de largo plazo no cambia; aumentan la cantidad total y el número de empresas. En las de costo creciente o decreciente, el precio de largo plazo también cambia, según varíen los costos de los factores.

#imagen("Aumento permanente de demanda en el mercado y su efecto sobre el precio y la cantidad por empresa en el corto y el largo plazo.")

== Aplicación: ¿Qué Sembrar?

La decisión de siembra sirve para distinguir la rentabilidad económica de la decisión de continuar una actividad:

- *Antes de sembrar*, se comparan los ingresos esperados con todos los costos relevantes, incluido el costo de oportunidad de la tierra propia (el alquiler que podría obtenerse).
- *Si el cultivo ya está sembrado*, los costos ya incurridos son hundidos. La decisión de cosechar depende de si los ingresos futuros cubren los costos evitables de cosecha.
- Si la soja ya está implantada y el rinde esperado cae a 10 qq/ha, el caso presentado estima una pérdida de US\$ 12/ha. Esa pérdida contable no alcanza para decidir: hay que comparar el ingreso de cosechar con el costo variable que aún puede evitarse.

#cuadro-atencion(titulo: [Costos hundidos y decisión marginal])[
  Una inversión que ya no se puede recuperar no debe determinar la decisión de hoy. Antes de iniciar la producción se evalúa si conviene entrar; una vez incurrido un costo, se compara el beneficio futuro con los costos que todavía pueden evitarse.
]

== Síntesis

#cuadro-registro(titulo: [Mapa de conceptos — Clase 5])[
  #table(
    columns: (1fr, 1fr),
    align: (left, left),
    stroke: 0.5pt,
    table.header([*Concepto*], [*Regla clave*]),
    [Empresa precio-aceptante], [$P = I M e = I M g$],
    [Maximización del beneficio], [$P = C M g$ en el tramo creciente del CMg],
    [Cierre temporal], [Producir si $P >= C V M e$; cierre si $P < min(C V M e)$],
    [Oferta individual de corto plazo], [Tramo creciente del CMg por encima del mínimo del CVMe],
    [Oferta de industria], [Suma horizontal de las ofertas individuales],
    [Excedente del productor], [$E P = I T - C V$],
    [Beneficio], [$pi = E P - C F$],
    [Equilibrio competitivo de largo plazo], [$P = C M g = min(C M e L P)$; beneficio económico nulo],
    [Oferta de largo plazo], [Horizontal, creciente o decreciente según cómo cambien los costos de la industria],
  )
]

La próxima clase estudia qué cambia cuando una empresa deja de ser precio-aceptante: en el monopolio, el ingreso marginal es menor que el precio.
