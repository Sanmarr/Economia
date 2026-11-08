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

= Monopolio

En competencia perfecta, cada empresa toma el precio como dado. En cambio, un 
monopolista tiene *poder de mercado*: puede influir en el precio porque es el único vendedor de un bien sin sustitutos cercanos. #highlight[Esto no significa que pueda cobrar cualquier precio]: #highlight[la cantidad que los compradores demandan limita sus decisiones].

== Origen y decisiones del monopolio

=== Barreras a la entrada

La existencia de un monopolio depende de barreras que dificultan o impiden que otras empresas compitan:

- *Naturales:* las economías de escala hacen que una empresa pueda abastecer el mercado a menor costo que varias. Es el caso del monopolio natural.
- *De propiedad:* una empresa controla un recurso esencial para producir.
- *Legales:* licencias, franquicias, patentes o derechos de autor otorgan exclusividad, generalmente por un período determinado.

=== Demanda e ingreso marginal

El monopolista enfrenta la demanda de mercado, que tiene pendiente negativa. Para vender unidades adicionales debe reducir el precio; si cobra un precio menor, ese precio se aplica también a las unidades que ya vendía. Por eso el ingreso marginal (IMg) es menor que el precio:

$ I T(Q) = P(Q) dot Q $

$ I M g = P + Q dot (d P)/(d Q) < P $

El monopolista elige la cantidad que maximiza el beneficio y luego determina el precio correspondiente sobre la curva de demanda:

$ I M g = C M g $

Si $I M g > C M g$, conviene aumentar la producción; si $I M g < C M g$, conviene reducirla. A diferencia de la empresa competitiva, el monopolista no iguala el precio al costo marginal.

//#imagen("Demanda decreciente (D = IMe) e ingreso marginal (IMg) por debajo de ella.")

#figure(
  image("images/demDec.png", width: 40%),
  caption: [Demanda decreciente (D = IMe) e ingreso marginal (IMg).]
)

#cuadro-atencion(titulo: [Cómo encontrar el óptimo])[
  Primero se obtiene $Q^*$ de $I M g = C M g$. Luego se reemplaza esa cantidad en la *demanda* para encontrar $P^*$. El precio no se lee en la curva de ingreso marginal.
]

#cuadro-ejemplo(titulo: [Demanda lineal y costo marginal constante])[
  Si la demanda inversa es $P = 24 - Q$ y el costo marginal es $C M g = 4$, entonces:

  $ I T = (24 - Q)Q = 24Q - Q^2 quad -> quad I M g = 24 - 2Q $

  $ 24 - 2Q = 4 quad -> quad Q^* = 10 $

  En la demanda, $P^* = 24 - 10 = 14$. Si el costo medio es $4$, el beneficio es $(14 - 4) dot 10 = 100$.
]

//#imagen("Maximización del monopolio: intersección IMg = CMg para hallar Q*, precio P* leído en la demanda y área de beneficio.")

#figure(
  image("images/cantYprecio.png", width: 60%)
)

== Monopolio y eficiencia

En competencia, la cantidad eficiente se determina donde la disposición marginal a pagar iguala el costo marginal: $P = C M g$. El monopolista restringe la producción para cobrar un precio mayor:

#align(center)[
#table(
  columns: (auto, auto, auto),
  align: (left, center, center),
  stroke: 0.5pt,
  table.header([*Resultado*], [*Competencia*], [*Monopolio*]),
  [Precio], [$4$], [$14$],
  [Cantidad], [$20$], [$10$],
  [Excedente del consumidor], [$200$], [$50$],
  [Beneficio], [$0$], [$100$],
  [Pérdida irrecuperable de eficiencia], [$0$], [$50$],
)]

Parte del excedente del consumidor se transfiere al monopolista, pero la reducción de producción también elimina intercambios beneficiosos: esa pérdida para la sociedad es la *pérdida irrecuperable de eficiencia* (PIE). Además, puede haber *búsqueda de rentas*: recursos destinados a obtener o proteger el poder monopólico.

#figure(
  image("images/MonVsCom.png", width: 50%),
  caption: [Comparación entre monopolio y competencia: excedente del consumidor, beneficio del monopolista y triángulo de pérdida irrecuperable de eficiencia.]
)

//#imagen("Comparación entre monopolio y competencia: excedente del consumidor, beneficio del monopolista y triángulo de pérdida irrecuperable de eficiencia.")

#cuadro-concepto(titulo: [El monopolista no tiene curva de oferta])[
  No existe una correspondencia única entre precio y cantidad ofrecida por el monopolista. Con el mismo costo marginal y la misma cantidad óptima, distintas curvas de demanda pueden dar precios diferentes. La decisión depende tanto de los costos como de la forma de la demanda.
]

//#imagen("Dos curvas de demanda con el mismo CMg: igual cantidad monopolística, pero distinto precio; ilustración de que no existe curva de oferta.")

#figure(
  image("images/curvaOfertaMon.png", width: 50%),
  caption: [Dos curvas de demanda con el mismo CMg: igual cantidad monopolística, pero distinto precio; ilustración de que no existe curva de oferta.]
)

== Medición del poder de mercado: Indice de Lerner

El #highlight[*índice de Lerner* mide el margen del precio sobre el costo marginal como proporción del precio]:

$ L = (P - C M g) / P $

En competencia perfecta $P = C M g$ y $L = 0$. Cuanto mayor sea $L$, mayor es el poder de mercado. Para un monopolista que maximiza beneficios:

$ L = -1/E_d = 1/abs(E_d) $

Aquí $E_d$ es la elasticidad-precio de la demanda que enfrenta la empresa. Cuanto menos elástica sea la demanda, mayor puede ser el margen. El monopolista opera en el tramo elástico de la demanda, donde $abs(E_d) > 1$.

#cuadro-atencion(titulo: [Poder de mercado no equivale a beneficio])[
  Un margen alto no demuestra por sí solo que haya beneficios económicos extraordinarios: también importa el costo medio, que incluye costos fijos y de oportunidad.
]

Las fuentes del poder de mercado incluyen la falta de sustitutos cercanos, un número reducido de competidores y la interacción entre empresas. La competencia agresiva suele reducir los márgenes; la coordinación puede ampliarlos.

#figure(
  image("images/ejED.png", width: 100%),
  caption: [Ejemplo de indice Lerner ]
)

== Regulación y política antimonopolio

=== Topes de precio

#highlight[Un precio máximo puede reducir el precio y aumentar la cantidad respecto del monopolio no regulado]. Al acercarlo al costo marginal, la cantidad puede llegar al nivel eficiente. Si el tope queda por debajo del costo marginal, producir deja de ser rentable y puede haber escasez o salida del mercado.

//#imagen("Efecto de distintos topes de precio sobre la cantidad, el precio y la producción del monopolista.")

#figure(
  image("images/regMon.png", width: 100%),
)

=== Monopolio natural

En un monopolio natural, las economías de escala mantienen decreciente el costo medio en el rango relevante y una sola empresa abastece el mercado a menor costo. La regulación enfrenta un dilema:

- Con $P = C M g$ se alcanza una asignación eficiente, pero si $C M g < C M e$, la empresa no cubre sus costos y puede requerir un subsidio.
- Con $P = C M e$ la empresa cubre sus costos económicos, aunque la cantidad queda por debajo del nivel eficiente.

//#imagen("Monopolio natural: demanda, costo medio decreciente y costo marginal; comparación de regulación P = CMg y P = CMe.")

#figure(
  image("images/monNat.png", width: 100%),
)


=== Impuesto específico

Un impuesto por unidad de monto $t$ eleva el costo marginal relevante de $C M g$ a $C M g + t$. El monopolista reduce la cantidad y sube el precio; #highlight[el aumento del precio puede ser menor que el impuesto, por lo que la empresa absorbe parte de la carga en menores beneficios].

#figure(
  image("images/impMon.png", width: 100%),
)

=== Legislación antimonopolio

Las leyes antimonopolio buscan proteger la competencia y limitar conductas que restringen el mercado o consolidan un poder excesivo. El análisis considera tanto la estructura del mercado y las barreras de entrada como las conductas de las empresas. *Lo hacen fomentando la competencia: prohíben lo
que la restringe.
*

== Discriminación de precios

Discriminar precios consiste en cobrar precios distintos por el mismo bien, no explicados por diferencias en el costo de producirlo. La práctica busca capturar parte del excedente del consumidor y requiere poder de mercado, capacidad de segmentar y evitar la reventa entre compradores.

#align(center)[
#table(
  columns: (auto, auto, auto, auto),
  align: (center, left, left, left),
  stroke: 0.5pt,
  table.header([*Grado*], [*Información del vendedor*], [*Cómo fija los precios*], [*Ejemplos*]),
  [Primero \ (perfecta)], [Conoce la disposición a pagar de cada comprador.], [Cobra a cada persona su precio máximo.], [Negociación individual; presupuestos a medida.],
  [Segundo], [Sabe cómo cambia la disposición a pagar con la cantidad, pero no quién es cada cliente.], [Precios por bloques, cantidades o versiones del producto.], [Descuentos por volumen; tarifas por bloques.],
  [Tercero], [Identifica grupos con distinta elasticidad.], [Cobra más al grupo cuya demanda es menos elástica.], [Descuentos para estudiantes o jubilados; precios por edad.],
)]

#cuadro-ejemplo(titulo: [Dos grupos con distinta elasticidad])[
  Si los adultos tienen una demanda menos elástica que los estudiantes, la empresa puede cobrarles un precio mayor. Por ejemplo, con costo marginal de $10$, las cantidades y precios óptimos del caso de clase son $2.450$ entradas a $255$ para adultos y $4.500$ a $55$ para estudiantes. Es discriminación de *tercer grado*.
]

== Aplicación: márgenes y poder de mercado

La clase utiliza el margen bruto reportado por NVIDIA como punto de partida para discutir cuánto puede sugerir sobre el poder de mercado. Si, de manera aproximada, el margen bruto de $75%$ representara el índice de Lerner, entonces:

$ L approx 0.75 quad -> quad abs(E_d) approx 1/L approx 1.33 $

Esta lectura debe tomarse con cautela: el costo de ventas medio no es necesariamente el costo marginal, y el margen bruto no descuenta gastos como investigación y desarrollo ni otros costos fijos. Para evaluar poder de mercado también se necesita evidencia sobre sustitutos, competidores, barreras de entrada y conducta empresarial.

/*
== Síntesis

- El monopolista enfrenta una demanda decreciente, por lo que $I M g < P$.
- Elige la cantidad con $I M g = C M g$ y obtiene el precio desde la demanda.
- Produce menos y cobra más que en competencia, generando una PIE; no tiene curva de oferta.
- El índice de Lerner relaciona el margen con la elasticidad: $L = (P - C M g)/P = 1/abs(E_d)$.
- La regulación, los impuestos y la legislación antimonopolio modifican incentivos y resultados; la discriminación permite cobrar precios distintos a compradores o grupos.

 */