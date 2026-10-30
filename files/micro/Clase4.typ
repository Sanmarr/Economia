// ============================================================
//  CLASE 4 – COSTOS
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

= Costos

En la clase anterior analizamos la *producción* sin asignar precio a los factores. Ahora introducimos los *costos*: dada la tecnología y los precios de los factores, ¿cuánto cuesta producir cada cantidad? ¿Cómo elegir la combinación más barata?

== Conceptos de Costo

=== Costo Contable vs. Costo Económico

#cuadro-concepto(titulo: [Costo Contable y Costo Económico])[
  #table(
    columns: (1fr, 1fr),
    align: (left, left),
    stroke: 0.5pt,
    table.header([*Costo Contable*], [*Costo Económico*]),
    [Gastos monetarios reales más la depreciación del capital. Es lo que registra la contabilidad. \ \ *Beneficio contable* = ingresos − costo contable.],
    [Costo de usar los recursos, valuados en su *mejor uso alternativo*. Es el que importa para decidir. \ \ *Beneficio económico* = ingresos − costo económico.],
  )

  Del costo contable al económico se suma el *costo de oportunidad* y se excluyen los *costos hundidos*.
]

#cuadro-concepto(titulo: [Costo de Oportunidad])[
  El *costo de oportunidad* es el valor del mejor uso alternativo al que se renuncia. Ejemplos:
  - El sueldo que el dueño *no* se paga a sí mismo.
  - El alquiler del local propio que se deja de cobrar.
  - El interés que dejaría de ganar el capital invertido.

  Estos costos no aparecen en la contabilidad pero son reales: representan lo que se pierde por elegir esta actividad en lugar de la siguiente mejor opción.
]

#cuadro-concepto(titulo: [Costo Hundido])[
  Un *costo hundido* es un costo ya incurrido, *no recuperable*, que no cambia con la decisión de hoy. Ejemplos:
  - La depreciación de una máquina sin posibilidad de reventa.
  - El dinero invertido en publicidad ya realizada.

  Los costos hundidos *no deben influir en la decisión de continuar o cerrar*: se perdieron de todas formas.
]

#cuadro-atencion(titulo: [La falacia del costo hundido])[
  "Ya gasté tanto en el equipo, no puedo cerrar ahora." → *Error*. El dinero del equipo ya está perdido sin importar la decisión. La pregunta correcta es: *¿los ingresos futuros superan los costos futuros (no hundidos)?*

  Continuar conviene si: ingresos > costos evitables.
]

#cuadro-ejemplo(titulo: [La cervecería de Laura])[
  Datos anuales (millones de \$):

  #table(
    columns: (auto, auto, auto),
    align: (left, center, center),
    stroke: 0.5pt,
    table.header([*Ítem*], [*Costo contable*], [*Costo económico*]),
    [Insumos, sueldos y servicios], [870], [870],
    [Amortización del equipo *(hundido)*], [200], [—],
    [Sueldo que Laura resigna], [—], [60],
    [Alquiler del local propio], [—], [36],
    [*Costo total*], [*1.070*], [*966*],
    [*Beneficio* (ingresos = 1.000)], [*−70*], [*+34*],
  )

  - *¿Conviene cerrar?* No. Si cierra, recupera solo $60 + 36 = 96$. Si sigue, obtiene $1.000 - 870 = 130$. La amortización es hundida: no se ahorra al cerrar.
  - *¿Y si le ofrecen trabajo por 120?* Ahí sí: el costo económico sube a $1.026$ y el beneficio económico es $-26$. Cerrar le deja $120 + 36 = 156 > 130$.
]

== Corto Plazo: Curvas de Costos

=== Definiciones de Costos de Corto Plazo

Con al menos un factor fijo (capital $K$), los costos se dividen en fijos y variables.

#cuadro-concepto(titulo: [Costos de corto plazo])[
  #table(
    columns: (auto, 1fr, 1fr),
    align: (left, left, left),
    stroke: 0.5pt,
    table.header([*Concepto*], [*Fórmula*], [*Qué mide*]),
    [Costo Total (CT)],            [$C T = C F + C V$],                            [Costo de todos los factores.],
    [Costo Fijo (CF)],             [Constante],                                    [No varía con $q$. Ej.: alquiler, maquinaria.],
    [Costo Variable (CV)],         [Depende de $q$],                               [Varía con la producción. Ej.: materias primas.],
    [Costo Marginal (CMg)],        [$(Delta C T) / (Delta q) = (d C T) / (d q)$],  [Cuánto sube el costo al producir una unidad más.],
    [Costo Fijo Medio (CFMe)],     [$(C F) / (q)$],                               [Costo fijo por unidad. Siempre decreciente.],
    [Costo Variable Medio (CVMe)], [$(C V) / (q)$],                               [Costo variable por unidad.],
    [Costo Total Medio (CTMe)],    [$(C T) / (q) = C F M e + C V M e$],           [Costo por unidad. Forma de U.],
  )
]

=== De la Función de Costos a las Curvas

Con la función de costos $C T = 32 + 30q - 6q^2 + q^3$:

- $C F = 32$ (el término constante)
- $C V = 30q - 6q^2 + q^3$
- $C M g = (d C T) / (d q) = 30 - 12q + 3q^2$

El *CV* crece primero a ritmo decreciente (cuando el PMg del trabajo sube) y luego a ritmo creciente (cuando el PMg cae). El punto de inflexión del CV coincide con el mínimo del CMg.

#imagen("Gráfico CT, CV y CF: CT es CV desplazado hacia arriba en CF. CV tiene forma de S. CF es línea horizontal.")

=== Curvas de Costos Medios y Marginal

#imagen("Gráfico costos unitarios: CMg en U, CTMe en U (más a la derecha), CVMe en U, CFMe siempre decreciente. CMg corta CVMe y CTMe en sus mínimos.")

#cuadro-concepto(titulo: [Relaciones entre CMg, CTMe y CVMe])[
  1. *El CMg corta al CVMe y al CTMe en sus mínimos:*
     - Si $C M g < C T M e$ → el CTMe *baja*.
     - Si $C M g > C T M e$ → el CTMe *sube*.

  2. *El mínimo del CTMe está a la derecha del CVMe*: mientras el CFMe sigue cayendo, arrastra al CTMe hacia abajo aunque el CVMe ya esté subiendo.

  3. *El CFMe siempre decrece*: el costo fijo se reparte entre más unidades.
]

=== Por Qué Tienen Forma de U: CMg = w / PMgL

La forma de U de los costos es el *espejo* de la productividad marginal:

$ C M g = (Delta C V) / (Delta q) = w dot (Delta L) / (Delta q) = (w) / (P M g_L) $

Con salario $w$ dado:
- Cuando $P M g_L$ *sube* (primeras unidades de trabajo) → $C M g$ *baja*.
- Cuando $P M g_L$ *cae* (rendimientos marginales decrecientes) → $C M g$ *sube*.

La U del CMg es exactamente la U invertida del PMg, reflejada.

#cuadro-registro(titulo: [Derivación: de producción a costos — La Panadería, K = 4])[
  $q = 20 L^(0,5) => L = (q^2) / (400)$

  Costo variable (con salario $w$):

  $ C V = w dot L = (w q^2) / (400) $

  Costo total (capital cuesta $r$ por unidad):

  $ C T = 4r + (w q^2) / (400) $

  Costo marginal:

  $ C M g = (partial C T) / (partial q) = (w q) / (200) $

  Verificación con $C M g = w / P M g_L$:

  $ P M g_L = (200) / (q) => C M g = (w q) / (200) checkmark $
]

== Largo Plazo: Minimización de Costos

=== La Recta Isocosto

En el largo plazo, *todos* los factores son variables. La empresa elige la combinación $(L, K)$ que minimiza el costo de producir una cantidad objetivo $macron(q)$.

#cuadro-concepto(titulo: [Isocosto])[
  La *recta isocosto* muestra todas las combinaciones de $L$ y $K$ que tienen el mismo costo total $C$:

  $ C = w L + r K $

  Despejando $K$:

  $ K = (C) / (r) - (w) / (r) dot L $

  - *Ordenada al origen*: $(C) / (r)$.
  - *Pendiente*: $-(w) / (r)$ — la tasa de intercambio trabajo-capital a costo constante.
  - $r$ = costo de uso del capital (alquiler o depreciación + interés si es propio).

  Con $w$ y $r$ dados, *todas las isocostos son paralelas*. Mayor costo → más lejos del origen.
]

#imagen("Familia de isocostos paralelas con pendiente -w/r en el plano (L, K). Líneas para CT=3, CT=4, CT=5.")

=== El Problema de Minimización de Costos

$ min_(L, K) space w L + r K quad "sujeto a" quad F(K, L) = macron(q) $

Geométricamente: encontrar la isocosto *más baja* que toque la isocuanta $q = macron(q)$.

#imagen("Minimización: isocuanta q=20 tangente a la isocosto mínima CT=4 en punto A. Puntos B y C sobre isocostos más altas.")

=== Condición de Mínimo Costo

La solución está en la *tangencia* entre la isocuanta y la isocosto:

$ T M S T = (w) / (r) quad => quad (P M g_L) / (P M g_K) = (w) / (r) quad => quad (P M g_L) / (w) = (P M g_K) / (r) $

#cuadro-concepto(titulo: [Interpretación económica de la condición de óptimo])[
  En el punto óptimo, *el producto marginal por peso gastado* es igual en ambos factores:

  $ (P M g_L) / (w) = (P M g_K) / (r) $

  Si no se cumple:
  - $(P M g_L) / (w) > (P M g_K) / (r)$: el peso en trabajo rinde *más* → conviene más $L$ y menos $K$.
  - $(P M g_L) / (w) < (P M g_K) / (r)$: el peso en capital rinde *más* → conviene más $K$ y menos $L$.

  La empresa reasigna factores hasta que el rendimiento por peso sea igual en ambos.
]

*Sistema de ecuaciones para resolver:*
+ $T M S T = w / r$ (condición de tangencia)
+ $F(K, L) = macron(q)$ (restricción de producción)

Dos ecuaciones, dos incógnitas ($L^*$, $K^*$).

=== Cuando Cambia el Precio de un Factor

Si *sube* $w$, la isocosto se vuelve más *empinada*:
- El punto óptimo se desplaza hacia *más capital y menos trabajo*.
- La empresa *sustituye* el factor encarecido.
- El costo sube, pero *menos* que si no pudiera sustituir.

#imagen("Cambio en óptimo cuando sube w: isocosto más empinada, punto A se mueve a B (más K, menos L) sobre la misma isocuanta q=20.")

#cuadro-ejemplo(titulo: [Los bancos de Juan — $q = 0,1 K^(0,2) L^(0,8)$, w = r = 50])[
  *a) ¿Es eficiente K = L = 100?*

  $q = 10$ ✓. Pero $T M S T = (4K) / (L) = 4 != 1 = w/r$ → *No es eficiente.*

  *b) Óptimo:*

  $ T M S T = (4K) / (L) = 1 => L = 4K $

  Sustituyendo en la isocuanta: $K^* approx 32,99$, $L^* approx 131,95$, $C^* approx 8.247$ (ahorra ~1.753).

  *c) Sube w a 100:*

  $ T M S T = (4K) / (L) = 2 => L = 2K => K^* approx 57,43, L^* approx 114,87, C^* approx 14.358 $

  #table(
    columns: (auto, auto, auto, auto),
    align: (left, center, center, center),
    stroke: 0.5pt,
    table.header([*Escenario*], [*L\**], [*K\**], [*Costo*]),
    [w = 50 (óptimo)],         [131,95], [32,99], [8.247],
    [w = 100 sin sustituir],   [131,95], [32,99], [14.844],
    [w = 100 nuevo óptimo],    [114,87], [57,43], [14.358],
  )

  El costo sube ~74%, no 100%: la sustitución amortigua el impacto y ahorra ~486.
]

=== Sendero de Expansión y Costo de Largo Plazo

#cuadro-concepto(titulo: [Sendero de Expansión y CTLP])[
  El *sendero de expansión* une las combinaciones óptimas $(L^*, K^*)$ para distintos $q$, a $w$ y $r$ fijos.

  - Para Cobb-Douglas, es una *recta desde el origen* (razón $K/L$ depende solo de $w/r$).
  - El *Costo Total de Largo Plazo (CTLP)* es el costo mínimo de producir cada $q$ (los puntos del sendero).
  - El *Costo Medio de Largo Plazo (CMeLP)* $= C T L P / q$.
]

#imagen("Sendero de expansión: línea recta desde el origen que une las tangencias para q=20, q=30, q=40 en plano (L, K).")

Ejemplo (panadería, $w = r = 1$):

#table(
  columns: (auto, auto, auto, auto, auto),
  align: (center, center, center, center, center),
  stroke: 0.5pt,
  table.header([*q*], [*L\**], [*K\**], [*CTLP*], [*CMeLP*]),
  [20], [2], [2], [4], [0,2],
  [30], [3], [3], [6], [0,2],
  [40], [4], [4], [8], [0,2],
)

CMeLP constante → rendimientos constantes a escala ($alpha + beta = 1$).

=== Corto Plazo vs. Largo Plazo: ¿Por Qué el Corto Cuesta Más?

Con $K$ fijo en $K_1$ (planta óptima para $q_1$, punto A):
- *Corto plazo* para $q_2 > q_1$: solo se agrega trabajo → punto C, isocosto mayor.
- *Largo plazo* para $q_2$: se ajusta también $K$ → punto B, isocosto menor.

$ C T "CP" >= C T "LP" $

Son iguales *solo* donde el $K$ fijo coincide con el óptimo de largo plazo.

#imagen("Plano (L, K): A = óptimo para q1 con K1; C = corto plazo para q2 (costoso); B = largo plazo para q2 (más barato). Muestra CP >= LP.")

== Largo Plazo: Economías de Escala

=== CMeLP como Envolvente de los CMeCP

#cuadro-concepto(titulo: [El CMeLP como curva envolvente])[
  La *curva CMeLP* es la *envolvente* de todas las curvas CMeCP (una por cada tamaño de planta):
  - Queda *por debajo* de todas las CMeCP (o las toca).
  - Toca a cada CMeCP en *un solo punto*: el $q$ para el cual esa planta es la óptima.
  - *Para elegir la planta*: dado el $q$ que se planea producir, usar la planta que toca al CMeLP en ese punto.

  Con más $K$, la CMeCP se desplaza a la derecha: mayor costo fijo, pero los rendimientos marginales decrecientes llegan más tarde.
]

#imagen("CMeCP1, CMeCP2, CMeCP3 (tamaños de planta crecientes) con la CMeLP como envolvente por debajo de todas, tocando cada una en un punto.")

=== Economías y Deseconomías de Escala

#cuadro-concepto(titulo: [Economías de escala y Escala Eficiente Mínima (EEM)])[
  #table(
    columns: (1fr, 1fr, 1fr),
    align: (left, left, left),
    stroke: 0.5pt,
    table.header([*Tramo*], [*Condición*], [*CMeLP*]),
    [Economías de escala],    [$C M g L P < C M e L P$], [*Cae* al crecer $q$.],
    [Escala Eficiente Mínima],[$ C M g L P = C M e L P$], [*Mínimo* del CMeLP.],
    [Deseconomías de escala], [$C M g L P > C M e L P$], [*Sube* al crecer $q$.],
  )

  La *EEM* es la cantidad con el menor costo medio posible. Conviene ampliar la escala si $q < E E M$.
]

*¿Por qué existen economías de escala?*
- Especialización y división del trabajo.
- Uso eficiente de insumos indivisibles.
- Poder de negociación con proveedores.
- Costos fijos repartidos entre más unidades.

*¿Por qué surgen deseconomías?*
- Problemas de gestión y coordinación en organizaciones grandes.
- Congestión y burocracia.
- Dificultad de monitorear empleados.

#imagen("CMeLP en U con CMgLP cruzándola en el mínimo (EEM). Zona de economías a la izquierda, deseconomías a la derecha.")

=== Economías de Escala vs. Rendimientos a Escala

#cuadro-atencion(titulo: [Son conceptos distintos — no confundir])[
  #table(
    columns: (1fr, 1fr),
    align: (left, left),
    stroke: 0.5pt,
    table.header([*Rendimientos a escala*], [*Economías de escala*]),
    [Propiedad de la *tecnología* (función de producción $F$).], [Propiedad de los *costos* (CMeLP).],
    [¿Cuánto crece $q$ si se multiplican todos los factores?], [¿Cómo cambia el CMeLP al crecer $q$?],
  )

  *Relación* (con precios de factores constantes):
  - Rendimientos crecientes → economías de escala (CMeLP cae).
  - Rendimientos constantes → CMeLP constante.
  - Rendimientos decrecientes → deseconomías de escala (CMeLP sube).

  *Importante:* si los precios de los factores *cambian* con la escala (descuentos por volumen), la relación puede no cumplirse.
]

#cuadro-ejemplo(titulo: [Ejercicio — Escala Eficiente Mínima])[
  $C T L P = 15.000 q - 200 q^2 + q^3$

  $ C M e L P = 15.000 - 200q + q^2 $

  $ C M g L P = 15.000 - 400q + 3q^2 $

  *EEM* (mínimo del CMeLP):

  $ (d C M e L P) / (d q) = -200 + 2q = 0 => q^* = 100 $

  $C M e L P(100) = 5.000$

  #table(
    columns: (auto, auto, auto, auto),
    align: (center, center, center, left),
    stroke: 0.5pt,
    table.header([*q*], [*CMeLP*], [*CMgLP*], [*¿Ampliar la escala?*]),
    [60],  [6.600], [1.800],  [Sí, hacia 100 (aún hay economías)],
    [100], [5.000], [5.000],  [EEM — costo mínimo alcanzado],
    [150], [7.500], [22.500], [No (deseconomías de escala)],
  )
]

== Síntesis

#cuadro-registro(titulo: [Mapa de conceptos — Clase 4])[
  #table(
    columns: (1fr, 1fr),
    align: (left, left),
    stroke: 0.5pt,
    table.header([*Concepto*], [*Fórmula / Regla clave*]),
    [Costo económico],           [Costo contable + costo de oportunidad − costo hundido],
    [CMg (corto plazo)],         [$(d C T) / (d q) = (w) / (P M g_L)$],
    [CMg corta CTMe y CVMe],     [En sus mínimos respectivos],
    [Condición de óptimo LP],    [$(P M g_L) / (w) = (P M g_K) / (r)$ — igual rendimiento por peso],
    [CT corto plazo vs. LP],     [$C T "CP" >= C T "LP"$ — factor fijo impide ajuste óptimo],
    [CMeLP = envolvente],        [Toca cada CMeCP en su $q$ óptimo para esa planta],
    [EEM],                       [$q$ donde $C M g L P = C M e L P$ (mínimo del CMeLP)],
    [Economías de escala],       [$C M g L P < C M e L P$ → CMeLP cae al crecer $q$],
  )
]

#cuadro-atencion(titulo: [Próxima clase — Oferta Competitiva])[
  Con los costos de hoy y un precio de mercado dado, ¿cuánto conviene producir? De ahí se deriva la *curva de oferta de la empresa* y la *oferta de mercado* en competencia perfecta.
]
