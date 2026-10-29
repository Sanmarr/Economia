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

// ==========================================
// CONTENIDO DE LA CLASE 2
// ==========================================

= Elasticidad e Intervención del Estado


Se abordan dos grandes pilares interconectados de la microeconomía aplicada:
1. *La teoría de las elasticidades*: Herramientas cuantitativas para medir la sensibilidad de oferentes y demandantes ante cambios en el precio propio, en el ingreso de los consumidores y en los precios de bienes relacionados.
2. *La intervención estatal en los mercados*: análisis de bienestar social, redistribución y pérdida irrecuperable de eficiencia derivados de controles de precios (máximos y mínimos) y tributos indirectos, junto con el análisis de casos de coyuntura crítica como la traslación de costos a precios y la curva de Laffer.


== Elasticidad Precio de la Demanda: Definición y Métodos de Cálculo

#cuadro-concepto(titulo: [Definición de Elasticidad])[
  La *elasticidad*:  Cuánto cambian las decisiones de 
consumo o producción cuando cambia un factor 
que las determina.
]

La *elasticidad precio de la demanda* ($E_p$): Mide cuánto varía la cantidad cuando el precio varía en (_ceteris paribus_).

$ E_p = ("%" Delta Q) / ("%" Delta P) $


/*
#cuadro-atencion(titulo: [¿Por qué usar variaciones porcentuales y no la pendiente simple?])[
  La pendiente de una función de demanda ordinaria ($(Delta Q) / (Delta P)$ o $(d Q) / (d P)$) depende enteramente de las unidades de medida elegidas (pesos, dólares, kilos, litros, toneladas). Si cambiamos la unidad de pesos a centavos, la pendiente numérica se multiplicaría por $100$, dando una falsa ilusión de mayor sensibilidad.

  La elasticidad resuelve este problema dividiendo las variaciones respecto de los niveles de partida ($(Delta Q / Q) / (Delta P / P)$), lo que genera un *coeficiente adimensional* (número puro sin unidades), permitiendo comparar la sensibilidad de bienes heterogéneos (por ejemplo, comparar la respuesta del mercado automotor con la del pan de mesa).
]
*/

=== Métodos de Cálculo: Elasticidad Punto vs. Elasticidad Arco

Existen dos procedimientos analíticos fundamentales para computar la elasticidad precio:

1. *Elasticidad punto (discreta y continua)*:
   Mide la sensibilidad exactamente en un punto infinitesimal o específico de la curva de demanda.
   - En forma discreta:
     $ E_p = (Delta Q / Q) / (Delta P / P) = ((Delta Q) / (Delta P)) dot (P / Q) $
   - En forma infinitesimal (usando cálculo diferencial cuando se conoce la función matemática continua $Q(P)$):
     $ E_p = (d Q) / (d P) dot P / Q $
   

2. *Elasticidad arco o de punto medio*:
   Se utiliza cuando se dispone de datos discretos entre dos observaciones distantes $A = (P_1, Q_1)$ y $B = (P_2, Q_2)$. Si calculáramos el porcentaje respecto al punto de partida, el valor cambiaría dependiendo de si el precio sube de $A$ hacia $B$ o si baja de $B$ hacia $A$. Para evitar esta asimetría, se calcula la variación relativa respecto al valor promedio del intervalo:
   $ E_p^"arco" = ((Q_2 - Q_1) / ((Q_1 + Q_2) / 2)) / ((P_2 - P_1) / ((P_1 + P_2) / 2)) = (Delta Q) / (Delta P) dot (P_1 + P_2) / (Q_1 + Q_2) $

#cuadro-registro(titulo: [Signo y Convención del Valor Absoluto])[
  Por la *Ley de la Demanda*, cuando el precio de un bien sube, la cantidad demandada disminuye ($(Delta Q) / (Delta P) < 0$). En consecuencia, el resultado matemático de $E_p$ es siempre un número negativo.

  Para simplificar la interpretación económica, los economistas suelen trabajar con el valor absoluto $|E_p|$ o anteponer formalmente un signo menos a la definición:
  $ |E_p| = | ("%" Delta Q) / ("%" Delta P) | $
]


== Clasificación de la Demanda según su Elasticidad

De acuerdo con la magnitud del coeficiente en valor absoluto $|E_p|$, las curvas o segmentos de demanda se categorizan en cinco tipos:

#table(
  columns: (1.2fr, 1fr, 2fr, 1.8fr),
  fill: (x, y) => if y == 0 { rgb("#e8f4f8") } else { none },
  stroke: 0.5pt + rgb("#cccccc"),
  align: (left, center, left, left),
  table.header(
    [*Categoría*], [*Valor de $|E_p|$*], [*Descripción del Comportamiento*], [*Ejemplos Típicos*]
  ),
  [Perfectamente Inelástica], [$|E_p| = 0$],
  [La cantidad demandada no responde en absoluto a variaciones en el precio. Gráficamente es una recta vertical.],
  [Insulina para diabéticos, medicamentos críticos de supervivencia.],

  [Inelástica], [$|E_p| < 1$],
  [La cantidad demandada varía en una proporción menor a la variación del precio ($"%" Delta Q < "%" Delta P$). Sensibilidad baja.],
  [Electricidad residencial, nafta a corto plazo, pan, sal.],

  [Elasticidad Unitaria], [$|E_p| = 1$],
  [La cantidad demandada varía exactamente en la misma proporción que el precio ($"%" Delta Q = "%" Delta P$).],
  [Curvas teóricas isoelásticas, punto medio de demandas lineales.],

  [Elástica], [$|E_p| > 1$],
  [La cantidad demandada varía proporcionalmente más que el precio ($"%" Delta Q > "%" Delta P$). Alta sensibilidad.],
  [Comidas en restaurantes, pasajes aéreos de turismo, marcas específicas de gaseosas.]
)
//#imagen("Curvas de demanda representativas según su elasticidad: perfectamente inelástica (vertical), elástica, unitaria y perfectamente elástica (horizontal)")

#figure(
  image("images/elasticidad.png", width: 105%),
  caption: [Curvas de demanda representativas según su elasticidad]
) <fig:elasticidad>



== Variación de la Elasticidad a lo largo de una Demanda Lineal e Ingreso Total

#cuadro-atencion(titulo: [Pendiente Constante no significa Elasticidad Constante])[


  Dado que $E_p = ((d Q) / (d P)) dot (P / Q)$, a medida que nos desplazamos a lo largo de la recta, el cociente $P / Q$ cambia drásticamente:
  
  - Cerca del eje vertical ($P$ alto, $Q$ cercano a $0$), el ratio $P / Q -> oo$, por lo que la demanda es sumamente *elástica*.
  
  - En el punto de corte con el eje horizontal ($P = 0, Q > 0$), el ratio $P / Q = 0$, resultando en una demanda perfectamente *inelástica*.

  #figure(
  image("images/ela.png", width: 40%)
) <fig:ela>
]

=== Relación entre Demanda, Elasticidad e Ingreso Total ($"IT"$)

El *Ingreso Total* (o volumen de facturación por ventas) percibido por los productores está dado por:
$ I T = P dot Q $

Cuando el precio se modifica, se producen dos fuerzas opuestas sobre el ingreso:
1. *Efecto precio*: cada unidad vendida se cobra a un precio mayor (o menor).
2. *Efecto cantidad*: ante la suba de precio, se logran vender menos unidades por la ley de demanda.

Para determinar cuál de los dos efectos domina, diferenciamos formalmente el Ingreso Total respecto del precio $P$:
$ (d(I T)) / (d P) = (d(P dot Q)) / (d P) = Q dot (d P) / (d P) + P dot (d Q) / (d P) = Q + P dot (d Q) / (d P) $

Sacando factor común $Q$:
$ (d(I T)) / (d P) = Q (1 + P / Q dot (d Q) / (d P)) = Q (1 + E_p) = Q (1 - |E_p|) $

Esta relación matemática fundamental nos entrega tres reglas directas de decisión comercial y macroeconómica:

- *Si la demanda es inelástica ($|E_p| < 1$)*:
  $1 - |E_p| > 0 => (d(I T)) / (d P) > 0$.
  El efecto precio supera al efecto cantidad. Subir el precio incrementa el ingreso total; bajar el precio reduce el ingreso total.

- *Si la demanda es elástica ($|E_p| > 1$)*:
  $1 - |E_p| < 0 => (d(I T)) / (d P) < 0$.
  El efecto cantidad domina sobre el efecto precio. Subir el precio destruye tantas ventas que el ingreso total se derrumba; una rebaja de precios expande el ingreso total.

- *Si la demanda tiene elasticidad unitaria ($|E_p| = 1$)*:
  $1 - |E_p| = 0 => (d(I T)) / (d P) = 0$.
  El ingreso total alcanza su punto crítico estacionario (máximo global de la función cuadrática de ingreso).

#v(0.5em)
#imagen("Relación gráfica superior e inferior: curva de demanda lineal con sus tres tramos (elástico, unitario e inelástico) y curva cuadrática de Ingreso Total alcanzando su máximo donde |Ep| = 1")

---

=== Ejercicio de Aplicación de Clase: ¿Conviene Subir o Bajar el Precio?

#cuadro-ejemplo(titulo: [Resolución Paso a Paso: Análisis de Precios e Ingresos])[
  Consideremos la función de demanda de mercado de las diapositivas de clase:
  $ Q_d = 60 - 5 P $

  Se solicita evaluar la elasticidad, el ingreso total y la conveniencia de subir el precio para tres niveles: $P = 3$, $P = 8$ y el precio de elasticidad unitaria.

  *Paso 1: Cálculo de la derivada*
  $ (d Q_d) / (d P) = -5 quad "(pendiente constante)" $

  *Caso A: Para $P = 3$*
  - Cantidad demandada: $Q = 60 - 5(3) = 60 - 15 = 45$.
  - Elasticidad punto:
    $ E_p = (-5) dot 3 / 45 = -15 / 45 = -1 / 3 approx -0.33 => |E_p| = 0.33 < 1 quad "(Demanda Inelástica)" $
  - Ingreso Total: $I T = P dot Q = 3 dot 45 = 135$.
  - *Decisión*: Al estar en el tramo inelástico, un aumento de precio provocará una caída porcentual menor en la cantidad vendida ($0.33% < 1%$). *Conviene subir el precio, ya que el ingreso total aumentará.*

  *Caso B: Para $P = 8$*
  - Cantidad demandada: $Q = 60 - 5(8) = 60 - 40 = 20$.
  - Elasticidad punto:
    $ E_p = (-5) dot 8 / 20 = -40 / 20 = -2.00 => |E_p| = 2.00 > 1 quad "(Demanda Elástica)" $
  - Ingreso Total: $I T = P dot Q = 8 dot 20 = 160$.
  - *Decisión*: Al estar en el tramo elástico, subir el precio reduce drásticamente las ventas en una proporción doble al aumento tarifario. *No conviene subir el precio; el ingreso total caería.* Por el contrario, convendría bajarlo.

  *Caso C: Punto de Elasticidad Unitaria ($|E_p| = 1$)*
  - Planteamos la condición analítica:
    $ E_p = -1 <=> (-5) dot P / (60 - 5 P) = -1 $
    $ -5 P = - (60 - 5 P) => -5 P = -60 + 5 P => 10 P = 60 => P^* = 6 $
  - Cantidad asociada: $Q^* = 60 - 5(6) = 30$.
  - Ingreso Total Máximo: $I T_max = 6 dot 30 = 180$.
]

#table(
  columns: (1fr, 1fr, 1.2fr, 1.2fr, 2fr),
  fill: (x, y) => if y == 0 { rgb("#e8f4f8") } else { none },
  stroke: 0.5pt + rgb("#cccccc"),
  align: (center, center, center, center, left),
  table.header([*Precio ($P$)*], [*Cantidad ($Q$)*], [*Elasticidad ($E_p$)*], [*Ingreso ($I T$)*], [*¿Conviene subir $P$?*]),
  [$3$], [$45$], [$-0.33$], [\$135], [Sí, el ingreso sube (tramo inelástico)],
  [$6$], [$30$], [$-1.00$], [\$180], [Punto óptimo: ingreso maximizado],
  [$8$], [$20$], [$-2.00$], [\$160], [No, el ingreso baja (tramo elástico)]
)

---

== 4. Determinantes Estructurales de la Elasticidad Precio y Horizonte Temporal

¿Qué hace que la demanda de un bien sea extremadamente sensible o prácticamente rígida? La teoría económica identifica cuatro determinantes principales:

1. *Disponibilidad y cercanía de sustitutos*:
   Es el factor más determinante. Los bienes con sustitutos cercanos y fácilmente accesibles (marcas de manteca, líneas aéreas alternativas, naftas de distintas petroleras) tienen demandas muy elásticas. Si el precio sube, los compradores migran rápidamente a la competencia. En cambio, bienes sin sustitutos viables (agua corriente, electricidad, medicamentos patentados) presentan demandas inelásticas.

2. *Proporción del ingreso gastada en el bien*:
   Cuanto mayor sea la porción del presupuesto del consumidor destinada a comprar el producto, mayor será la elasticidad. Un aumento del 20% en el precio de la sal o de los fósforos casi no altera la conducta del comprador porque representa centavos de su ingreso. En cambio, un aumento del 20% en el alquiler o en la cuota del automóvil obliga a reestructurar radicalmente los patrones de gasto.

3. *Bienes de primera necesidad vs. Bienes de lujo*:
   Los bienes imprescindibles para la vida o la actividad productiva diaria (pan, leche, insulina, transporte público básico) tienen demandas inelásticas. Los bienes suntuarios o prescindibles (relojes de alta gama, cruceros turísticos, cenas en locales gourmet) tienen demandas altamente elásticas.

4. *Amplitud de la definición del mercado*:
   Cuanto más estrechamente se defina un mercado, mayor será la elasticidad porque aparecen sustitutos directos. La demanda agregada de "alimentos" es sumamente inelástica (no podemos dejar de comer); la demanda de "postres" es más elástica; y la demanda de "helado artesanal de pistacho marca X" es extremadamente elástica.

=== Elasticidad en el Corto Plazo vs. Largo Plazo

#cuadro-concepto(titulo: [La Dimensión Temporal en la Conducta Económica])[
  Para la inmensa mayoría de los bienes de consumo e insumos productivos, *la demanda es significativamente más inelástica en el corto plazo y se vuelve progresivamente más elástica en el largo plazo*.
]

*Mecanismo de ajuste*:
- *A corto plazo*: Los agentes económicos están atados a su infraestructura física instalada, contratos vigentes, hábitos arraigados y stocks de bienes durables. Si el precio de los combustibles fósiles o del gas natural se triplica de un mes al otro, el consumidor no puede deshacerse instantáneamente de su automóvil térmico ni cambiar la caldera de su vivienda; se ve obligado a pagar el mayor precio, reduciendo el consumo sólo marginalmente.
- *A largo plazo*: Los individuos disponen de tiempo para reorganizar sus decisiones de vida y tecnología: compran vehículos híbridos o eléctricos, instalan paneles solares, mudan su residencia más cerca del trabajo o renegocian contratos de provisión.

#cuadro-atencion(titulo: [Implicancia Fundamental de Coyuntura])[
  Un error recurrente al interpretar datos económicos consiste en extrapolar la elasticidad observada en los meses inmediatamente posteriores a una suba tarifaria al horizonte de largo plazo.

  Si un gobierno o una empresa asume que la demanda es inelástica basándose en mediciones de corto plazo y proyecta ingresos estables a futuro, sufrirá una grave decepción: en el largo plazo la curva se aplana ($D'$ más elástica), los consumidores encuentran alternativas y la cantidad demandada cae de manera mucho más pronunciada.
]

#v(0.5em)
#imagen("Comparación de curvas de demanda: demanda empinada de corto plazo (inelástica) vs. demanda aplanada de largo plazo (elástica) rotando sobre el punto inicial")

---

== 5. Otras Elasticidades Clave: Ingreso y Cruzada

=== Elasticidad Ingreso de la Demanda ($E_I$ o $E_R$)

Mide la variación porcentual en la cantidad demandada de un bien provocada por una variación porcentual en el ingreso disponible ($I$ o $R$) de los consumidores:

$ E_I = ("%" Delta Q_d) / ("%" Delta I) = (d Q_d) / (d I) dot I / Q_d $

El signo y el valor absoluto de la elasticidad ingreso permiten clasificar los bienes con gran precisión sociodemográfica:

1. *Bienes Inferiores ($E_I < 0$)*:
   Cuando el ingreso de la población aumenta, la cantidad consumida disminuye (y viceversa). Los consumidores sustituyen estos bienes por alternativas de mayor calidad al adquirir mayor poder de compra.
   _Ejemplos_: Segundas y terceras marcas alimenticias, harinas de baja pureza, transporte público masivo de bajo costo, ropa de segunda mano.

2. *Bienes Normales ($E_I > 0$)*:
   Al aumentar el ingreso, el consumo crece. Se subdividen según la intensidad de la respuesta:
   - *Bienes de Primera Necesidad ($0 < E_I <= 1$)*: La cantidad demandada crece en menor proporción que el aumento del ingreso. Al volverse más rica, la familia gasta más en términos absolutos en alimentos básicos o servicios esenciales, pero el porcentaje que estos representan en el presupuesto total cae (*Ley de Engel*).
   - *Bienes de Lujo o Superiores ($E_I > 1$)*: La cantidad demandada crece más que proporcionalmente ante mejoras en el ingreso. Al incrementarse el nivel socioeconómico, el gasto en estos rubros absorbe una cuota creciente de la renta disponible.
     _Ejemplos_: Alta tecnología, hotelería premium, automóviles de alta gama, servicios de ocio selecto.

---

=== Elasticidad Precio Cruzada de la Demanda ($E_(x y)$)

Mide la variación porcentual en la cantidad demandada del bien $X$ provocada por una variación de un 1% en el precio del bien $Y$, manteniendo constantes las demás variables:

$ E_(x y) = ("%" Delta Q_x) / ("%" Delta P_y) = (d Q_x) / (d P_y) dot P_y / Q_x $

El *signo algebraico* de la elasticidad cruzada es el criterio definitivo para determinar la relación tecnológica o de preferencia entre dos bienes:

#table(
  columns: (1fr, 1.2fr, 2.5fr, 1.8fr),
  fill: (x, y) => if y == 0 { rgb("#e8f4f8") } else { none },
  stroke: 0.5pt + rgb("#cccccc"),
  align: (center, left, left, left),
  table.header([*Signo de $E_(x y)$*], [*Relación Económica*], [*Mecanismo Subyacente*], [*Ejemplos*]),
  [$E_(x y) > 0$],
  [Bienes Sustitutos],
  [Un aumento en el precio del bien $Y$ encarece su consumo relativo; los consumidores reemplazan $Y$ consumiendo más del bien $X$.],
  [Carne vacuna y pollo; café y té; manteca y margarina.],

  [$E_(x y) < 0$],
  [Bienes Complementarios],
  [Un aumento en el precio de $Y$ reduce la demanda de $Y$, y dado que $X$ se consume conjuntamente con él, la demanda de $X$ también se contrae.],
  [Automóviles y nafta; impresoras y cartuchos de tinta; café y azúcar.],

  [$E_(x y) = 0$],
  [Bienes Independientes],
  [Las variaciones en el precio de $Y$ no tienen ningún impacto perceptible sobre las decisiones de compra del bien $X$.],
  [Cuadernos universitarios y neumáticos para camiones.]
)

---

== 6. Intervención del Estado en los Mercados: Fundamentos y Bienestar

#cuadro-concepto(titulo: [Motivaciones y Mecanismos de la Intervención Pública])[
  El Estado interviene en la economía de mercado por tres razones primarias:
  1. *Fallas de mercado*: cuando existen externalidades, bienes públicos o asimetrías de información que alejan al equilibrio competitivo de la eficiencia social.
  2. *Objetivos distributivos y de equidad*: considerar que el precio de equilibrio de mercado es socialmente inaceptable (demasiado alto para familias vulnerables en alimentos básicos o alquileres, o demasiado bajo para trabajadores no calificados o pequeños productores).
  3. *Recaudación tributaria*: necesidad de financiar bienes públicos, infraestructura y transferencias.

  Las formas de intervención se dividen en dos categorías analíticas:
  - *Intervenciones Directas*: Fijación administrativa de precios (precios máximos o mínimos) o cantidades (cuotas de importación o producción).
  - *Intervenciones Indirectas*: Creación de impuestos o subsidios que alteran los incentivos de precios de demandantes y oferentes sin prohibir transacciones.
]

=== Marco de Evaluación: Los Excedentes Económicos

Para evaluar objetivamente si una política económica beneficia o perjudica a la sociedad, la microeconomía utiliza el concepto de *Bienestar Social Total ($W$)*, definido como la suma del Excedente del Consumidor ($E C$), el Excedente del Productor ($E P$) y la Recaudación Neta del Sector Público ($T$ o $- "Gasto Fiscal"$):

$ W = E C + E P + "Ingresos Fiscales" - "Costos Fiscales" $

En un mercado libre y competitivo sin externalidades, el equilibrio $(P^*, Q^*)$ maximiza $W$. Cualquier intervención gubernamental que distorsione el precio o la cantidad genera transferencias de bienestar entre sectores y, casi invariablemente, una *Pérdida Irrecuperable de Eficiencia* (PIE o _Deadweight Loss_), que representa valor económico destruido que nadie captura.

---

== 7. Controles Directos de Precios: Precios Máximos y Mínimos

=== A. Precio Máximo (Price Ceiling)

Un *precio máximo* legal prohíbe a los oferentes cobrar un precio superior al nivel establecido administrativamente por la autoridad regulatoria ($P_max$).

#cuadro-atencion(titulo: [Condición de Efectividad (Vinculante)])[
  - Si el gobierno fija $P_max >= P^*$, la restricción es *no vinculante* o inoperante: el mercado seguirá operando libremente en su equilibrio competitivo $P^*$.
  - Si el gobierno fija $P_max < P^*$, el precio legal es *vinculante*: el precio se ve forzado a descender, generando distorsiones estructurales profundas.
]

*Efectos económicos de un Precio Máximo vinculante*:
1. *Desequilibrio de mercado (Escasez crónica)*:
   Al abaratarse el producto, la cantidad demandada se expande a $Q_d$, pero la cantidad que las empresas están dispuestas a producir y vender cae a $Q_s$. Se produce un exceso de demanda o escasez cuantitativa:
   $ "Escasez" = Q_d - Q_s > 0 $
2. *Cantidad efectivamente transada*:
   El intercambio comercial es voluntario. Por lo tanto, la cantidad que realmente se compra y vende en el mercado formal es la menor entre lo que se ofrece y lo que se demanda:
   $ Q_("transada") = min(Q_s, Q_d) = Q_s $
   El lado corto del mercado (la oferta) impone la restricción. Aunque hay miles de personas dispuestas a comprar, la escasez física de producto limita las ventas.
3. *Racionamiento no por precio y externalidades negativas*:
   Al desaparecer el precio como mecanismo de asignación, surgen mecanismos alternativos ineficientes: colas y esperas interminables (desperdicio masivo de horas de trabajo), amiguismo, corrupción administrativa, degradación de la calidad del producto y el inevitable surgimiento del *mercado negro* (donde el bien escaso se revende ilegalmente a precios mucho mayores que el equilibrio original).

#v(0.5em)
#imagen("Precio Máximo vinculante: fijación por debajo del equilibrio, exceso de demanda (escasez), contracción de la producción a Qs y áreas de excedente y PIE")

*Análisis analítico del bienestar social en un Precio Máximo*:
- *Excedente del Productor*: Los vendedores sufren una doble pérdida. Pierden el rectángulo $A$ (transferido a los consumidores que logran comprar más barato) y pierden el triángulo $C$ (ganancias de intercambio sobre las unidades que ya no producen).
  $ Delta E P = - (A + C) < 0 $
- *Excedente del Consumidor*: El efecto neto sobre los compradores es ambiguo:
  - Quienes logran conseguir el bien se benefician cobrándolo a $P_max$, ganando el rectángulo $A$.
  - Los consumidores desplazados que se quedan sin producto sufren la pérdida del triángulo $B$.
  $ Delta E C = A - B $
  Si la demanda es sumamente inelástica ($B > A$), ¡el excedente del consumidor puede incluso terminar disminuyendo respecto del equilibrio original!
- *Pérdida Irrecuperable de Eficiencia*:
  Sumando las variaciones sociales:
  $ Delta W = Delta E C + Delta E P = (A - B) - (A + C) = - (B + C) $
  $ "PIE" = B + C > 0 $
  El triángulo $B + C$ representa transacciones mutuamente beneficiosas que fueron eliminadas por la intervención estatal.

---

=== B. Precio Mínimo (Price Floor)

Un *precio mínimo* legal establece una tarifa obligatoria por debajo de la cual está terminantemente prohibido comprar o vender un bien o factor productivo ($P_min$).

- Para ser vinculante, el precio mínimo debe situarse *por encima del equilibrio* ($P_min > P^*$).
- *Efectos económicos*:
  1. *Excedente de producción*: A un precio elevado, las empresas desean colocar una gran cantidad $Q_s$, pero los consumidores restringen sus compras a $Q_d$. Se genera un exceso de oferta persistente: $"Excedente" = Q_s - Q_d > 0$.
  2. *Cantidad efectivamente transada*: La demanda restringe el volumen transado:
     $ Q_("transada") = min(Q_s, Q_d) = Q_d $
  3. *El caso del Salario Mínimo*: En el mercado laboral, los trabajadores son la oferta y las empresas la demanda. Un salario mínimo fijado por encima del equilibrio competitivo provoca que más personas deseen trabajar ($L_s$ sube), pero las empresas contratan menos personal ($L_d$ baja). La diferencia representa *desempleo involuntario* concentrado en los trabajadores más vulnerables y menos calificados.
  4. *Pérdida Irrecuperable de Eficiencia*:
     - Los consumidores pierden el rectángulo transferido $A$ y el triángulo de bienestar $B$: $Delta E C = - (A + B) < 0$.
     - Los productores cobran más por lo que venden (ganan $A$), pero pierden las ventas caídas ($C$): $Delta E P = A - C$.
     - La sociedad en su conjunto sufre una pérdida irrecuperable neta $"PIE" = B + C$.

#v(0.5em)
#imagen("Precio Mínimo vinculante: fijación por encima del equilibrio, exceso de oferta, caída de la cantidad consumida a Qd y pérdida de eficiencia B + C")

---

== 8. Impuestos Indirectos, Cuña Fiscal e Incidencia Tributaria

Los gobiernos gravan bienes y servicios para obtener recursos fiscales. Analizaremos el impacto de un *impuesto específico unitario* ($t$ pesos por cada unidad comercializada).

=== La Cuña Fiscal y el Principio de Neutralidad Legal

Un impuesto unitario de cuantía $t$ introduce una brecha o *cuña fiscal* entre el precio que paga el consumidor ($P_c$) y el precio neto que efectivamente embolsa el productor ($P_p$):

$ P_c - P_p = t $

#cuadro-concepto(titulo: [Principio de Neutralidad Legal del Impuesto])[
  En términos económicos, *da exactamente igual si la ley tributaria establece que el impuesto debe pagarlo formalmente el comprador o si debe remitirlo el vendedor*.

  - Si se aplica al comprador, la curva de demanda se desplaza verticalmente hacia abajo en la distancia $t$.
  - Si se aplica al vendedor, la curva de oferta se desplaza verticalmente hacia arriba en la distancia $t$.

  En ambos casos, el punto de llegada real es exactamente el mismo: el precio final pagado por los compradores $P_c$, el precio neto percibido por los vendedores $P_p$, la cantidad de equilibrio reducida $Q_t$, la recaudación fiscal y la pérdida de bienestar son idénticos. La economía responde a la brecha relativa, no al sello burocrático de quién deposita el cheque en la agencia impositiva.
]

=== Incidencia Tributaria: ¿Quién Paga Realmente el Impuesto?

La *incidencia económica* describe cómo se reparte verdaderamente la carga financiera del impuesto entre compradores y productores:
- Carga unitaria soportada por los consumidores: $Delta P_c = P_c - P^*$
- Carga unitaria soportada por los productores: $Delta P_p = P^* - P_p$

La suma de ambas cargas absorbe la totalidad del gravamen: $Delta P_c + Delta P_p = t$.

#cuadro-concepto(titulo: [Regla de Oro de la Incidencia Impositiva])[
  *La carga de un impuesto recae con mayor fuerza sobre el lado del mercado que sea más inelástico (aquel con menor capacidad de sustitución y escape).*

  Analíticamente, el reparto de la carga es inversamente proporcional a las elasticidades de las curvas:
  $ (Delta P_c) / (Delta P_p) = E_s / |E_d| $
]

*Casos extremos y patrones de traslación*:
1. *Demanda inelástica y Oferta elástica*:
   Los compradores casi no tienen sustitutos ni pueden prescindir del bien. El vendedor traslada prácticamente el 100% del impuesto al precio de mostrador. Los consumidores asumen casi toda la carga tributaria. (Ejemplo: cigarrillos, nafta).
2. *Demanda elástica y Oferta inelástica*:
   Los consumidores tienen múltiples alternativas y huyen ante aumentos de precio. La empresa no puede trasladar el impuesto porque perdería a todos sus clientes; debe absorberlo rebajando su margen de ganancia. Los productores soportan la mayor parte de la carga.

#v(0.5em)
#imagen("Incidencia impositiva comparada: a la izquierda, demanda inelástica traslada casi todo el tributo al consumidor; a la derecha, oferta inelástica obliga al productor a absorber la carga")

=== Recaudación Fiscal y Pérdida Irrecuperable de Eficiencia

Al contraerse la producción de $Q^*$ a $Q_t$, el mercado sufre una contracción en su volumen de actividad:
- *Recaudación Fiscal del Estado ($T$)*:
  $ T = t dot Q_t = (P_c - P_p) dot Q_t $
  Geométricamente, corresponde al rectángulo de altura $t$ y base $Q_t$. Este dinero no se destruye: ingresa a las arcas públicas.
- *Pérdida Irrecuperable de Eficiencia (PIE)*:
  $ "PIE" = 1/2 dot t dot (Q^* - Q_t) $
  Es el triángulo que surge entre la cantidad con impuesto $Q_t$ y la cantidad original $Q^*$. Representa el excedente social de las unidades que dejan de transarse debido a la distorsión impositiva.

#cuadro-atencion(titulo: [Relación Cuadrática entre Impuesto y Pérdida de Eficiencia])[
  La pérdida irrecuperable de eficiencia crece de manera *cuadrática* con el tamaño de la alícuota tributaria ($t^2$):
  - Si el Estado duplica un impuesto (de \$5 a \$10), la recaudación puede crecer, pero la PIE se multiplica por cuatro ($2^2 = 4$).
  - Si se triplica el impuesto, la PIE se multiplica por nueve ($3^2 = 9$).

  Por este motivo, en finanzas públicas se recomienda estructurar sistemas tributarios de *base amplia y alícuotas moderadas*, en lugar de gravar pocos bienes con tasas asfixiantes.
]

#v(0.5em)
#imagen("Efecto de un impuesto unitario: cuña Pc - Pp = t, recaudación fiscal (rectángulo central) y pérdida irrecuperable de eficiencia (triángulo PIE)")

---

== 9. Ejercicio Práctico Integrador de Clase (Resuelto Paso a Paso)

A continuación se desarrolla de forma exhaustiva el ejercicio evaluado durante la clase práctica, cubriendo el equilibrio inicial, la fijación de un precio máximo y la implementación de un impuesto por unidad.

#cuadro-ejemplo(titulo: [Enunciado del Modelo de Mercado de la Clase])[
  Considere un mercado competitivo definido por las siguientes funciones de demanda y de oferta:
  - *Demanda*: $P = 100 - Q$
  - *Oferta*: $P = 20 + Q$

  Se pide:
  1. Calcular el precio y la cantidad de equilibrio competitivo ($P^*, Q^*$).
  2. Determinar el Excedente del Consumidor ($E C$), el Excedente del Productor ($E P$) y el Excedente Total ($E T$).
  3. Evaluar el impacto de fijar un *precio máximo de \$50*: cantidad transada, excedentes y pérdida irrecuperable de eficiencia (PIE).
  4. Evaluar el impacto de fijar un *impuesto específico de \$5 por unidad*: nuevos precios ($P_c, P_p$), cantidad transada, recaudación, excedentes y PIE.
]

=== Resolución de la Parte 1: Equilibrio Competitivo Inicial

Igualamos el precio de demanda con el de oferta:
$ 100 - Q = 20 + Q => 100 - 20 = Q + Q => 80 = 2 Q => Q^* = 40 $

Reemplazando en cualquiera de las ecuaciones:
$ P^* = 100 - (40) = 60 $

*Cálculo de los Excedentes*:
- *Excedente del Consumidor*: Triángulo entre el precio máximo que los compradores estaban dispuestos a pagar ($P = 100$) y el precio de equilibrio ($P^* = 60$), sobre una base de $Q^* = 40$:
  $ E C = (("Precio de Reserva Máximo" - P^*) dot Q^*) / 2 = ((100 - 60) dot 40) / 2 = (40 dot 40) / 2 = 800 $
- *Excedente del Productor*: Triángulo entre el precio de equilibrio ($P^* = 60$) y el costo marginal mínimo de oferta ($P = 20$), sobre la misma base:
  $ E P = ((P^* - "Precio de Reserva Mínimo") dot Q^*) / 2 = ((60 - 20) dot 40) / 2 = (40 dot 40) / 2 = 800 $
- *Excedente Total*:
  $ E T = E C + E P = 800 + 800 = 1600 $

---

=== Resolución de la Parte 2: Precio Máximo de \$50

El gobierno impone por ley $P_max = 50$. Dado que $50 < 60$, la regulación es *vinculante*.

*Paso 1: Cantidades demandadas y ofrecidas al precio regulado*
- Cantidad ofrecida: $50 = 20 + Q_s => Q_s = 50 - 20 = 30$
- Cantidad demandada: $50 = 100 - Q_d => Q_d = 100 - 50 = 50$
- *Escasez*: $Q_d - Q_s = 50 - 30 = 20$ unidades faltantes.
- *Cantidad transada efectiva*: $Q_("efectiva") = min(Q_s, Q_d) = 30$ unidades.

*Paso 2: Valoración marginal del consumidor en la cantidad transada*
¿Cuánto valora el consumidor la unidad número $30$?
$ P_d(30) = 100 - 30 = 70 $

*Paso 3: Cálculo del Excedente del Productor*
Los productores venden $30$ unidades a un precio de \$50:
$ E P_"nuevo" = ((50 - 20) dot 30) / 2 = (30 dot 30) / 2 = 450 $
- Pérdida de los productores: $Delta E P = 450 - 800 = -350$.
  - Transferencia $A$ entregada a los consumidores: $(60 - 50) dot 30 = 300$.
  - Triángulo de pérdida por unidades no producidas $C$: $((60 - 50) dot (40 - 30)) / 2 = (10 dot 10) / 2 = 50$.
  - Total: $- (A + C) = - (300 + 50) = -350$.

*Paso 4: Cálculo del Excedente del Consumidor*
El excedente del consumidor está delimitado por el trapecio comprendido entre la curva de demanda (desde $100$ hasta $70$) y el precio de \$50 para las $30$ unidades vendidas:
$ E C_"nuevo" = ((100 - 50) + (70 - 50)) / 2 dot 30 = (50 + 20) / 2 dot 30 = 35 dot 30 = 1050 $
- Variación de los consumidores: $Delta E C = 1050 - 800 = +250$.
  - Ganancia por comprar más barato (rectángulo $A$): $+300$.
  - Pérdida por las $10$ unidades racionadas que ya no pueden comprar (triángulo $B$):
    $ B = ((70 - 60) dot (40 - 30)) / 2 = (10 dot 10) / 2 = 50 $
  - Balance neto: $Delta E C = A - B = 300 - 50 = +250$.

*Paso 5: Pérdida Irrecuperable de Eficiencia (PIE)*
- Excedente Total con precio máximo: $E T_("nuevo") = E C + E P = 1050 + 450 = 1500$.
- Pérdida social total:
  $ "PIE" = E T_("original") - E T_("nuevo") = 1600 - 1500 = 100 $
  Nótese que coincide exactamente con la suma geométrica de los dos triángulos perdidos:
  $ "PIE" = B + C = 50 + 50 = 100 $

---

=== Resolución de la Parte 3: Impuesto de \$5 por Unidad Vendida

El gobierno retira el precio máximo y aplica un gravamen de $t = 5$.

*Paso 1: Aplicación de la cuña impositiva*
Sabemos que la relación entre el precio del consumidor y del productor es:
$ P_c - P_p = 5 => P_c = P_p + 5 $

Sustituimos las ecuaciones de demanda y de oferta:
$ P_c = 100 - Q $
$ P_p = 20 + Q $

Reemplazando en la cuña:
$ (100 - Q) - (20 + Q) = 5 $
$ 80 - 2 Q = 5 => 2 Q = 75 => Q_t = 37.5 $

*Paso 2: Precios finales de compradores y vendedores*
- Precio pagado por el consumidor:
  $ P_c = 100 - 37.5 = 62.5 $
- Precio recibido por el productor:
  $ P_p = 20 + 37.5 = 57.5 $
- Verificación de la cuña fiscal: $P_c - P_p = 62.5 - 57.5 = 5$.

*Paso 3: Reparto de la carga tributaria*
- Consumidores pagan: $Delta P_c = 62.5 - 60 = 2.50$ (50% del impuesto).
- Productores absorben: $Delta P_p = 60 - 57.5 = 2.50$ (50% del impuesto).
- La carga se divide en partes exactamente iguales porque ambas curvas tienen la misma pendiente en valor absoluto ($|-1| = 1$).

*Paso 4: Nuevos Excedentes, Recaudación y PIE*
- *Excedente del Consumidor*:
  $ E C = ((100 - 62.5) dot 37.5) / 2 = (37.5 dot 37.5) / 2 = 1406.25 / 2 = 703.125 approx 703.13 $
- *Excedente del Productor*:
  $ E P = ((57.5 - 20) dot 37.5) / 2 = (37.5 dot 37.5) / 2 = 1406.25 / 2 = 703.125 approx 703.13 $
- *Recaudación Fiscal del Estado ($T$)*:
  $ T = t dot Q_t = 5 dot 37.5 = 187.50 $
- *Bienestar Social Total*:
  $ W = E C + E P + T = 703.125 + 703.125 + 187.50 = 1406.25 + 187.50 = 1593.75 $
- *Pérdida Irrecuperable de Eficiencia*:
  $ "PIE" = 1600 - 1593.75 = 6.25 $
  Verificación por fórmula del triángulo:
  $ "PIE" = (t dot (Q^* - Q_t)) / 2 = (5 dot (40 - 37.5)) / 2 = (5 dot 2.5) / 2 = 12.5 / 2 = 6.25 $

---

=== Cuadro Comparativo de los Resultados del Ejercicio

#table(
  columns: (2fr, 1.2fr, 1.5fr, 1.5fr),
  fill: (x, y) => if y == 0 { rgb("#e8f4f8") } else { none },
  stroke: 0.5pt + rgb("#cccccc"),
  align: (left, center, center, center),
  table.header([*Variable / Indicador*], [*Equilibrio Libre*], [*Precio Máximo ($50$)*], [*Impuesto ($t = 5$)*]),
  [Precio al consumidor ($P_c$)], [$60$], [$50$], [$62.50$],
  [Precio al productor ($P_p$)], [$60$], [$50$], [$57.50$],
  [Cantidad transada ($Q$)], [$40$], [$30$], [$37.50$],
  [Excedente del Consumidor ($E C$)], [$800$], [$1050$], [$703.13$],
  [Excedente del Productor ($E P$)], [$800$], [$450$], [$703.13$],
  [Recaudación Estatal ($T$)], [$0$], [$0$], [$187.50$],
  [Bienestar Social Total ($W$)], [$1600$], [$1500$], [$1593.75$],
  [*Pérdida de Eficiencia (PIE)*], [*$0$*], [*$100$*], [*$6.25$*]
)

#cuadro-concepto(titulo: [Conclusión Crítica de Política Económica planteada en la Clase])[
  Al comparar ambas intervenciones, se observa un contraste pedagógico fundamental:
  - El precio máximo provocó una contracción de $10$ unidades en el mercado, destruyó \$350 de excedente del productor y generó una severa ineficiencia social ($"PIE" = 100$) sin aportarle ni un solo centavo de ingresos al Estado.
  - El impuesto de \$5, en cambio, generó una recaudación genuina de \$187.50 para el financiamiento de políticas públicas con una pérdida de eficiencia de apenas \$6.25.
]

---

=== Práctica para el Hogar: Extensión con Impuesto $t = 10$

En la última diapositiva de la clase se propone recalcular el impacto si el impuesto se duplica a $t = 10$:

1. *Nueva cantidad transada*:
   $ (100 - Q) - (20 + Q) = 10 => 80 - 2 Q = 10 => 2 Q = 70 => Q_t = 35 $
2. *Precios resultantes*:
   $ P_c = 100 - 35 = 65 quad (Delta P_c = +5) $
   $ P_p = 20 + 35 = 55 quad (Delta P_p = -5) $
   La carga impositiva sigue repartiéndose al 50% para cada sector.
3. *Excedentes y Recaudación*:
   - $E C = ((100 - 65) dot 35) / 2 = 35^2 / 2 = 612.50$
   - $E P = ((55 - 20) dot 35) / 2 = 35^2 / 2 = 612.50$
   - Recaudación: $T = 10 dot 35 = 350.00$
4. *Pérdida Irrecuperable de Eficiencia*:
   $ "PIE" = (t dot (Q^* - Q_t)) / 2 = (10 dot (40 - 35)) / 2 = (10 dot 5) / 2 = 25.00 $

#cuadro-registro(titulo: [Comprobación Matemática de la Relación Cuadrática])[
  Cuando el impuesto unitario pasó de $t = 5$ a $t = 10$ (se duplicó por un factor de $2$):
  $ ("PIE"_(t=10)) / ("PIE"_(t=5)) = 25 / 6.25 = 4 = 2^2 $
  La pérdida de eficiencia se cuadruplicó con exactitud matemática, verificando que $"PIE" prop t^2$.
]

---

== 10. Elasticidad Aplicada a Decisiones de Negocio: Traslación de Costos (_Pass-Through_)

Frente a un shock adverso de costos (aumento de salarios nominales, devaluación que encarece insumos importados, o alza de tarifas de energía), las empresas enfrentan el dilema estratégico de si pueden o no trasladar ese incremento al precio final de venta.

La microeconomía demuestra que la respuesta depende exclusivamente de la *elasticidad de la demanda a la que se enfrenta la firma*:

- *Si la empresa enfrenta una demanda inelástica*:
  Los clientes poseen pocas alternativas viables o consideran el bien imprescindible. La empresa puede aumentar sus precios trasladando prácticamente la totalidad del incremento de costos al mostrador, sabiendo que el volumen físico vendido se reducirá de manera insignificante. Sus ingresos totales aumentarán y sus márgenes operativos quedarán protegidos.
- *Si la empresa enfrenta una demanda elástica*:
  El mercado está poblado de competidores y bienes sustitutos cercanos. Si la firma intenta transferir el costo aumentando los precios en la misma proporción, sus ventas se desplomarán catastróficamente. A la empresa le resulta económicamente más conveniente absorber el impacto reduciendo su margen de beneficio (_markup_) antes que perder cuota de mercado.

---

== 11. Caso de Discusión Macroeconómica: La Curva de Laffer

#cuadro-concepto(titulo: [Mecanismo Teórico de la Curva de Laffer])[
  La *Curva de Laffer* postula una relación no lineal entre la alícuota tributaria ($tau$, expresada en porcentaje de 0% a 100%) y la recaudación impositiva total del Estado ($T$).

  $ T(tau) = tau dot B(tau) $

  Donde $B(tau)$ representa la *base imponible* (el total de ingresos declarados, masa salarial, ventas o capital sobre el que se aplica el gravamen).
]

=== El Mecanismo Económico Subyacente

Al derivar la recaudación impositiva respecto de la alícuota $tau$:
$ (d T) / (d tau) = B(tau) + tau dot (d B) / (d tau) = B(tau) (1 + tau / B dot (d B) / (d tau)) = B(tau) (1 - epsilon_B) $

Donde $epsilon_B = - tau / B dot (d B) / (d tau)$ representa la *elasticidad de la base imponible respecto a la alícuota*.

Existen dos fuerzas contrapuestas:
1. *Efecto directo de tasa*: por cada peso gravado, el fisco retiene un porcentaje mayor ($B(tau) > 0$).
2. *Efecto incentivo sobre la base*: a tasas impositivas mayores, los individuos y las empresas tienen menos incentivos para trabajar horas extra, invertir o formalizar transacciones, y mayores incentivos para la elusión fiscal, la evasión o la fuga de capitales ($(d B) / (d tau) < 0$).

- A tasas muy bajas, el efecto tasa predomina ($epsilon_B < 1$) y la recaudación crece al subir la alícuota.
- A tasas excesivamente elevadas, el desincentivo a la producción y la evasión destruyen la base imponible con tanta fuerza ($epsilon_B > 1$) que la recaudación neta total *disminuye*.
- En los extremos obvios: si $tau = 0%$, la recaudación es $0$; si $tau = 100%$, nadie produce formalmente y la recaudación también es $0$. Por el Teorema del Valor Medio y de Rolle, necesariamente existe al menos un punto intermedio $tau^*$ donde la recaudación alcanza su máximo.

#v(0.5em)
#imagen("La Curva de Laffer: recaudación fiscal en función de la alícuota impositiva (%), mostrando la zona normal de crecimiento, el máximo óptimo y la zona prohibitiva a la derecha")

---

=== Lo que NO se Discute vs. Lo que SÍ se Discute

En el debate público suele confundirse el principio conceptual con la evidencia empírica:
- *Lo que NO está en discusión*: El mecanismo teórico económico. Cualquier economista riguroso coincide en que la base imponible reacciona a los incentivos y que existe un techo de imposición a partir del cual subir la tasa destruye recursos fiscales.
- *Lo que SÍ está en discusión*: *¿Dónde se ubica empíricamente ese punto máximo ($tau^*$)?* La respuesta varía radicalmente entre países, épocas históricas, tipos de impuesto y calidad institucional, porque depende de la elasticidad empírica de la base imponible.

#table(
  columns: (2fr, 1.8fr, 2.5fr),
  fill: (x, y) => if y == 0 { rgb("#e8f4f8") } else { none },
  stroke: 0.5pt + rgb("#cccccc"),
  align: (left, center, left),
  table.header([*Investigación Académica*], [*Estimación del Máximo ($tau^*$)*], [*Metodología y Supuesto de Elasticidad*]),
  [Hsing (1996)],
  [Entre 32.7% y 35.2%],
  [Impuesto a la renta personal en EE.UU. (período 1959-1991).],

  [Trabandt y Uhlig (2011)],
  [Margen de suba disponible],
  [Impuesto al trabajo en EE.UU. Demostraron que la tasa vigente podía incrementarse y la recaudación crecer hasta un 30% adicional antes del pico.],

  [Diamond y Saez (2011)],
  [$approx 73%$],
  [Tasa marginal máxima sobre los tramos más ricos en EE.UU., bajo un supuesto conservador de elasticidad de oferta laboral de $epsilon = 0.25$.]
)

---

=== Respuestas Analíticas a las Preguntas Guía de Clase

#cuadro-concepto(titulo: [Pregunta 1: ¿Es un argumento ideológico o lógico?])[
  *Respuesta*: Es una consecuencia lógica y matemática ineludible. No requiere ningún sesgo ideológico: se deriva directamente del principio microeconómico de que los agentes reaccionan ante incentivos y precios relativos.
]

#cuadro-concepto(titulo: [Pregunta 2: ¿Por qué las estimaciones serias difieren tanto?])[
  *Respuesta*: Porque estudian impuestos diferentes (renta de las personas, utilidades corporativas, mano de obra, consumo), en países con diferente grado de informalidad y fiscalización, y sobre todo porque cada autor utiliza un supuesto o estimación distinta de la *elasticidad de la base imponible*, que es un parámetro empírico cambiante.
]

#cuadro-concepto(titulo: [Pregunta 3: "¿Bajar impuestos siempre aumenta la recaudación?"])[
  *Respuesta*: Esta afirmación es falaz en términos generales. Para evaluar su veracidad, se le debe preguntar a quien la formula:
  1. ¿En qué nivel específico de alícuota se encuentra el tributo actualmente?
  2. ¿Cuál es la elasticidad empírica demostrada de la base imponible frente a esa tasa?
  Reducir alícuotas *sólo aumenta la recaudación si la economía se encuentra a la derecha del punto óptimo* (en la zona prohibitiva donde $epsilon_B > 1$). Si el país está a la izquierda del óptimo, reducir la tasa reducirá inexorablemente los ingresos fiscales.
]

#cuadro-concepto(titulo: [Pregunta 4: ¿Qué evidencia se requiere para saber si un país está a la derecha del óptimo?])[
  *Respuesta*: Se requiere evidencia econométrica rigurosa sobre la *elasticidad de respuesta de la base imponible* ante reformas fiscales pasadas (reacción de la recaudación efectiva, volumen de formalización o deslocalización de empresas y trabajadores tras cambios impositivos exógenos).
]

---

== 12. Síntesis Conceptual y Glosario Rápido

#table(
  columns: (1.5fr, 1.2fr, 1.2fr, 2.5fr),
  fill: (x, y) => if y == 0 { rgb("#e8f4f8") } else { none },
  stroke: 0.5pt + rgb("#cccccc"),
  align: (left, center, center, left),
  table.header([*Tipo de Intervención*], [*Precio Efectivo*], [*Cantidad Transada*], [*Impacto en Bienestar y Eficiencia*]),
  [Mercado Libre Competitivo], [$P^*$], [$Q^*$], [Máxima eficiencia social. $"PIE" = 0$.],
  [Precio Máximo Vinculante ($P_max < P^*$)], [Baja a $P_max$], [Cae a $Q_s$ (lado corto)], [Escasez, racionamiento ineficiente, mercado negro. $"PIE" = B + C$.],
  [Precio Mínimo Vinculante ($P_min > P^*$)], [Sube a $P_min$], [Cae a $Q_d$ (lado corto)], [Exceso de oferta, desempleo en mercado laboral. $"PIE" = B + C$.],
  [Impuesto Unitario ($t$)], [$P_c > P^* > P_p$], [Cae a $Q_t$], [Cuña fiscal, recaudación $T = t dot Q_t$. $"PIE" = 1/2 t (Q^* - Q_t) prop t^2$.]
)

=== Glosario de Términos Económicos de la Clase
- *Elasticidad*: Variación porcentual de una variable económica ante una variación del 1% en otra.
- *Cuña Fiscal*: Brecha monetaria impuesta por un tributo entre el valor abonado por el demandante y el retenido por el oferente ($P_c - P_p = t$).
- *Incidencia Económica*: Carga real última de un gravamen, determinada por las elasticidades relativas y no por la designación legal del sujeto pasivo.
- *Lado Corto del Mercado*: En una situación de desequilibrio, el volumen que determina las transacciones efectivas es el menor entre la cantidad demandada y la ofrecida.
- *Pérdida Irrecuperable de Eficiencia (PIE)*: Pérdida neta de excedente social ocasionada por distorsiones de precios que impiden intercambios mutuamente ventajosos.
- *Pass-Through*: Grado o porcentaje en el que una variación en los costos de producción es trasladada al precio final cobrado a los consumidores.
- *Curva de Laffer*: Representación gráfica de la relación entre la tasa impositiva y los fondos recaudados, reflejando el compromiso entre alícuota y base gravada.
