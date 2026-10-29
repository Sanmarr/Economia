// ==========================================
// FUNCIONES DE CUADROS DIDÁCTICOS (CALLOUTS)
// ==========================================

#let hl(content) = {
  highlight(fill: rgb("#fcfe88"), content)
}

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

// Marcador de imagen (después lo reemplazás por #image("archivo.png"))
#let imagen(desc) = figure(
  rect(
    width: 100%, height: 3cm, radius: 3pt,
    stroke: (dash: "dashed", paint: gray),
    align(center + horizon, text(fill: gray, size: 8pt)[Imagen: #desc]),
  ),
  caption: desc, kind: image, supplement: [Figura],
)


// 
// Colores y cajas
// 
#let azul = rgb("#1f5fa8")
#let verde = rgb("#2e7d32")
#let rojo = rgb("#c62828")
#let naranja = rgb("#e65100")

#let caja(titulo, color, cuerpo) = block(
  width: 100%, inset: 8pt, radius: 3pt,
  fill: color.lighten(92%),
  stroke: (left: 2.5pt + color, rest: 0.5pt + color.lighten(55%)),
)[
  #text(weight: "bold", fill: color)[#titulo] \
  #cuerpo
]

#let definicion(cuerpo) = caja("Definición", azul, cuerpo)
#let ejemplo(cuerpo) = caja("Ejemplo", verde, cuerpo)
#let importante(cuerpo) = caja("Importante", rojo, cuerpo)
#let idea(cuerpo) = caja("Idea clave", naranja, cuerpo)

// ==========================================
// CONTENIDO DE LA CLASE 1
// ==========================================

= Oferta, Demanda y Mecanismo de Mercado

== Fundamentos Metodológicos de la Microeconomía

La *microeconomía* es #hl[la rama de la ciencia económica que estudia el comportamiento y la toma de decisiones de los agentes económicos individuales] —principalmente los consumidores (familias) y las empresas (unidades productivas)—, así como la forma en que interactúan en los diferentes mercados para determinar la asignación de recursos y la formación de precios.

#cuadro-concepto(titulo: [El Flujo Circular de la Renta])[
  La economía puede conceptualizarse a través de dos grandes tipos de agentes y dos mercados interconectados:
  - *Unidades de consumo (familias):* Propietarias de los factores productivos (tierra, trabajo y capital). Ofrecen estos factores en el *mercado de factores* a cambio de ingresos (salarios, rentas, beneficios), los cuales destinan al gasto en el *mercado de bienes y servicios*.
  - *Unidades de producción (empresas):* Contratan y demandan factores en el mercado de factores para producir bienes y servicios, que luego ofrecen en el mercado de bienes y servicios para obtener ingresos por ventas.
]

//#imagen("Diagrama del Flujo Circular de la Renta entre Familias y Empresas")

#figure(
  image("images/flujo.png", width: 100%),
  caption: [Diagrama del Flujo Circular de la Renta entre Familias y Empresas]
) <fig:flujo>

=== Economía Positiva vs. Economía Normativa

En el análisis económico resulta esencial distinguir entre dos enfoques complementarios:

- *Economía Positiva:* Se orienta a describir, explicar y predecir los fenómenos económicos de manera objetiva ('lo que es, ha sido o será'). No formula juicios de valor éticos ni morales.
  
  - _Ejemplo:_ #hl['Si se impone un precio máximo por debajo del equilibrio, se generará escasez del bien'.]

- *Economía Normativa:* Formula prescripciones, juicios de valor y propuestas sobre cómo debería organizarse la actividad económica ('lo que debería ser').

  - _Ejemplo:_ #hl['El Estado debería subsidiar la tarifa eléctrica a los hogares de menores ingresos para garantizar un nivel de vida digno'.]\

=== Verificación de Modelos Económicos

Los modelos económicos son representaciones simplificadas y abstractas de la realidad que aíslan las variables críticas para comprender relaciones de causa y efecto. Su validez se evalúa por dos vías:

- *Método directo:* Evalúa el realismo empírico y la consistencia lógica de las hipótesis y supuestos subyacentes del modelo.
- *Método indirecto:* Contrasta la capacidad predictiva del modelo frente a los datos y hechos observados en la realidad empírica, independientemente de qué tan estilizados sean los supuestos de partida.

=== Hipótesis de Optimización y Análisis Marginal

Un principio transversal de la microeconomía es que los agentes toman decisiones orientadas a optimizar sus objetivos:
- *Consumidores:* Buscan #hl[maximizar su nivel de satisfacción subjetiva (*utilidad*)], sujetos a su restricción presupuestaria.
- *Productores:* Buscan #hl[maximizar sus ganancias o beneficios económicos] ($pi$).

Formalmente, si los beneficios económicos de una empresa vienen dados por la diferencia entre sus ingresos totales y sus costos totales:

$ "Beneficios" =pi(q) = p dot q - C(q) $

La condición necesaria de primer orden (CPO) para hallar el nivel de producción $q$ que maximiza el beneficio implica igualar la derivada primera a cero:

$ (d pi)/(d q) = p - (d C(q))/(d q) = 0 quad arrow.double quad p = C'(q) $

#cuadro-registro(titulo: [Regla de Oro Marginalista])[
  El beneficio se maximiza allí donde el *beneficio marginal* obtenido por la última unidad vendida (el precio $p$ en competencia) iguala exactamente al *costo marginal* ($upright(C M g) = C'(q)$) en que incurre la empresa para producirla.
]

=== Teoría de la Utilidad y Utilidad Marginal Decreciente

La *utilidad* es la capacidad o aptitud subjetiva que posee un bien o servicio para satisfacer las necesidades humanas. A partir de ella se derivan dos magnitudes:

- *Utilidad Total ($U T$):* Nivel acumulado de satisfacción que experimenta un individuo al consumir una cantidad determinada de un bien.

- *Utilidad Marginal ($U M g$):* Variación o incremento en la utilidad total como consecuencia del consumo de una unidad adicional del bien:

  $ upright(U M g) = (Delta U T)/(Delta q) $

\

#cuadro-concepto(titulo: [Ley de la Utilidad Marginal Decreciente])[
  A medida que un consumidor incrementa el consumo sucesivo de un bien en un período determinado, la satisfacción adicional que le reporta cada nueva unidad tiende a ser paulatinamente menor, aun cuando la utilidad total continúe en aumento.
]

  #figure(
  image("images/utilidad.png", width: 80%),
  caption: [Ley de la Utilidad Marginal Decreciente]
) <fig:utilidad>



== La Demanda de Mercado

=== Disposición a Pagar y Beneficio Marginal

La demanda se fundamenta en la *disposición a pagar (DAP)* de los consumidores:
- La #hl[DAP representa el precio máximo que un comprador está dispuesto a desembolsar por adquirir] una unidad adicional de un bien.
- La #hl[DAP es el reflejo monetario del *beneficio marginal* (*BMg*)] que dicha unidad le proporciona.

Existe una distinción conceptual central:
- *Valor:* Es lo que el consumidor obtiene (la utilidad, satisfacción o beneficio marginal derivado del consumo).
- *Precio:* Es lo que el consumidor efectivamente paga en el mercado para adquirir el bien.

#cuadro-concepto(titulo: [Criterio de Eficiencia Asignativa])[
  Los recursos de una sociedad se asignan de manera eficiente cuando se destinan a los usos más valorados; esto sucede en el punto exacto donde el *beneficio marginal social* iguala al *costo marginal social* ($upright(B M g) = upright(C M g)$).
]

=== Ley de la Demanda y Curva de Demanda

#cuadro-concepto(titulo: [Ley de la Demanda])[
  Manteniendo constantes todos los demás factores (*ceteris paribus* / todo lo demás constante), existe una *relación inversa* o negativa entre el precio de un bien y la cantidad demandada del mismo: *a mayor precio, menor cantidad demandada* 
  $
  p arrow.t arrow.long.r Q_D arrow.b
  $
  
]

La curva de demanda presenta pendiente negativa debido a dos mecanismos complementarios:
1. *Efecto sustitución:* Al aumentar el precio de un bien, éste se encarece relativamente frente a otros bienes que satisfacen necesidades análogas, motivando al consumidor a sustituirlo.
2. *Efecto ingreso (o renta):* Al subir el precio del bien manteniendo constante el ingreso nominal, el poder adquisitivo real del consumidor se reduce, contrayendo su capacidad de compra de bienes normales.


#figure(
  image("images/demanda.png", width: 70%),
  caption: [Curva de la demanda.]
) <fig:demanda>

=== De la Demanda Individual a la Demanda de Mercado

La *demanda de mercado* expresa las intenciones agregadas de compra de todos los consumidores que participan en él. Matemáticamente y gráficamente, se construye mediante la *suma horizontal* de las demandas individuales a cada nivel de precios:

$ Q_D (p) = sum_(i=1)^N q_i (p) $

#figure(
  image("images/ejemplo.png", width: 70%),
  caption: [Construcción de la Curva de Demanda de Mercado a partir de Demandas Individuales]
) <fig:ejemplo>


#cuadro-ejemplo(titulo: [Agregación Horizontal de la Demanda])[
  Imaginemos un mercado compuesto por dos consumidores ($A$ y $B$):
  #align(center)[
    #table(
      columns: 4,
      align: center,
      [*Precio ($p$)*], [*Consumidor A ($q_A$)*], [*Consumidor B ($q_B$)*], [*Mercado ($Q_D = q_A + q_B$)*],
      [\$10], [0], [1], [1],
      [\$6], [1], [2], [3],
      [\$2], [2], [3], [5]
    )
  ]
  Para cada nivel de precio, sumamos horizontalmente las cantidades deseadas: a $\$6$, $A$ compra 1 unidad y $B$ compra 2 unidades; la demanda de mercado es 3 unidades.
]

#figure(
  image("images/offer.png", width: 40%),
  caption: [Construcción de la Curva de Demanda de Mercado a partir de demandas Individuales ]
) <fig:supply>




//#imagen("Construcción de la Curva de Demanda de Mercado a partir de Demandas Individuales")

=== Determinantes de la Demanda

La cantidad demandada de un bien $X$ depende funcionalmente de múltiples variables:

$ Q_D^X = f(P_X, P_"relacionados", Y, G, E, "Pob", "Otros") $

Bajo la cláusula *ceteris paribus*, analizamos el efecto individual de cada determinante:
/*
+ *Precio del propio bien*($P_X$): Provoca variaciones en la cantidad demandada (movimientos a lo largo de la curva).
+ *Precio de bienes relacionados ($P_Y$):*
  - *Bienes sustitutos:* Aquellos que satisfacen una necesidad semejante. Si sube el precio de la carne vacuna, los consumidores migran al pollo ($P_"carne" arrow.t arrow.long.r D_"pollo" arrow.t$, la curva se desplaza a la derecha).
  - *Bienes complementarios:* Aquellos que se consumen de manera conjunta. Si sube el precio de la nafta, disminuye el uso y la demanda de automóviles ($P_"nafta" arrow.t arrow.long.r D_"autos" arrow.b$, la curva se desplaza a la izquierda).
+ *Nivel y distribución del ingreso de los consumidores ($Y$):*
  - *Bienes normales:* Bienes cuya demanda aumenta cuando aumenta el ingreso ($Y arrow.t arrow.long.r D arrow.t$), como viajes en avión, tecnología o indumentaria de calidad.
  - *Bienes inferiores:* Bienes cuya demanda disminuye cuando aumenta el ingreso ($Y arrow.t arrow.long.r D arrow.b$), ya que los consumidores pueden acceder a alternativas de mayor categoría (por ejemplo, pasajes de autobús de larga distancia frente a vuelos o marcas genéricas).
+ *Gustos y preferencias ($G$):* Cambios culturales, modas o campañas sanitarias. Si el café de especialidad se vuelve tendencia, la curva de demanda de café de especialidad se desplaza a la derecha.
+ *Expectativas sobre el futuro ($E$):* Expectativas sobre ingresos futuros o sobre precios futuros. La expectativa de un fuerte aumento de precios el próximo mes adelanta compras e incrementa la demanda presente.
+ *Tamaño y composición de la población ("Pob"):* Un aumento en el número de habitantes desplaza la demanda agregada hacia la derecha, aun con consumo per cápita constante.
+ *Factores contextuales o estacionales ("Otros"):* El clima, la estación del año (demanda de helados en verano o abrigos en invierno) y emergencias públicas.
*/

#figure(
  image("images/demanda3.png", width: 100%)
) <fig:demanda3>

=== Excedente del Consumidor ($E C$)

El *Excedente del Consumidor* es una medida cuantitativa del bienestar económico que obtienen los compradores al participar en el mercado.

- *Definición analítica:* Es la suma, sobre todas las unidades adquiridas, de #hl[la diferencia entre lo máximo que el consumidor estaba dispuesto a pagar por cada unidad (su beneficio marginal o DAP) y el precio de mercado efectivamente pagado]:
  $ E C = sum (D A P - P^*) quad "o de forma continua" quad E C = integral_0^(Q^*) [P_D (q) - P^*] d q $

- En el caso de una curva de demanda lineal con intercepto vertical (precio de reserva máximo) $P_max$:
  $ E C = 1/2 dot Q^* dot (P_max - P^*) $

//#imagen("Representación gráfica del Excedente del Consumidor (área bajo la curva de demanda y sobre el precio)")

#figure(
  image("images/demanda2.png", width: 40%),
  caption: [Representación gráfica del Excedente del Consumidor ]
) <fig:demanda2>



== La Oferta de Mercado

=== Costo Marginal y Conducta del Productor

La oferta de una empresa describe su disposición a producir y vender a distintos niveles de precio. Para que una empresa ofrezca efectivamente un bien en el mercado se requieren tres condiciones simultáneas:
1. Disponer de la tecnología y los recursos productivos necesarios para fabricarlo.
2. Contar con la posibilidad técnica y legal de comercializarlo.
3. Obtener un *beneficio económico* positivo o nulo ($P >= upright(C M e)$ en el largo plazo; $P >= upright(C M g)$ en el margen).

La curva de oferta individual refleja directamente el *Costo Marginal ($upright(C M g)$)* de la empresa:
- *Costo:* Aquello a lo que el productor renuncia en términos de recursos y costo de oportunidad para elaborar una unidad adicional.
- *Precio:* Lo que el productor efectivamente cobra en el mercado por dicha unidad.
- El productor obtiene ganancia económica neta siempre que el precio recibido supere el costo de producir la unidad.

=== Ley de la Oferta y Curva de Oferta

#cuadro-concepto(titulo: [Ley de la Oferta])[
  Manteniendo constantes todos los demás determinantes (*ceteris paribus*), existe una relación directa o positiva entre el precio de un bien y la cantidad ofrecida del mismo: a mayor precio, mayor cantidad ofrecida ($p arrow.t arrow.long.r Q_S arrow.t$).
]

La curva de oferta posee pendiente positiva debido a que, a corto plazo, rige la *Ley de Rendimientos Marginales Decrecientes*: #hl[al incrementar la producción con factores fijos] (como la planta o la maquinaria), #hl[el costo marginal de fabricar unidades adicionales se vuelve creciente]. Por tanto, las empresas solo estarán dispuestas a expandir la producción si el precio de mercado se eleva lo suficiente como para cubrir esos mayores costos marginales.

=== De la Oferta Individual a la Oferta de Mercado

La *oferta de mercado* es la suma de las cantidades ofrecidas por todas las empresas productoras que integran la industria a cada precio. Se obtiene sumando horizontalmente las curvas de oferta individuales:

$ Q_S (p) = sum_(j=1)^M q_j (p) $

#cuadro-ejemplo(titulo: [Agregación Horizontal de la Oferta])[
  Consideremos una industria con dos empresas oferentes ($X$ e $Y$):
  #align(center)[
    #table(
      columns: 4,
      align: center,
      [*Precio ($p$)*], [*Empresa X ($q_X$)*], [*Empresa Y ($q_Y$)*], [*Mercado ($Q_S = q_X + q_Y$)*],
      [\$2], [1], [0], [1],
      [\$6], [2], [1], [3],
      [\$10], [3], [2], [5]
    )
  ]
  A un precio de $\$2$, la empresa $Y$ no cubre sus costos mínimos de arranque y ofrece 0, mientras que $X$ ofrece 1. A $\$6$, la oferta agregada de mercado es $2 + 1 = 3$.
]

#figure(
  image("images/supply.png", width: 40%),
  caption: [Construcción de la Curva de Oferta de Mercado a partir de Ofertas Individuales ]
) <fig:supply>

//#imagen("Construcción de la Curva de Oferta de Mercado a partir de Ofertas Individuales")

=== Determinantes de la Oferta

La cantidad ofrecida en el mercado depende de múltiples variables:

$ Q_S^X = g(P_X, P_"factores", "Tecnología", E, "Clima", N) $

Analizando cada factor bajo la cláusula *ceteris paribus*:

#figure(
  image("images/supply2.png", width: 100%)
) <fig:supply2>

/*
+ *Precio del bien ($P_X$):* Genera movimientos a lo largo de la curva de oferta (variación en la cantidad ofrecida).
+ *Precio de los factores productivos ($P_"factores"$):* Los salarios, materias primas, costos energéticos y tasa de interés constituyen el costo de producción. Una suba salarial incrementa el costo marginal y contrae la oferta (desplazamiento a la izquierda). Una reducción de costos abarata la producción y desplaza la oferta a la derecha.
+ *Tecnología y productividad:* Las innovaciones tecnológicas y mejoras en los métodos de producción reducen los costos unitarios para cualquier nivel de producto, desplazando la curva de oferta hacia la derecha ($S arrow.t$).
+ *Expectativas ($E$):* Si las empresas esperan que los precios caigan en el futuro (por ejemplo, debido a una próxima apertura comercial), aumentarán su oferta actual para vender sus existencias hoy.
+ *Clima y condiciones agroecológicas:* Factores determinantes en mercados agrícolas, energéticos y pesqueros. Un régimen de lluvias óptimo incrementa la oferta de trigo; una helada tardía o una granizada destruye cosechas y contrae fuertemente la oferta ($S arrow.b$).
+ *Número de oferentes ($N$):* El ingreso de nuevas firmas a la industria desplaza la oferta agregada hacia la derecha.
*/
=== Excedente del Productor ($E P$)

El *Excedente del Productor* representa la ganancia o beneficio neto que los vendedores obtienen al comerciar en el mercado.

- *Definición analítica:* Es la diferencia acumulada entre el precio de mercado efectivamente cobrado ($P^*$) y el costo marginal mínimo al que los oferentes estaban dispuestos a vender cada unidad:
  $ E P = sum (P^* - upright(C M g)) quad "o de forma continua" quad E P = integral_0^(Q^*) [P^* - P_S (q)] d q $

- Para una curva de oferta lineal con precio de reserva mínimo $P_min$:
  $ E P = 1/2 dot Q^* dot (P^* - P_min) $


#figure(
  image("images/supply3.png", width: 40%),
  caption: [Excedente del Productor ($E P$)]
) <fig:supply>

#cuadro-concepto(titulo: [Lectura Económica del Excedente del Productor])[
  El Excedente del Productor mide los ingresos obtenidos por encima del costo variable de producción. Este excedente permite a las firmas cubrir sus costos fijos y generar utilidades netas, posibilitando la reinversión en capital, tecnología y desarrollo productivo.
]

//#imagen("Representación gráfica del Excedente del Productor (área sobre la curva de oferta y bajo el precio)")


== Movimientos a lo Largo de la Curva vs. Desplazamientos

Uno de los errores conceptuales más frecuentes en el análisis de coyuntura es confundir un cambio en la cantidad demandada (u ofrecida) con un cambio en la demanda (u oferta). La regla operativa es inequívoca:

#cuadro-atencion(titulo: [Regla Fundamental de Distinción])[
  - *Cambio en la Cantidad Demandada / Ofrecida:* Se produce *única y exclusivamente* cuando varía el *precio del propio bien*, manteniendo constantes las demás variables. Gráficamente corresponde a un *movimiento a lo largo de la misma curva*.
  - *Cambio en la Demanda / Oferta:* Se produce cuando varía *cualquier variable distinta al precio del propio bien* (ingreso, tecnología, costos de insumos, precios de sustitutos, etc.). Gráficamente implica un *desplazamiento de toda la curva* (hacia la derecha si aumenta, hacia la izquierda si disminuye).
]

#imagen("Contraste: Movimiento sobre la curva vs. Desplazamiento completo de la curva")

=== Matriz de Clasificación de Casos Prácticos

#align(center)[
  #table(
    columns: (2.2fr, 1.2fr, 1.4fr, 2.2fr),
    align: (left, center, center, left),
    [*Hecho o Evento Económico*], [*Curva afectada*], [*Tipo de cambio*], [*Efecto gráfico y económico*],
    [Sube el precio de la nafta en el mercado de automóviles a combustión], [Demanda], [Desplazamiento], [Desplazamiento de $D$ hacia la izquierda (bienes complementarios).],
    [Una granizada arruina el 50% de las uvas en Mendoza], [Oferta], [Desplazamiento], [Desplazamiento de $S$ hacia la izquierda (destrucción de factor productivo).],
    [Baja el precio de la carne vacuna en el mercado de la carne vacuna], [Demanda y Oferta], [Movimiento], [Movimiento descendente a lo largo de la curva de $D$ (mayor cantidad demandada).],
    [Un nuevo software reduce los costos de diseño de circuitos integrados], [Oferta], [Desplazamiento], [Desplazamiento de $S$ hacia la derecha (mejora tecnológica generalizada).]
  )
]

---

== Equilibrio de Mercado y Dinámica de Corrección

=== Definición del Equilibrio

El *equilibrio de mercado* es aquella situación en la que coinciden plenamente los planes y deseos de los compradores y de los vendedores. Ocurre a un precio $P^*$ para el cual la cantidad demandada iguala exactamente a la cantidad ofrecida:

$ Q_D (P^*) = Q_S (P^*) = Q^* $

A este precio de equilibrio el mercado "se vacía": no quedan compradores insatisfechos dispuestos a pagar $P^*$ sin conseguir el producto, ni vendedores con mercadería no comercializada al precio vigente.

#imagen("Equilibrio de Mercado en la intersección de Demanda y Oferta")

=== Situaciones Fuera del Equilibrio y Mecanismos de Ajuste

Cuando el precio vigente difiere del de equilibrio, el propio mercado genera fuerzas endógenas que empujan la cotización hacia $P^*$:

#cuadro-concepto(titulo: [Ajuste ante Exceso de Oferta (Excedente)])[
  Si el precio se ubica por encima del equilibrio ($P > P^*$):
  - $Q_S > Q_D$: Se genera un *exceso de oferta* o excedente de mercadería.
  - Los inventarios no vendidos se acumulan en los depósitos de los productores.
  - Para deshacerse de los excedentes y recuperar liquidez, los productores compiten bajando los precios ($P arrow.b$).
  - La baja del precio estimula a los consumidores a demandar más unidades (movimiento a lo largo de $D$) y desincentiva la producción marginal de las firmas menos eficientes (movimiento a lo largo de $S$), restaurando el equilibrio en $(P^*, Q^*)$.
]

#cuadro-concepto(titulo: [Ajuste ante Exceso de Demanda (Escasez)])[
  Si el precio se ubica por debajo del equilibrio ($P < P^*$):
  - $Q_D > Q_S$: Se genera un *exceso de demanda* o escasez del bien.
  - Hay filas de espera y compradores dispuestos a pagar más que no logran abastecerse.
  - La puja competitiva entre los compradores insatisfechos presiona el precio al alza ($P arrow.t$).
  - La suba de precios raciona la demanda (algunos compradores desisten) y estimula a las empresas a incrementar la producción marginal, cerrando la brecha de escasez hasta retornar a $(P^*, Q^*)$.
]

#imagen("Dinámica de ajuste: Exceso de Oferta vs. Exceso de Demanda")

=== Las Dos Funciones Económicas del Precio

En una economía descentralizada, los precios libres cumplen dos roles coordinadores cruciales:

1. *Función de Racionamiento:* Dado que los bienes son intrínsecamente escasos frente a las necesidades humanas, el precio de equilibrio raciona la oferta existente dirigiéndola hacia aquellos consumidores que le atribuyen un mayor valor económico (aquellos cuya disposición a pagar es igual o superior al precio de equilibrio).
2. *Función de Asignación y Señalización de Recursos:* Los precios operan como señales de rentabilidad relativa:
  - En mercados con exceso de demanda permanente o creciente, los altos precios permiten márgenes de beneficio extraordinarios, atrayendo capitales, mano de obra y nuevas empresas.
  - En mercados con exceso de oferta o demanda en declive, la caída de precios induce pérdidas contables, obligando a reorientar los factores productivos hacia sectores más productivos y valorados por la sociedad.

=== Eficiencia Social del Equilibrio Competitivo

El *Excedente Total ($E T$)* o Bienestar Social es la suma del bienestar obtenido por consumidores y productores:

$ E T = E C + E P $

En el equilibrio de competencia perfecta libre de externalidades, el Excedente Total alcanza su nivel máximo posible:
- Para toda unidad producida hasta $Q^*$, el beneficio marginal que le otorga a la sociedad supera su costo marginal de producción ($upright(B M g) >= upright(C M g)$).
- Cualquier otra combinación de precio y cantidad que mejore la condición de algún agente necesariamente empeorará la de otro, satisfaciendo el criterio de *eficiencia de Pareto*.

---

== Análisis de Shocks de Oferta y Demanda

Un shock es un evento exógeno que altera alguno de los determinantes de las curvas de mercado, desplazándolas de su posición original.

=== Shocks Simples (Desplazamiento de una Sola Curva)

Cuando solo una de las dos curvas se desplaza y la otra permanece invariante, la dirección de cambio tanto del precio como de la cantidad de equilibrio queda unívocamente determinada:

#align(center)[
  #table(
    columns: (1.8fr, 1fr, 1fr, 2.5fr),
    align: (left, center, center, left),
    [*Tipo de Shock*], [*Precio ($P^*$)*], [*Cantidad ($Q^*$)*], [*Ejemplo representativo*],
    [Aumento de Demanda ($D arrow.t$)], [$arrow.t$ Sube], [$arrow.t$ Sube], [Alerta meteorológica de huracán dispara la demanda de generadores eléctricos.],
    [Caída de Demanda ($D arrow.b$)], [$arrow.b$ Baja], [$arrow.b$ Baja], [Brote de la enfermedad de la 'vaca loca' derrumba la demanda de carne vacuna.],
    [Aumento de Oferta ($S arrow.t$)], [$arrow.b$ Baja], [$arrow.t$ Sube], [Descubrimiento de técnica de fractura hidráulica (fracking) abarata la extracción de gas.],
    [Caída de Oferta ($S arrow.b$)], [$arrow.t$ Sube], [$arrow.b$ Baja], [Intensa granizada destruye viñedos y reduce la producción de uvas.]
  )
]

#imagen("Gráficos de los 4 Shocks Simples en el Mercado")

=== Shocks Simultáneos (Desplazamiento de Ambas Curvas)

Cuando un suceso o conjunto de sucesos afecta al mismo tiempo la oferta y la demanda, *una de las dos variables macroscópicas ($P$ o $Q$) siempre queda indeterminada a nivel cualitativo*, requiriendo conocer las magnitudes relativas de los desplazamientos y las pendientes de las curvas para resolverla.

#align(center)[
  #table(
    columns: (2fr, 1.2fr, 1.4fr, 2.8fr),
    align: (left, center, center, left),
    [*Combinación de Shocks*], [*Cantidad ($Q^*$)*], [*Precio ($P^*$)*], [*Explicación del Mecanismo*],
    [$D arrow.t$ y $S arrow.t$], [*$arrow.t$ Sube*], [Indeterminado], [Ambos shocks empujan la cantidad al alza. Pero $D arrow.t$ empuja el precio hacia arriba y $S arrow.t$ lo empuja hacia abajo. El precio final depende de cuál curva se desplace con mayor fuerza.],
    [$D arrow.t$ y $S arrow.b$], [Indeterminada], [*$arrow.t$ Sube*], [Ambos shocks presionan el precio al alza. Pero $D arrow.t$ busca expandir la cantidad y $S arrow.b$ busca contraerla. La cantidad final dependerá de la magnitud relativa.],
    [$D arrow.b$ y $S arrow.t$], [Indeterminada], [*$arrow.b$ Baja*], [Ambos shocks presionan el precio a la baja. $D arrow.b$ reduce la cantidad mientras que $S arrow.t$ la incrementa. Cantidad indeterminada.],
    [$D arrow.b$ y $S arrow.b$], [*$arrow.b$ Baja*], [Indeterminado], [Ambos shocks contraen la cantidad de equilibrio. Pero $D arrow.b$ empuja el precio hacia abajo y $S arrow.b$ lo empuja hacia arriba. Precio indeterminado.]
  )
]

#cuadro-atencion(titulo: [¿Por qué se produce la indeterminación?])[
  Cada shock individual ejerce un vector de fuerza sobre el precio y sobre la cantidad. Cuando dos fuerzas operan en la misma dirección, el resultado conjunto es unívoco y cierto. Cuando dos fuerzas tiran en direcciones opuestas sobre una misma variable, el signo neto resultante dependerá estrictamente de:
  1. *La magnitud del desplazamiento:* Cuál de las dos curvas sufrió una traslación horizontal mayor.
  2. *Las pendientes relativas de las curvas:* La elasticidad o sensibilidad precio de la oferta y de la demanda.
]

#imagen("Representación de Shocks Simultáneos y resolución según magnitudes relativas")

---

== Caso de Discusión en Coyuntura: El Terremoto de La Guaira (2026)

Para comprender cómo se aplican estas herramientas al análisis económico real, se analiza el impacto del terremoto del 24 de junio de 2026 en el centro-norte de Venezuela (epicentro entre Yumare y Montalbán, con fuerte impacto en el estado La Guaira y Caracas).

=== Los Dos Shocks Concurrentes

El desastre configuró un escenario clásico de shocks simultáneos sobre el mercado inmobiliario y residencial:

1. *Shock de Oferta ($S arrow.b$):*
  - Destrucción física de viviendas e infraestructura habitable: NASA reportó cerca de 59.000 edificios con probabilidad de colapso o daño superior al 75%.
  - Más de 18.000 personas quedaron sin techo y los daños materiales directos superaron los US\$ 19.600 millones según el Banco Mundial.
  - La capacidad constructiva local colapsó y la oferta neta de viviendas se contrajo drásticamente hacia la izquierda ($S arrow.r S'$).
2. *Shock de Demanda ($D arrow.t$):*
  - Como respuesta de emergencia, el gobierno implementó el programa de crédito subsidiado *"Venezuela Renace"*: subsidio estatal directo del 80% para inmuebles de hasta US\$ 70.000 y del 50% entre US\$ 70.001 y US\$ 100.000, con saldo financiado a 25 años al 5% de interés anual con un año de gracia.
  - Esta inyección de financiamiento artificial abarató el acceso financiero e impulsó un salto en la demanda de viviendas ($D arrow.r D'$).

#imagen("Impacto Teórico de Shocks Simultáneos en el Mercado de Vivienda de La Guaira")

=== La Predicción del Modelo Teórico vs. La Realidad Empírica

De acuerdo con el modelo teórico de shocks simultáneos ($S arrow.b$ y $D arrow.t$):
- *Precio:* Debería experimentar un alza inequívoca e inmediata ($P^* arrow.t$).
- *Cantidad:* Quedaría indeterminada, en función del tamaño del subsidio frente al volumen de destrucción física.

Sin embargo, relevamientos de campo y reportes periodísticos evidenciaron una aparente anomalía: en dólares por metro cuadrado, los departamentos usados en el mercado secundario de La Guaira llegaron a cotizarse a precios menores que antes del terremoto.

#cuadro-registro(titulo: [Fricciones que explican la brecha entre Teoría y Realidad])[
  ¿Por qué no se cumplió la predicción simple de suba generalizada de precios?
  - *Segmentación del mercado:* El plan "Venezuela Renace" focalizó los subsidios en viviendas económicas de hasta US\$ 70.000, excluyendo al mercado secundario medio/alto.
  - *Riesgo y costos ocultos:* Las viviendas del mercado secundario requerían inspecciones y costosas reparaciones de daño estructural que el crédito no financiaba, castigando su valor de tasación.
  - *Fricciones de financiamiento y riesgo país:* La situación de default de la deuda soberana y la debilidad institucional demoraron la acreditación efectiva de los créditos prometidos, postergando la expansión real de la demanda.
]

Este caso enseña una lección metodológica crucial: *el modelo de oferta y demanda identifica correctamente las fuerzas subyacentes, pero el analista de coyuntura debe calibrar los supuestos incorporando la microestructura institucional, los costos de transacción y las fallas de mercado.*

---

== Ejercicio Práctico Integral Resuelto: Mercado de Vacantes de un Gimnasio

Un ejemplo clásico desarrollado en clase permite consolidar todos los conceptos analíticos, algebraicos y de bienestar.

=== Enunciado Base

Las funciones de oferta y demanda mensuales de vacantes en una cadena de gimnasios vienen dadas por:

$ Q_S = 10 P - 300 $
$ Q_D = 600 - 10 P $

donde $P$ es la cuota mensual expresada en dólares.

=== Parte A: Diagnóstico de Desequilibrio y Equilibrio Inicial

*Preguntas:*
1. Si la cuota actual es de $\$50$ mensuales, ¿está el mercado en equilibrio?
2. ¿Qué exceso existe y de qué magnitud? ¿Qué comportamiento se espera en el precio?
3. Calcule analíticamente el precio y la cantidad de equilibrio iniciales ($P_1^*, Q_1^*$).

*Resolución:*

Evaluamos la cantidad ofrecida y demandada a $P = 50$:
$ Q_S (50) = 10(50) - 300 = 500 - 300 = 200 $
$ Q_D (50) = 600 - 10(50) = 600 - 500 = 100 $

Dado que $Q_S (50) > Q_D (50)$, el mercado *no está en equilibrio*:
$ "Exceso de Oferta (Excedente)" = Q_S - Q_D = 200 - 100 = 100 "vacantes" $

#cuadro-ejemplo(titulo: [Mecanismo de Corrección en Parte A])[
  Al sobrar 100 plazas sin ocupar, los directivos del gimnasio no logran llenar sus cupos y reducen el precio mensual para captar clientes. A medida que el precio baja, la demanda se reactiva y se desisten ofertas marginales hasta vaciar el mercado.
]

Para hallar el equilibrio, igualamos $Q_D = Q_S$:
$ 600 - 10 P = 10 P - 300 $
$ 900 = 20 P arrow.double P_1^* = 900 / 20 = 45 "dólares" $

Sustituimos $P_1^* = 45$ en cualquiera de las ecuaciones para hallar $Q_1^*$:
$ Q_1^* = 600 - 10(45) = 600 - 450 = 150 "vacantes" $

El equilibrio inicial se sitúa en $P_1^* = \$45$ y $Q_1^* = 150$ vacantes.

=== Parte B: Shock de Demanda por Bien Sustituto

*Escenario:*
El municipio inaugura un centro polideportivo público con pileta climatizada y sala de musculación gratuita. Como resultado, los consumidores demandan 200 vacantes menos al gimnasio privado para todos los niveles de precio.

*Preguntas:*
1. Deduzca la nueva ecuación de demanda ($Q_D'$).
2. ¿Se trata de un cambio en la demanda o en la cantidad demandada? ¿Qué ocurrirá con $P^*$ y $Q^*$?
3. Calcule el nuevo equilibrio ($P_2^*, Q_2^*$).

*Resolución:*

La apertura del polideportivo público representa la aparición de un bien sustituto gratuito. Al reducirse la demanda en 200 unidades a todo precio:
$ Q_D' = Q_D - 200 = (600 - 10 P) - 200 = 400 - 10 P $

- *Clasificación del cambio:* Se trata de un *cambio en la demanda* (un desplazamiento hacia la izquierda de la curva de demanda de $D$ a $D'$).
- Sobre la curva de oferta se produce un *movimiento a lo largo de ella*.
- Al ser un shock simple de demanda negativa ($D arrow.b$), se anticipa unívocamente una *caída del precio* ($P^* arrow.b$) y una *caída de la cantidad* ($Q^* arrow.b$).

Igualamos la nueva demanda con la curva de oferta (la cual no cambió):
$ 400 - 10 P = 10 P - 300 $
$ 700 = 20 P arrow.double P_2^* = 700 / 20 = 35 "dólares" $

Reemplazamos en la nueva función de demanda:
$ Q_2^* = 400 - 10(35) = 400 - 350 = 50 "vacantes" $

El nuevo equilibrio queda determinado en $P_2^* = \$35$ y $Q_2^* = 50$ vacantes.

#imagen("Ajuste gráfico del mercado del gimnasio ante el shock de demanda")

=== Parte C: Cálculo de Excedentes y Pérdida de Bienestar Social

*Pasos a seguir:*
1. Expresar las curvas directas en sus formas inversas ($P$ en función de $Q$).
2. Determinar los precios máximos de reserva y mínimos de arranque.
3. Calcular el Excedente del Consumidor ($E C$), el Excedente del Productor ($E P$) y el Excedente Total ($E T$) antes y después del shock.

*1. Despeje de Curvas Inversas:*

- *Demanda Inicial:*
  $ Q_D = 600 - 10 P arrow.double 10 P = 600 - Q arrow.double P_D (Q) = 60 - 0.1 Q $
  Precio de reserva máximo ($Q = 0$): $P_max^1 = \$60$.

- *Nueva Demanda:*
  $ Q_D' = 400 - 10 P arrow.double 10 P = 400 - Q arrow.double P_D' (Q) = 40 - 0.1 Q $
  Nuevo precio de reserva máximo ($Q = 0$): $P_max^2 = \$40$.

- *Oferta:*
  $ Q_S = 10 P - 300 arrow.double 10 P = Q + 300 arrow.double P_S (Q) = 30 + 0.1 Q $
  Precio mínimo de arranque de oferta ($Q = 0$): $P_min = \$30$.

*2. Cálculo de Excedentes:*

Recordemos la fórmula geométrica triangular para funciones lineales:
$ E C = 1/2 dot Q^* dot (P_max - P^*) $
$ E P = 1/2 dot Q^* dot (P^* - P_min) $

- *Situación Inicial (Antes del Shock: $P_1^* = 45$, $Q_1^* = 150$):*
  $ E C_1 = 1/2 dot 150 dot (60 - 45) = 1/2 dot 150 dot 15 = 1.125 "USD/mes" $
  $ E P_1 = 1/2 dot 150 dot (45 - 30) = 1/2 dot 150 dot 15 = 1.125 "USD/mes" $
  $ E T_1 = E C_1 + E P_1 = 1.125 + 1.125 = 2.250 "USD/mes" $

- *Situación Final (Después del Shock: $P_2^* = 35$, $Q_2^* = 50$):*
  $ E C_2 = 1/2 dot 50 dot (40 - 35) = 1/2 dot 50 dot 5 = 125 "USD/mes" $
  $ E P_2 = 1/2 dot 50 dot (35 - 30) = 1/2 dot 50 dot 5 = 125 "USD/mes" $
  $ E T_2 = E C_2 + E P_2 = 125 + 125 = 250 "USD/mes" $

#align(center)[
  #table(
    columns: (2.2fr, 1.8fr, 1.8fr, 1.8fr),
    align: (left, center, center, center),
    [*Variable Económica*], [*Situación Inicial*], [*Situación Posterior*], [*Variación ($Delta$)*],
    [Precio de equilibrio ($P^*$)], [\$45], [\$35], [-\$10 (-22.2%)],
    [Cantidad de vacantes ($Q^*$)], [150], [50], [-100 (-66.7%)],
    [Excedente del Consumidor ($E C$)], [US\$ 1.125], [US\$ 125], [-US\$ 1.000],
    [Excedente del Productor ($E P$)], [US\$ 1.125], [US\$ 125], [-US\$ 1.000],
    [*Excedente Total ($E T$)*], [*US\$ 2.250*], [*US\$ 250*], [*-US\$ 2.000*]
  )
]

#cuadro-concepto(titulo: [Conclusión Económica de Bienestar])[
  El shock de demanda adverso contrajo el Excedente Total en este mercado en US\$ 2.000 mensuales. La pérdida se distribuyó de manera perfectamente simétrica entre ambos lados del mercado (-US\$ 1.000 para los consumidores y -US\$ 1.000 para el gimnasio), debido a que las pendientes absolutas de las curvas de oferta y demanda coinciden ($|m_D| = m_S = 0.1$).
]

---

== Síntesis Conceptual y Glosario Rápido

#align(center)[
  #table(
    columns: (1.5fr, 3.5fr),
    align: (left, left),
    [*Concepto*], [*Definición Sintética y Regla Mnemotécnica*],
    [Disposición a Pagar], [Precio máximo que un comprador pagaría por una unidad adicional. Mide el beneficio marginal subjetivo que obtiene.],
    [Costo Marginal], [Costo de oportunidad de producir una unidad adicional. Marca el precio mínimo al que el productor está dispuesto a vender.],
    [Ley de Demanda], [Relación inversa entre precio y cantidad demandada ($P arrow.t arrow.long.r Q_D arrow.b$), fundamentada en la utilidad marginal decreciente y los efectos sustitución e ingreso.],
    [Ley de Oferta], [Relación directa entre precio y cantidad ofrecida ($P arrow.t arrow.long.r Q_S arrow.t$), fundamentada en el costo marginal creciente por rendimientos decrecientes.],
    [Movimiento vs Desplazamiento], [Si varía el precio del propio bien $arrow.long.r$ *movimiento sobre la curva*. Si varía cualquier otro factor determinante $arrow.long.r$ *desplazamiento de toda la curva*.],
    [Exceso de Oferta], [$P > P^* arrow.long.r Q_S > Q_D$. Provoca acumulación de existencias y presión competitiva a la baja en el precio.],
    [Exceso de Demanda], [$P < P^* arrow.long.r Q_D > Q_S$. Provoca escasez y puja competitiva al alza en el precio.],
    [Funciones del Precio], [1. Raciona los bienes escasos a los compradores con mayor valoración. 2. Asigna y guía los factores productivos hacia los sectores de rentabilidad creciente.],
    [Excedente Total], [$E T = E C + E P$. Es máximo en el equilibrio competitivo. Mide la ganancia neta social generada por la existencia del mercado.],
    [Shocks Simultáneos], [Cuando operan dos shocks a la vez, una variable ($P$ o $Q$) se define unívocamente y la otra queda cualitativamente indeterminada hasta comparar magnitudes relativas.]
  )
]


= Oferta, Demanda y Mecanismo de Mercado

== Fundamentos Metodológicos de la Microeconomía

La *microeconomía* es la rama de la ciencia económica que estudia el comportamiento y la toma de decisiones de los agentes económicos individuales —principalmente los consumidores (familias) y las empresas (unidades productivas)—, así como la forma en que interactúan en los diferentes mercados para determinar la asignación de recursos y la formación de precios.

#cuadro-concepto(titulo: [El Flujo Circular de la Renta])[
  La economía puede conceptualizarse a través de dos grandes tipos de agentes y dos mercados interconectados:
  - *Unidades de consumo (familias):* Propietarias de los factores productivos (tierra, trabajo y capital). Ofrecen estos factores en el *mercado de factores* a cambio de ingresos (salarios, rentas, beneficios), los cuales destinan al gasto en el *mercado de bienes y servicios*.
  - *Unidades de producción (empresas):* Contratan y demandan factores en el mercado de factores para producir bienes y servicios, que luego ofrecen en el mercado de bienes y servicios para obtener ingresos por ventas.
]

#imagen("Diagrama del Flujo Circular de la Renta entre Familias y Empresas")

=== Economía Positiva vs. Economía Normativa

En el análisis económico resulta esencial distinguir entre dos enfoques complementarios:

- *Economía Positiva:* Se orienta a describir, explicar y predecir los fenómenos económicos de manera objetiva ("lo que es, ha sido o será"). No formula juicios de valor éticos ni morales.
  - _Ejemplo:_ "Si se impone un precio máximo por debajo del equilibrio, se generará escasez del bien".
- *Economía Normativa:* Formula prescripciones, juicios de valor y propuestas sobre cómo debería organizarse la actividad económica ("lo que debería ser").
  - _Ejemplo:_ "El Estado debería subsidiar la tarifa eléctrica a los hogares de menores ingresos para garantizar un nivel de vida digno".

=== Verificación de Modelos Económicos

Los modelos económicos son representaciones simplificadas y abstractas de la realidad que aíslan las variables críticas para comprender relaciones de causa y efecto. Su validez se evalúa por dos vías:

- *Método directo:* Evalúa el realismo empírico y la consistencia lógica de las hipótesis y supuestos subyacentes del modelo.
- *Método indirecto:* Contrasta la capacidad predictiva del modelo frente a los datos y hechos observados en la realidad empírica, independientemente de qué tan estilizados sean los supuestos de partida.

=== Hipótesis de Optimización y Análisis Marginal

Un principio transversal de la microeconomía es que los agentes toman decisiones orientadas a optimizar sus objetivos:
- *Consumidores:* Buscan maximizar su nivel de satisfacción subjetiva (*utilidad*), sujetos a su restricción presupuestaria.
- *Productores:* Buscan maximizar sus ganancias o beneficios económicos ($pi$).

Formalmente, si los beneficios económicos de una empresa vienen dados por la diferencia entre sus ingresos totales y sus costos totales:

$ pi(q) = p dot q - C(q) $

La condición necesaria de primer orden (CPO) para hallar el nivel de producción $q$ que maximiza el beneficio implica igualar la derivada primera a cero:

$ (d pi)/(d q) = p - (d C(q))/(d q) = p - upright(C M g)(q) = 0 quad arrow.double quad p = upright(C M g)(q) $

#cuadro-registro(titulo: [Regla de Oro Marginalista])[
  El beneficio se maximiza allí donde el *beneficio marginal* obtenido por la última unidad vendida (el precio $p$ en competencia) iguala exactamente al *costo marginal* ($upright(C M g)$) en que incurre la empresa para producirla.
]

=== Teoría de la Utilidad y Utilidad Marginal Decreciente

La *utilidad* es la capacidad o aptitud subjetiva que posee un bien o servicio para satisfacer las necesidades humanas. A partir de ella se derivan dos magnitudes:
- *Utilidad Total ($U T$):* Nivel acumulado de satisfacción que experimenta un individuo al consumir una cantidad determinada de un bien.
- *Utilidad Marginal ($U M g$):* Variación o incremento en la utilidad total como consecuencia del consumo de una unidad adicional del bien:
  $ upright(U M g) = (Delta U T)/(Delta q) $

#cuadro-concepto(titulo: [Ley de la Utilidad Marginal Decreciente])[
  A medida que un consumidor incrementa el consumo sucesivo de un bien en un período determinado, la satisfacción adicional que le reporta cada nueva unidad tiende a ser paulatinamente menor, aun cuando la utilidad total continúe en aumento.
]

---

== La Demanda de Mercado

=== Disposición a Pagar y Beneficio Marginal

La demanda se fundamenta en la *disposición a pagar (DAP)* de los consumidores:
- La DAP representa el precio máximo que un comprador está dispuesto a desembolsar por adquirir una unidad adicional de un bien.
- La DAP es el reflejo monetario del *beneficio marginal ($B M g$)* que dicha unidad le proporciona.

Existe una distinción conceptual central:
- *Valor:* Es lo que el consumidor obtiene (la utilidad, satisfacción o beneficio marginal derivado del consumo).
- *Precio:* Es lo que el consumidor efectivamente paga en el mercado para adquirir el bien.

#cuadro-concepto(titulo: [Criterio de Eficiencia Asignativa])[
  Los recursos de una sociedad se asignan de manera eficiente cuando se destinan a los usos más valorados; esto sucede en el punto exacto donde el *beneficio marginal social* iguala al *costo marginal social* ($upright(B M g) = upright(C M g)$).
]

=== Ley de la Demanda y Curva de Demanda

#cuadro-concepto(titulo: [Ley de la Demanda])[
  Manteniendo constantes todos los demás factores (*ceteris paribus*), existe una relación inversa o negativa entre el precio de un bien y la cantidad demandada del mismo: a mayor precio, menor cantidad demandada ($p arrow.t arrow.long.r Q_D arrow.b$).
]

La curva de demanda presenta pendiente negativa debido a dos mecanismos complementarios:
1. *Efecto sustitución:* Al aumentar el precio de un bien, éste se encarece relativamente frente a otros bienes que satisfacen necesidades análogas, motivando al consumidor a sustituirlo.
2. *Efecto ingreso (o renta):* Al subir el precio del bien manteniendo constante el ingreso nominal, el poder adquisitivo real del consumidor se reduce, contrayendo su capacidad de compra de bienes normales.

=== De la Demanda Individual a la Demanda de Mercado

La *demanda de mercado* expresa las intenciones agregadas de compra de todos los consumidores que participan en él. Matemáticamente y gráficamente, se construye mediante la *suma horizontal* de las demandas individuales a cada nivel de precios:

$ Q_D (p) = sum_(i=1)^N q_i (p) $

#cuadro-ejemplo(titulo: [Agregación Horizontal de la Demanda])[
  Imaginemos un mercado compuesto por dos consumidores ($A$ y $B$):
  #align(center)[
    #table(
      columns: 4,
      align: center,
      [*Precio ($p$)*], [*Consumidor A ($q_A$)*], [*Consumidor B ($q_B$)*], [*Mercado ($Q_D = q_A + q_B$)*],
      [\$10], [0], [1], [1],
      [\$6], [1], [2], [3],
      [\$2], [2], [3], [5]
    )
  ]
  Para cada nivel de precio, sumamos horizontalmente las cantidades deseadas: a $\$6$, $A$ compra 1 unidad y $B$ compra 2 unidades; la demanda de mercado es 3 unidades.
]

#imagen("Construcción de la Curva de Demanda de Mercado a partir de Demandas Individuales")

=== Determinantes de la Demanda

La cantidad demandada de un bien $X$ depende funcionalmente de múltiples variables:

$ Q_D^X = f(P_X, P_"relacionados", Y, G, E, "Pob", "Otros") $

Bajo la cláusula *ceteris paribus*, analizamos el efecto individual de cada determinante:

+ *Precio del propio bien ($P_X$):* Provoca variaciones en la cantidad demandada (movimientos a lo largo de la curva).
+ *Precio de bienes relacionados ($P_Y$):*
  - *Bienes sustitutos:* Aquellos que satisfacen una necesidad semejante. Si sube el precio de la carne vacuna, los consumidores migran al pollo ($P_"carne" arrow.t arrow.long.r D_"pollo" arrow.t$, la curva se desplaza a la derecha).
  - *Bienes complementarios:* Aquellos que se consumen de manera conjunta. Si sube el precio de la nafta, disminuye el uso y la demanda de automóviles ($P_"nafta" arrow.t arrow.long.r D_"autos" arrow.b$, la curva se desplaza a la izquierda).
+ *Nivel y distribución del ingreso de los consumidores ($Y$):*
  - *Bienes normales:* Bienes cuya demanda aumenta cuando aumenta el ingreso ($Y arrow.t arrow.long.r D arrow.t$), como viajes en avión, tecnología o indumentaria de calidad.
  - *Bienes inferiores:* Bienes cuya demanda disminuye cuando aumenta el ingreso ($Y arrow.t arrow.long.r D arrow.b$), ya que los consumidores pueden acceder a alternativas de mayor categoría (por ejemplo, pasajes de autobús de larga distancia frente a vuelos o marcas genéricas).
+ *Gustos y preferencias ($G$):* Cambios culturales, modas o campañas sanitarias. Si el café de especialidad se vuelve tendencia, la curva de demanda de café de especialidad se desplaza a la derecha.
+ *Expectativas sobre el futuro ($E$):* Expectativas sobre ingresos futuros o sobre precios futuros. La expectativa de un fuerte aumento de precios el próximo mes adelanta compras e incrementa la demanda presente.
+ *Tamaño y composición de la población ("Pob"):* Un aumento en el número de habitantes desplaza la demanda agregada hacia la derecha, aun con consumo per cápita constante.
+ *Factores contextuales o estacionales ("Otros"):* El clima, la estación del año (demanda de helados en verano o abrigos en invierno) y emergencias públicas.

=== Excedente del Consumidor ($E C$)

El *Excedente del Consumidor* es una medida cuantitativa del bienestar económico que obtienen los compradores al participar en el mercado.

- *Definición analítica:* Es la suma, sobre todas las unidades adquiridas, de la diferencia entre lo máximo que el consumidor estaba dispuesto a pagar por cada unidad (su beneficio marginal o DAP) y el precio de mercado efectivamente pagado:
  $ E C = sum (D A P - P^*) quad "o de forma continua" quad E C = integral_0^(Q^*) [P_D (q) - P^*] d q $
- *Definición geométrica:* Es el área situada *por debajo de la curva de demanda* y *por encima del precio de equilibrio* del mercado ($P^*$), delimitada entre $q = 0$ y $q = Q^*$.
- En el caso de una curva de demanda lineal con intercepto vertical (precio de reserva máximo) $P_max$:
  $ E C = 1/2 dot Q^* dot (P_max - P^*) $

#imagen("Representación gráfica del Excedente del Consumidor (área bajo la curva de demanda y sobre el precio)")

---

== La Oferta de Mercado

=== Costo Marginal y Conducta del Productor

La oferta de una empresa describe su disposición a producir y vender a distintos niveles de precio. Para que una empresa ofrezca efectivamente un bien en el mercado se requieren tres condiciones simultáneas:
1. Disponer de la tecnología y los recursos productivos necesarios para fabricarlo.
2. Contar con la posibilidad técnica y legal de comercializarlo.
3. Obtener un *beneficio económico* positivo o nulo ($P >= upright(C M e)$ en el largo plazo; $P >= upright(C M g)$ en el margen).

La curva de oferta individual refleja directamente el *Costo Marginal ($upright(C M g)$)* de la empresa:
- *Costo:* Aquello a lo que el productor renuncia en términos de recursos y costo de oportunidad para elaborar una unidad adicional.
- *Precio:* Lo que el productor efectivamente cobra en el mercado por dicha unidad.
- El productor obtiene ganancia económica neta siempre que el precio recibido supere el costo de producir la unidad.

=== Ley de la Oferta y Curva de Oferta

#cuadro-concepto(titulo: [Ley de la Oferta])[
  Manteniendo constantes todos los demás determinantes (*ceteris paribus*), existe una relación directa o positiva entre el precio de un bien y la cantidad ofrecida del mismo: a mayor precio, mayor cantidad ofrecida ($p arrow.t arrow.long.r Q_S arrow.t$).
]

La curva de oferta posee pendiente positiva debido a que, a corto plazo, rige la *Ley de Rendimientos Marginales Decrecientes*: al incrementar la producción con factores fijos (como la planta o la maquinaria), el costo marginal de fabricar unidades adicionales se vuelve creciente. Por tanto, las empresas solo estarán dispuestas a expandir la producción si el precio de mercado se eleva lo suficiente como para cubrir esos mayores costos marginales.

=== De la Oferta Individual a la Oferta de Mercado

La *oferta de mercado* es la suma de las cantidades ofrecidas por todas las empresas productoras que integran la industria a cada precio. Se obtiene sumando horizontalmente las curvas de oferta individuales:

$ Q_S (p) = sum_(j=1)^M q_j (p) $

#cuadro-ejemplo(titulo: [Agregación Horizontal de la Oferta])[
  Consideremos una industria con dos empresas oferentes ($X$ e $Y$):
  #align(center)[
    #table(
      columns: 4,
      align: center,
      [*Precio ($p$)*], [*Empresa X ($q_X$)*], [*Empresa Y ($q_Y$)*], [*Mercado ($Q_S = q_X + q_Y$)*],
      [\$2], [1], [0], [1],
      [\$6], [2], [1], [3],
      [\$10], [3], [2], [5]
    )
  ]
  A un precio de $\$2$, la empresa $Y$ no cubre sus costos mínimos de arranque y ofrece 0, mientras que $X$ ofrece 1. A $\$6$, la oferta agregada de mercado es $2 + 1 = 3$.
]

#imagen("Construcción de la Curva de Oferta de Mercado a partir de Ofertas Individuales")

=== Determinantes de la Oferta

La cantidad ofrecida en el mercado depende de múltiples variables:

$ Q_S^X = g(P_X, P_"factores", "Tecnología", E, "Clima", N) $

Analizando cada factor bajo la cláusula *ceteris paribus*:

+ *Precio del bien ($P_X$):* Genera movimientos a lo largo de la curva de oferta (variación en la cantidad ofrecida).
+ *Precio de los factores productivos ($P_"factores"$):* Los salarios, materias primas, costos energéticos y tasa de interés constituyen el costo de producción. Una suba salarial incrementa el costo marginal y contrae la oferta (desplazamiento a la izquierda). Una reducción de costos abarata la producción y desplaza la oferta a la derecha.
+ *Tecnología y productividad:* Las innovaciones tecnológicas y mejoras en los métodos de producción reducen los costos unitarios para cualquier nivel de producto, desplazando la curva de oferta hacia la derecha ($S arrow.t$).
+ *Expectativas ($E$):* Si las empresas esperan que los precios caigan en el futuro (por ejemplo, debido a una próxima apertura comercial), aumentarán su oferta actual para vender sus existencias hoy.
+ *Clima y condiciones agroecológicas:* Factores determinantes en mercados agrícolas, energéticos y pesqueros. Un régimen de lluvias óptimo incrementa la oferta de trigo; una helada tardía o una granizada destruye cosechas y contrae fuertemente la oferta ($S arrow.b$).
+ *Número de oferentes ($N$):* El ingreso de nuevas firmas a la industria desplaza la oferta agregada hacia la derecha.

=== Excedente del Productor ($E P$)

El *Excedente del Productor* representa la ganancia o beneficio neto que los vendedores obtienen al comerciar en el mercado.

- *Definición analítica:* Es la diferencia acumulada entre el precio de mercado efectivamente cobrado ($P^*$) y el costo marginal mínimo al que los oferentes estaban dispuestos a vender cada unidad:
  $ E P = sum (P^* - upright(C M g)) quad "o de forma continua" quad E P = integral_0^(Q^*) [P^* - P_S (q)] d q $
- *Definición geométrica:* Es el área situada *por encima de la curva de oferta* y *por debajo del precio de mercado* ($P^*$), comprendida entre $q = 0$ y $q = Q^*$.
- Para una curva de oferta lineal con precio de reserva mínimo $P_min$:
  $ E P = 1/2 dot Q^* dot (P^* - P_min) $

#cuadro-concepto(titulo: [Lectura Económica del Excedente del Productor])[
  El Excedente del Productor mide los ingresos obtenidos por encima del costo variable de producción. Este excedente permite a las firmas cubrir sus costos fijos y generar utilidades netas, posibilitando la reinversión en capital, tecnología y desarrollo productivo.
]

#imagen("Representación gráfica del Excedente del Productor (área sobre la curva de oferta y bajo el precio)")

---

== Movimientos a lo Largo de la Curva vs. Desplazamientos

Uno de los errores conceptuales más frecuentes en el análisis de coyuntura es confundir un cambio en la cantidad demandada (u ofrecida) con un cambio en la demanda (u oferta). La regla operativa es inequívoca:

#cuadro-atencion(titulo: [Regla Fundamental de Distinción])[
  - *Cambio en la Cantidad Demandada / Ofrecida:* Se produce *única y exclusivamente* cuando varía el *precio del propio bien*, manteniendo constantes las demás variables. Gráficamente corresponde a un *movimiento a lo largo de la misma curva*.
  - *Cambio en la Demanda / Oferta:* Se produce cuando varía *cualquier variable distinta al precio del propio bien* (ingreso, tecnología, costos de insumos, precios de sustitutos, etc.). Gráficamente implica un *desplazamiento de toda la curva* (hacia la derecha si aumenta, hacia la izquierda si disminuye).
]

#imagen("Contraste: Movimiento sobre la curva vs. Desplazamiento completo de la curva")

=== Matriz de Clasificación de Casos Prácticos

#align(center)[
  #table(
    columns: (2.2fr, 1.2fr, 1.4fr, 2.2fr),
    align: (left, center, center, left),
    [*Hecho o Evento Económico*], [*Curva afectada*], [*Tipo de cambio*], [*Efecto gráfico y económico*],
    [Sube el precio de la nafta en el mercado de automóviles a combustión], [Demanda], [Desplazamiento], [Desplazamiento de $D$ hacia la izquierda (bienes complementarios).],
    [Una granizada arruina el 50% de las uvas en Mendoza], [Oferta], [Desplazamiento], [Desplazamiento de $S$ hacia la izquierda (destrucción de factor productivo).],
    [Baja el precio de la carne vacuna en el mercado de la carne vacuna], [Demanda y Oferta], [Movimiento], [Movimiento descendente a lo largo de la curva de $D$ (mayor cantidad demandada).],
    [Un nuevo software reduce los costos de diseño de circuitos integrados], [Oferta], [Desplazamiento], [Desplazamiento de $S$ hacia la derecha (mejora tecnológica generalizada).]
  )
]

---

== Equilibrio de Mercado y Dinámica de Corrección

=== Definición del Equilibrio

El *equilibrio de mercado* es aquella situación en la que coinciden plenamente los planes y deseos de los compradores y de los vendedores. Ocurre a un precio $P^*$ para el cual la cantidad demandada iguala exactamente a la cantidad ofrecida:

$ Q_D (P^*) = Q_S (P^*) = Q^* $

A este precio de equilibrio el mercado "se vacía": no quedan compradores insatisfechos dispuestos a pagar $P^*$ sin conseguir el producto, ni vendedores con mercadería no comercializada al precio vigente.

#imagen("Equilibrio de Mercado en la intersección de Demanda y Oferta")

=== Situaciones Fuera del Equilibrio y Mecanismos de Ajuste

Cuando el precio vigente difiere del de equilibrio, el propio mercado genera fuerzas endógenas que empujan la cotización hacia $P^*$:

#cuadro-concepto(titulo: [Ajuste ante Exceso de Oferta (Excedente)])[
  Si el precio se ubica por encima del equilibrio ($P > P^*$):
  - $Q_S > Q_D$: Se genera un *exceso de oferta* o excedente de mercadería.
  - Los inventarios no vendidos se acumulan en los depósitos de los productores.
  - Para deshacerse de los excedentes y recuperar liquidez, los productores compiten bajando los precios ($P arrow.b$).
  - La baja del precio estimula a los consumidores a demandar más unidades (movimiento a lo largo de $D$) y desincentiva la producción marginal de las firmas menos eficientes (movimiento a lo largo de $S$), restaurando el equilibrio en $(P^*, Q^*)$.
]

#cuadro-concepto(titulo: [Ajuste ante Exceso de Demanda (Escasez)])[
  Si el precio se ubica por debajo del equilibrio ($P < P^*$):
  - $Q_D > Q_S$: Se genera un *exceso de demanda* o escasez del bien.
  - Hay filas de espera y compradores dispuestos a pagar más que no logran abastecerse.
  - La puja competitiva entre los compradores insatisfechos presiona el precio al alza ($P arrow.t$).
  - La suba de precios raciona la demanda (algunos compradores desisten) y estimula a las empresas a incrementar la producción marginal, cerrando la brecha de escasez hasta retornar a $(P^*, Q^*)$.
]

#imagen("Dinámica de ajuste: Exceso de Oferta vs. Exceso de Demanda")

=== Las Dos Funciones Económicas del Precio

En una economía descentralizada, los precios libres cumplen dos roles coordinadores cruciales:

1. *Función de Racionamiento:* Dado que los bienes son intrínsecamente escasos frente a las necesidades humanas, el precio de equilibrio raciona la oferta existente dirigiéndola hacia aquellos consumidores que le atribuyen un mayor valor económico (aquellos cuya disposición a pagar es igual o superior al precio de equilibrio).
2. *Función de Asignación y Señalización de Recursos:* Los precios operan como señales de rentabilidad relativa:
  - En mercados con exceso de demanda permanente o creciente, los altos precios permiten márgenes de beneficio extraordinarios, atrayendo capitales, mano de obra y nuevas empresas.
  - En mercados con exceso de oferta o demanda en declive, la caída de precios induce pérdidas contables, obligando a reorientar los factores productivos hacia sectores más productivos y valorados por la sociedad.

=== Eficiencia Social del Equilibrio Competitivo

El *Excedente Total ($E T$)* o Bienestar Social es la suma del bienestar obtenido por consumidores y productores:

$ E T = E C + E P $

En el equilibrio de competencia perfecta libre de externalidades, el Excedente Total alcanza su nivel máximo posible:
- Para toda unidad producida hasta $Q^*$, el beneficio marginal que le otorga a la sociedad supera su costo marginal de producción ($upright(B M g) >= upright(C M g)$).
- Cualquier otra combinación de precio y cantidad que mejore la condición de algún agente necesariamente empeorará la de otro, satisfaciendo el criterio de *eficiencia de Pareto*.

---

== Análisis de Shocks de Oferta y Demanda

Un shock es un evento exógeno que altera alguno de los determinantes de las curvas de mercado, desplazándolas de su posición original.

=== Shocks Simples (Desplazamiento de una Sola Curva)

Cuando solo una de las dos curvas se desplaza y la otra permanece invariante, la dirección de cambio tanto del precio como de la cantidad de equilibrio queda unívocamente determinada:

#align(center)[
  #table(
    columns: (1.8fr, 1fr, 1fr, 2.5fr),
    align: (left, center, center, left),
    [*Tipo de Shock*], [*Precio ($P^*$)*], [*Cantidad ($Q^*$)*], [*Ejemplo representativo*],
    [Aumento de Demanda ($D arrow.t$)], [$arrow.t$ Sube], [$arrow.t$ Sube], [Alerta meteorológica de huracán dispara la demanda de generadores eléctricos.],
    [Caída de Demanda ($D arrow.b$)], [$arrow.b$ Baja], [$arrow.b$ Baja], [Brote de la enfermedad de la 'vaca loca' derrumba la demanda de carne vacuna.],
    [Aumento de Oferta ($S arrow.t$)], [$arrow.b$ Baja], [$arrow.t$ Sube], [Descubrimiento de técnica de fractura hidráulica (fracking) abarata la extracción de gas.],
    [Caída de Oferta ($S arrow.b$)], [$arrow.t$ Sube], [$arrow.b$ Baja], [Intensa granizada destruye viñedos y reduce la producción de uvas.]
  )
]

#imagen("Gráficos de los 4 Shocks Simples en el Mercado")

=== Shocks Simultáneos (Desplazamiento de Ambas Curvas)

Cuando un suceso o conjunto de sucesos afecta al mismo tiempo la oferta y la demanda, *una de las dos variables macroscópicas ($P$ o $Q$) siempre queda indeterminada a nivel cualitativo*, requiriendo conocer las magnitudes relativas de los desplazamientos y las pendientes de las curvas para resolverla.

#align(center)[
  #table(
    columns: (2fr, 1.2fr, 1.4fr, 2.8fr),
    align: (left, center, center, left),
    [*Combinación de Shocks*], [*Cantidad ($Q^*$)*], [*Precio ($P^*$)*], [*Explicación del Mecanismo*],
    [$D arrow.t$ y $S arrow.t$], [*$arrow.t$ Sube*], [Indeterminado], [Ambos shocks empujan la cantidad al alza. Pero $D arrow.t$ empuja el precio hacia arriba y $S arrow.t$ lo empuja hacia abajo. El precio final depende de cuál curva se desplace con mayor fuerza.],
    [$D arrow.t$ y $S arrow.b$], [Indeterminada], [*$arrow.t$ Sube*], [Ambos shocks presionan el precio al alza. Pero $D arrow.t$ busca expandir la cantidad y $S arrow.b$ busca contraerla. La cantidad final dependerá de la magnitud relativa.],
    [$D arrow.b$ y $S arrow.t$], [Indeterminada], [*$arrow.b$ Baja*], [Ambos shocks presionan el precio a la baja. $D arrow.b$ reduce la cantidad mientras que $S arrow.t$ la incrementa. Cantidad indeterminada.],
    [$D arrow.b$ y $S arrow.b$], [*$arrow.b$ Baja*], [Indeterminado], [Ambos shocks contraen la cantidad de equilibrio. Pero $D arrow.b$ empuja el precio hacia abajo y $S arrow.b$ lo empuja hacia arriba. Precio indeterminado.]
  )
]

#cuadro-atencion(titulo: [¿Por qué se produce la indeterminación?])[
  Cada shock individual ejerce un vector de fuerza sobre el precio y sobre la cantidad. Cuando dos fuerzas operan en la misma dirección, el resultado conjunto es unívoco y cierto. Cuando dos fuerzas tiran en direcciones opuestas sobre una misma variable, el signo neto resultante dependerá estrictamente de:
  1. *La magnitud del desplazamiento:* Cuál de las dos curvas sufrió una traslación horizontal mayor.
  2. *Las pendientes relativas de las curvas:* La elasticidad o sensibilidad precio de la oferta y de la demanda.
]

#imagen("Representación de Shocks Simultáneos y resolución según magnitudes relativas")

---

== Caso de Discusión en Coyuntura: El Terremoto de La Guaira (2026)

Para comprender cómo se aplican estas herramientas al análisis económico real, se analiza el impacto del terremoto del 24 de junio de 2026 en el centro-norte de Venezuela (epicentro entre Yumare y Montalbán, con fuerte impacto en el estado La Guaira y Caracas).

=== Los Dos Shocks Concurrentes

El desastre configuró un escenario clásico de shocks simultáneos sobre el mercado inmobiliario y residencial:

1. *Shock de Oferta ($S arrow.b$):*
  - Destrucción física de viviendas e infraestructura habitable: NASA reportó cerca de 59.000 edificios con probabilidad de colapso o daño superior al 75%.
  - Más de 18.000 personas quedaron sin techo y los daños materiales directos superaron los US\$ 19.600 millones según el Banco Mundial.
  - La capacidad constructiva local colapsó y la oferta neta de viviendas se contrajo drásticamente hacia la izquierda ($S arrow.r S'$).
2. *Shock de Demanda ($D arrow.t$):*
  - Como respuesta de emergencia, el gobierno implementó el programa de crédito subsidiado *"Venezuela Renace"*: subsidio estatal directo del 80% para inmuebles de hasta US\$ 70.000 y del 50% entre US\$ 70.001 y US\$ 100.000, con saldo financiado a 25 años al 5% de interés anual con un año de gracia.
  - Esta inyección de financiamiento artificial abarató el acceso financiero e impulsó un salto en la demanda de viviendas ($D arrow.r D'$).

#imagen("Impacto Teórico de Shocks Simultáneos en el Mercado de Vivienda de La Guaira")

=== La Predicción del Modelo Teórico vs. La Realidad Empírica

De acuerdo con el modelo teórico de shocks simultáneos ($S arrow.b$ y $D arrow.t$):
- *Precio:* Debería experimentar un alza inequívoca e inmediata ($P^* arrow.t$).
- *Cantidad:* Quedaría indeterminada, en función del tamaño del subsidio frente al volumen de destrucción física.

Sin embargo, relevamientos de campo y reportes periodísticos evidenciaron una aparente anomalía: en dólares por metro cuadrado, los departamentos usados en el mercado secundario de La Guaira llegaron a cotizarse a precios menores que antes del terremoto.

#cuadro-registro(titulo: [Fricciones que explican la brecha entre Teoría y Realidad])[
  ¿Por qué no se cumplió la predicción simple de suba generalizada de precios?
  - *Segmentación del mercado:* El plan "Venezuela Renace" focalizó los subsidios en viviendas económicas de hasta US\$ 70.000, excluyendo al mercado secundario medio/alto.
  - *Riesgo y costos ocultos:* Las viviendas del mercado secundario requerían inspecciones y costosas reparaciones de daño estructural que el crédito no financiaba, castigando su valor de tasación.
  - *Fricciones de financiamiento y riesgo país:* La situación de default de la deuda soberana y la debilidad institucional demoraron la acreditación efectiva de los créditos prometidos, postergando la expansión real de la demanda.
]

Este caso enseña una lección metodológica crucial: *el modelo de oferta y demanda identifica correctamente las fuerzas subyacentes, pero el analista de coyuntura debe calibrar los supuestos incorporando la microestructura institucional, los costos de transacción y las fallas de mercado.*

---

== Ejercicio Práctico Integral Resuelto: Mercado de Vacantes de un Gimnasio

Un ejemplo clásico desarrollado en clase permite consolidar todos los conceptos analíticos, algebraicos y de bienestar.

=== Enunciado Base

Las funciones de oferta y demanda mensuales de vacantes en una cadena de gimnasios vienen dadas por:

$ Q_S = 10 P - 300 $
$ Q_D = 600 - 10 P $

donde $P$ es la cuota mensual expresada en dólares.

=== Parte A: Diagnóstico de Desequilibrio y Equilibrio Inicial

*Preguntas:*
1. Si la cuota actual es de $\$50$ mensuales, ¿está el mercado en equilibrio?
2. ¿Qué exceso existe y de qué magnitud? ¿Qué comportamiento se espera en el precio?
3. Calcule analíticamente el precio y la cantidad de equilibrio iniciales ($P_1^*, Q_1^*$).

*Resolución:*

Evaluamos la cantidad ofrecida y demandada a $P = 50$:
$ Q_S (50) = 10(50) - 300 = 500 - 300 = 200 $
$ Q_D (50) = 600 - 10(50) = 600 - 500 = 100 $

Dado que $Q_S (50) > Q_D (50)$, el mercado *no está en equilibrio*:
$ "Exceso de Oferta (Excedente)" = Q_S - Q_D = 200 - 100 = 100 "vacantes" $

#cuadro-ejemplo(titulo: [Mecanismo de Corrección en Parte A])[
  Al sobrar 100 plazas sin ocupar, los directivos del gimnasio no logran llenar sus cupos y reducen el precio mensual para captar clientes. A medida que el precio baja, la demanda se reactiva y se desisten ofertas marginales hasta vaciar el mercado.
]

Para hallar el equilibrio, igualamos $Q_D = Q_S$:
$ 600 - 10 P = 10 P - 300 $
$ 900 = 20 P arrow.double P_1^* = 900 / 20 = 45 "dólares" $

Sustituimos $P_1^* = 45$ en cualquiera de las ecuaciones para hallar $Q_1^*$:
$ Q_1^* = 600 - 10(45) = 600 - 450 = 150 "vacantes" $

El equilibrio inicial se sitúa en $P_1^* = \$45$ y $Q_1^* = 150$ vacantes.

=== Parte B: Shock de Demanda por Bien Sustituto

*Escenario:*
El municipio inaugura un centro polideportivo público con pileta climatizada y sala de musculación gratuita. Como resultado, los consumidores demandan 200 vacantes menos al gimnasio privado para todos los niveles de precio.

*Preguntas:*
1. Deduzca la nueva ecuación de demanda ($Q_D'$).
2. ¿Se trata de un cambio en la demanda o en la cantidad demandada? ¿Qué ocurrirá con $P^*$ y $Q^*$?
3. Calcule el nuevo equilibrio ($P_2^*, Q_2^*$).

*Resolución:*

La apertura del polideportivo público representa la aparición de un bien sustituto gratuito. Al reducirse la demanda en 200 unidades a todo precio:
$ Q_D' = Q_D - 200 = (600 - 10 P) - 200 = 400 - 10 P $

- *Clasificación del cambio:* Se trata de un *cambio en la demanda* (un desplazamiento hacia la izquierda de la curva de demanda de $D$ a $D'$).
- Sobre la curva de oferta se produce un *movimiento a lo largo de ella*.
- Al ser un shock simple de demanda negativa ($D arrow.b$), se anticipa unívocamente una *caída del precio* ($P^* arrow.b$) y una *caída de la cantidad* ($Q^* arrow.b$).

Igualamos la nueva demanda con la curva de oferta (la cual no cambió):
$ 400 - 10 P = 10 P - 300 $
$ 700 = 20 P arrow.double P_2^* = 700 / 20 = 35 "dólares" $

Reemplazamos en la nueva función de demanda:
$ Q_2^* = 400 - 10(35) = 400 - 350 = 50 "vacantes" $

El nuevo equilibrio queda determinado en $P_2^* = \$35$ y $Q_2^* = 50$ vacantes.

#imagen("Ajuste gráfico del mercado del gimnasio ante el shock de demanda")

=== Parte C: Cálculo de Excedentes y Pérdida de Bienestar Social

*Pasos a seguir:*
1. Expresar las curvas directas en sus formas inversas ($P$ en función de $Q$).
2. Determinar los precios máximos de reserva y mínimos de arranque.
3. Calcular el Excedente del Consumidor ($E C$), el Excedente del Productor ($E P$) y el Excedente Total ($E T$) antes y después del shock.

*1. Despeje de Curvas Inversas:*

- *Demanda Inicial:*
  $ Q_D = 600 - 10 P arrow.double 10 P = 600 - Q arrow.double P_D (Q) = 60 - 0.1 Q $
  Precio de reserva máximo ($Q = 0$): $P_max^1 = \$60$.

- *Nueva Demanda:*
  $ Q_D' = 400 - 10 P arrow.double 10 P = 400 - Q arrow.double P_D' (Q) = 40 - 0.1 Q $
  Nuevo precio de reserva máximo ($Q = 0$): $P_max^2 = \$40$.

- *Oferta:*
  $ Q_S = 10 P - 300 arrow.double 10 P = Q + 300 arrow.double P_S (Q) = 30 + 0.1 Q $
  Precio mínimo de arranque de oferta ($Q = 0$): $P_min = \$30$.

*2. Cálculo de Excedentes:*

Recordemos la fórmula geométrica triangular para funciones lineales:
$ E C = 1/2 dot Q^* dot (P_max - P^*) $
$ E P = 1/2 dot Q^* dot (P^* - P_min) $

- *Situación Inicial (Antes del Shock: $P_1^* = 45$, $Q_1^* = 150$):*
  $ E C_1 = 1/2 dot 150 dot (60 - 45) = 1/2 dot 150 dot 15 = 1.125 "USD/mes" $
  $ E P_1 = 1/2 dot 150 dot (45 - 30) = 1/2 dot 150 dot 15 = 1.125 "USD/mes" $
  $ E T_1 = E C_1 + E P_1 = 1.125 + 1.125 = 2.250 "USD/mes" $

- *Situación Final (Después del Shock: $P_2^* = 35$, $Q_2^* = 50$):*
  $ E C_2 = 1/2 dot 50 dot (40 - 35) = 1/2 dot 50 dot 5 = 125 "USD/mes" $
  $ E P_2 = 1/2 dot 50 dot (35 - 30) = 1/2 dot 50 dot 5 = 125 "USD/mes" $
  $ E T_2 = E C_2 + E P_2 = 125 + 125 = 250 "USD/mes" $

#align(center)[
  #table(
    columns: (2.2fr, 1.8fr, 1.8fr, 1.8fr),
    align: (left, center, center, center),
    [*Variable Económica*], [*Situación Inicial*], [*Situación Posterior*], [*Variación ($Delta$)*],
    [Precio de equilibrio ($P^*$)], [\$45], [\$35], [-\$10 (-22.2%)],
    [Cantidad de vacantes ($Q^*$)], [150], [50], [-100 (-66.7%)],
    [Excedente del Consumidor ($E C$)], [US\$ 1.125], [US\$ 125], [-US\$ 1.000],
    [Excedente del Productor ($E P$)], [US\$ 1.125], [US\$ 125], [-US\$ 1.000],
    [*Excedente Total ($E T$)*], [*US\$ 2.250*], [*US\$ 250*], [*-US\$ 2.000*]
  )
]

#cuadro-concepto(titulo: [Conclusión Económica de Bienestar])[
  El shock de demanda adverso contrajo el Excedente Total en este mercado en US\$ 2.000 mensuales. La pérdida se distribuyó de manera perfectamente simétrica entre ambos lados del mercado (-US\$ 1.000 para los consumidores y -US\$ 1.000 para el gimnasio), debido a que las pendientes absolutas de las curvas de oferta y demanda coinciden ($|m_D| = m_S = 0.1$).
]

---

== Síntesis Conceptual y Glosario Rápido

#align(center)[
  #table(
    columns: (1.5fr, 3.5fr),
    align: (left, left),
    [*Concepto*], [*Definición Sintética y Regla Mnemotécnica*],
    [Disposición a Pagar], [Precio máximo que un comprador pagaría por una unidad adicional. Mide el beneficio marginal subjetivo que obtiene.],
    [Costo Marginal], [Costo de oportunidad de producir una unidad adicional. Marca el precio mínimo al que el productor está dispuesto a vender.],
    [Ley de Demanda], [Relación inversa entre precio y cantidad demandada ($P arrow.t arrow.long.r Q_D arrow.b$), fundamentada en la utilidad marginal decreciente y los efectos sustitución e ingreso.],
    [Ley de Oferta], [Relación directa entre precio y cantidad ofrecida ($P arrow.t arrow.long.r Q_S arrow.t$), fundamentada en el costo marginal creciente por rendimientos decrecientes.],
    [Movimiento vs Desplazamiento], [Si varía el precio del propio bien $arrow.long.r$ *movimiento sobre la curva*. Si varía cualquier otro factor determinante $arrow.long.r$ *desplazamiento de toda la curva*.],
    [Exceso de Oferta], [$P > P^* arrow.long.r Q_S > Q_D$. Provoca acumulación de existencias y presión competitiva a la baja en el precio.],
    [Exceso de Demanda], [$P < P^* arrow.long.r Q_D > Q_S$. Provoca escasez y puja competitiva al alza en el precio.],
    [Funciones del Precio], [1. Raciona los bienes escasos a los compradores con mayor valoración. 2. Asigna y guía los factores productivos hacia los sectores de rentabilidad creciente.],
    [Excedente Total], [$E T = E C + E P$. Es máximo en el equilibrio competitivo. Mide la ganancia neta social generada por la existencia del mercado.],
    [Shocks Simultáneos], [Cuando operan dos shocks a la vez, una variable ($P$ o $Q$) se define unívocamente y la otra queda cualitativamente indeterminada hasta comparar magnitudes relativas.]
  )
]