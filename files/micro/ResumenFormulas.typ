#set page(
  paper: "a4",
  columns: 1,
  margin: (x: 1.2cm, y: 1.25cm),
)
#set text(size: 10pt, font: "Inter")
#set par(leading: 0.8em, spacing: 0.75em)
#set list(spacing: 0.8em)
#show heading.where(level: 1): set text(size: 15pt, fill: rgb("#104e8b"))
#show heading.where(level: 2): set text(size: 11pt, fill: rgb("#1b6ec2"))
#show heading.where(level: 3): set text(size: 9pt, fill: rgb("#34495e"))

#let variable(name, meaning) = [
  #text()[#name]
  #text(fill: rgb("#707070"))[: #meaning;]
]

= Resumen de fórmulas


== Clase 1 · Oferta, demanda y mercado

=== Elección y utilidad

$pi(q) = p dot q - C(q)$

$d pi / d q = p - C'(q) = 0 quad => quad p = C'(q) = C M g$

$U M g = Delta U T / Delta q$

La decisión marginal óptima iguala el beneficio marginal con el costo marginal.

=== Demanda y oferta de mercado

$Q_D(p) = sum_(i=1)^N q_i(p)$

$Q_S(p) = sum_(j=1)^M q_j(p)$

$Q_D^X = f(P_X, P_"relacionados", Y, G, E, "Pob", "Otros")$

$Q_S^X = g(P_X, P_"factores", "Tecnología", E, "Clima", N)$

La demanda y la oferta de mercado son sumas horizontales de las cantidades individuales.

=== Equilibrio y bienestar

$Q_D(P^*) = Q_S(P^*) = Q^*$

$E C = sum (D A P - P^*)$

$E C = integral_0^(Q^*) [P_D(q) - P^*] d q$

Para demanda lineal: $E C = 1/2 dot Q^* dot (P_max - P^*)$

$E P = sum (P^* - C M g)$

$E P = integral_0^(Q^*) [P^* - P_S(q)] d q$

Para oferta lineal: $E P = 1/2 dot Q^* dot (P^* - P_min)$

$E T = E C + E P = integral_0^(Q^*) [P_D(q) - P_S(q)] d q$

La asignación eficiente cumple $B M g = C M g$.

=== Variables

- #variable([$pi$], [beneficio económico]); #variable([$p$], [precio]); #variable([$q$], [cantidad de una persona o firma]); #variable([$C(q)$], [costo total]); #variable([$C'(q)$ o $C M g$], [costo marginal]).
- #variable([$U T$], [utilidad total]); #variable([$U M g$], [utilidad marginal]); #variable([$Delta$], [variación]).
- #variable([$Q_D$, $Q_S$], [cantidades agregadas demandada y ofrecida]); #variable([$q_i$, $q_j$], [cantidades individuales]); #variable([$N$], [número de consumidores o empresas, según la fórmula]); #variable([$M$], [número de oferentes en la suma agregada]).
- #variable([$P_X$], [precio del bien $X$]); #variable([$P_"relacionados"$], [precios de bienes relacionados]); #variable([$Y$], [ingreso]); #variable([$G$], [gustos]); #variable([$E$], [expectativas]); #variable([$P_"ob"$], [población]); #variable([$P_"factores"$], [precios de los insumos]); #variable([$N$], [número de empresas]).
- #variable([$P^*$, $Q^*$], [precio y cantidad de equilibrio]); #variable([$P_D(q)$, $P_S(q)$], [curvas inversas de demanda y oferta]).
- #variable([$D A P$], [disposición a pagar]); #variable([$P_max$, $P_min$], [precios de reserva máximo del comprador y mínimo del vendedor]).
- #variable([$E C$, $E P$, $E T$], [excedentes del consumidor, productor y total]); #variable([$B M g$, $C M g$], [beneficios y costos marginales sociales]).

== Clase 2 · Elasticidad e intervención estatal

=== Elasticidades

$E_p = ("%" Delta Q) / ("%" Delta P) = (Delta Q / Q) / (Delta P / P) = (d Q / d P) dot P / Q$

$E_p^"arco" = ((Q_2 - Q_1) / ((Q_1 + Q_2) / 2)) / ((P_2 - P_1) / ((P_1 + P_2) / 2))$

$E_I = ("%" Delta Q_d) / ("%" Delta I) = (d Q_d / d I) dot I / Q_d$

$E_(x y) = ("%" Delta Q_x) / ("%" Delta P_y) = (d Q_x / d P_y) dot P_y / Q_x$

La demanda suele dar $E_p < 0$; para clasificar su sensibilidad se usa $|E_p|$. Si $|E_p| > 1$, es elástica; si $|E_p| < 1$, inelástica; si $|E_p| = 1$, unitaria.

$I T = P dot Q$

$d(I T) / d P = Q (1 + E_p) = Q (1 - |E_p|)$

=== Controles de precios e impuestos

$Q_("transada") = min(Q_s, Q_d)$

Precio máximo vinculante: $Q_d > Q_s$ y escasez $= Q_d - Q_s$.

Precio mínimo vinculante: $Q_s > Q_d$ y excedente $= Q_s - Q_d$.

$W = E C + E P + "Ingresos Fiscales" - "Costos Fiscales"$

$P_c - P_p = t$

$Delta P_c + Delta P_p = t$

$Delta P_c / Delta P_p = E_s / |E_d|$

$T = t dot Q_t$

$P I E = 1/2 dot t dot (Q^* - Q_t)$

Para controles de precios, la pérdida irrecuperable de eficiencia también se representa como $P I E = B + C$, donde $B$ y $C$ son las áreas de intercambios que dejan de realizarse.

=== Impuesto y recaudación

$T(tau) = tau dot B(tau)$

$epsilon_B = - tau / B dot (d B / d tau)$

$d T / d tau = B(tau) (1 - epsilon_B)$

En un impuesto unitario, duplicar $t$ cuadruplica la pérdida de eficiencia si la brecha de cantidades crece proporcionalmente: $P I E prop t^2$.

=== Variables

- #variable([$E_p$], [elasticidad-precio de la demanda]); #variable([$E_p^"arco"$], [elasticidad entre dos observaciones]); #variable([$P$, $Q$], [precio y cantidad]); #variable([subíndices $1$ y $2$], [observaciones inicial y final]).
- #variable([$E_I$], [elasticidad-ingreso]); #variable([$I$], [ingreso de los consumidores]); #variable([$Q_d$], [cantidad demandada]).
- #variable([$E_(x y)$], [elasticidad cruzada]); #variable([$Q_x$], [demanda del bien $X$]); #variable([$P_y$], [precio del bien $Y$]). Signo positivo: sustitutos; negativo: complementarios.
- #variable([$I T$], [ingreso total]); #variable([$P_c$, $P_p$], [precio pagado por consumidores y recibido por productores]); #variable([$t$], [impuesto por unidad]); #variable([$Q_t$], [cantidad transada con impuesto]).
- #variable([$E_s$, $E_d$], [elasticidades de oferta y demanda]); #variable([$Delta P_c$, $Delta P_p$], [partes de la carga tributaria soportadas por cada lado]).
- #variable([$T$], [recaudación]); #variable([$tau$], [alícuota]); #variable([$B(tau)$], [base imponible]); #variable([$epsilon_B$], [elasticidad de la base respecto de la alícuota]).
- #variable([$W$], [bienestar social]); #variable([$P I E$], [pérdida irrecuperable de eficiencia]); #variable([$Q_s$, $Q_d$], [cantidades ofrecida y demandada al precio regulado]).
- #variable([$A$, $B$, $C$], [áreas de transferencias y pérdidas de bienestar usadas al analizar controles de precios]).

== Clase 3 · Producción

=== Producto total, medio y marginal

$q = F(K, L)$

$P M e_L = q / L$

$P M g_L = partial q / partial L$

$P M g_K = partial q / partial K$

$d(P M e_L) / d L = (P M g_L - P M e_L) / L$

El producto medio alcanza su máximo cuando $P M g_L = P M e_L$.

=== Isocuantas y sustitución técnica

$F(K, L) = q_0$

$T M S T = - Delta K / Delta L = P M g_L / P M g_K$

$d q = P M g_L dot d L + P M g_K dot d K = 0$

La TMST mide cuánto capital puede reducirse al añadir trabajo, manteniendo constante la producción.

=== Rendimientos a escala

Para $q = A K^alpha L^beta$:

$F(lambda K, lambda L) = lambda^(alpha + beta) F(K, L)$

- $alpha + beta > 1$: rendimientos crecientes.
- $alpha + beta = 1$: rendimientos constantes.
- $alpha + beta < 1$: rendimientos decrecientes.

=== Variables

- #variable([$q$], [producción]); #variable([$F$], [función o tecnología de producción]); #variable([$K$], [capital]); #variable([$L$], [trabajo]); #variable([$q_0$], [nivel de producción constante de una isocuanta]).
- #variable([$P M e_L$], [producto medio del trabajo]); #variable([$P M g_L$, $P M g_K$], [productos marginales del trabajo y del capital]).
- #variable([$T M S T$], [tasa marginal de sustitución técnica]); #variable([$Delta K / Delta L$], [cambio de capital por cambio de trabajo manteniendo $q$ constante]).
- #variable([$A$], [parámetro tecnológico]); #variable([$alpha$, $beta$], [elasticidades de producción respecto del capital y el trabajo]); #variable([$lambda$], [factor común por el que se escalan los insumos]).

== Clase 4 · Costos

=== Costos de corto plazo

$C T = C F + C V$

$C M g = Delta C T / Delta q = d(C T) / d q$

$C F M e = C F / q$

$C V M e = C V / q$

$C T M e = C T / q = C F M e + C V M e$

$C M g = w / P M g_L$

$C T_"CP" >= C T_"LP"$

El costo marginal corta el costo total medio y el costo variable medio en sus respectivos mínimos.

=== Minimización y costos de largo plazo

$C = w L + r K$

$K = C / r - (w / r) dot L$

$T M S T = w / r$

$P M g_L / w = P M g_K / r$

$C M e L P = C T L P / q$

$C M g L P < C M e L P$: el costo medio de largo plazo cae.

$C M g L P = C M e L P$: costo medio mínimo, o escala eficiente mínima.

$C M g L P > C M e L P$: el costo medio de largo plazo sube.

Costo económico = costo contable + costo de oportunidad − costo hundido.

=== Variables

- #variable([$C T$, $C F$, $C V$], [costos total, fijo y variable]); #variable([$q$], [producción]); #variable([$Delta$], [cambio discreto]).
- #variable([$C M g$], [costo marginal]); #variable([$C F M e$, $C V M e$, $C T M e$], [costos fijo medio, variable medio y total medio]).
- #variable([$w$], [precio del trabajo o salario]); #variable([$r$], [precio de uso del capital]); #variable([$P M g_L$, $P M g_K$], [productos marginales de los factores]).
- #variable([$C$], [costo de una isocosto]); #variable([$L$, $K$], [cantidades de trabajo y capital]); #variable([$T M S T$], [tasa marginal de sustitución técnica]).
- #variable([$C T_"CP"$, $C T_"LP"$], [costo total de corto y largo plazo]); #variable([$C T L P$], [costo total mínimo de largo plazo]); #variable([$C M e L P$, $C M g L P$], [costos medio y marginal de largo plazo]).

== Clase 5 · Competencia perfecta

=== Empresa competitiva y beneficio

$P = I M e = I M g$

$I T(q) = P dot q$

$pi(q) = I T(q) - C T(q) = P dot q - C T(q)$

$d pi / d q = I M g - C M g = 0 quad => quad P = C M g$

$pi = (P - C T M e) q$

La producción óptima se elige sobre el tramo creciente del costo marginal.

=== Cierre y oferta de corto plazo

$pi = I T - C V - C F$

$I T >= C V quad <=> quad P >= C V M e$

Se produce si $P >= min(C V M e)$; por debajo del precio de cierre, $q = 0$.

La oferta individual es el tramo creciente de $C M g$ que queda por encima del mínimo de $C V M e$.

=== Excedente y equilibrio de largo plazo

$E P = I T - C V$

$pi = E P - C F$

$P = C M g = min(C M e L P)$

$Q = D(P)$

$N = Q / q^*$

La oferta de industria es la suma horizontal de las ofertas de las empresas.

=== Variables

- #variable([$P$], [precio de mercado]); #variable([$I M e$], [ingreso medio]); #variable([$I M g$], [ingreso marginal]); #variable([$I T$], [ingreso total]); #variable([$q$], [producción de una empresa]); #variable([$Q$], [cantidad total del mercado]).
- #variable([$pi$], [beneficio económico]); #variable([$C T$, $C V$, $C F$], [costos total, variable y fijo]); #variable([$C T M e$, $C V M e$, $C M g$], [costos total medio, variable medio y marginal]).
- #variable([$E P$], [excedente del productor]); #variable([$D(P)$], [demanda de mercado]); #variable([$N$], [número de empresas]); #variable([$q^*$], [producción óptima individual]).
- #variable([$C M e L P$], [costo medio de largo plazo]); #variable([$min(C V M e)$], [precio mínimo que cubre el costo variable medio]).

== Clase 6 · Monopolio

=== Ingresos y decisión del monopolista

$I T(Q) = P(Q) dot Q$

$I M e = I T / Q = P(Q)$

$I M g = d(I T) / d Q = P + Q dot (d P)/(d Q) < P$

La cantidad que maximiza el beneficio satisface:

$pi(Q) = I T(Q) - C T(Q)$

$d pi / d Q = I M g - C M g = 0 quad => quad I M g = C M g$

El precio óptimo se obtiene reemplazando la cantidad óptima en la demanda: $P^* = P(Q^*)$.

Para una demanda inversa lineal $P = a - b dot Q$ y un costo marginal constante $c$:

$I T = a dot Q - b dot Q^2$

$I M g = a - 2 dot b dot Q$

$Q_m = (a - c)/(2b) quad ; quad P_m = (a + c)/2$

$Q_c = (a - c)/b quad ; quad P_c = c$

$pi = (P_m - C M e)Q_m$

=== Bienestar y pérdida de eficiencia

Para demanda y costo marginal constantes en el ejemplo lineal:

$P I E = 1/2 dot (Q_c - Q_m) dot (P_m - c)$

Con demanda lineal, el excedente del consumidor es:

$E C = 1/2 dot Q dot (a - P)$

El monopolio reduce la cantidad respecto del resultado eficiente y transfiere excedente del consumidor al productor; la PIE es el excedente total perdido en las unidades que dejan de intercambiarse.

=== Poder de mercado: índice de Lerner

$L = (P - C M g) / P$

$I M g = P(1 + 1/E_d) = C M g$

$L = -1/E_d = 1/abs(E_d)$

$E_d = (d Q / d P) dot (P / Q)$

El monopolista elige un punto en el tramo elástico de la demanda: $abs(E_d) > 1$. A menor elasticidad absoluta, mayor margen sobre el costo marginal.

=== Regulación e impuestos

Tope de precio vinculante: el precio cobrado no puede superar el tope $P_t$. Cuando el tope limita el precio por debajo del precio monopólico, el ingreso marginal es $P_t$ para las unidades que puede vender a ese precio, hasta la cantidad demandada a dicho tope.

Monopolio natural:

$C M g < C M e$

$P = C M g quad -> quad Q_"eficiente"$

$P = C M e quad -> quad pi = 0$

Un impuesto específico por unidad $t$ eleva el costo marginal relevante:

$C M g_t = C M g + t$

$I M g = C M g + t$

$pi_t = [P(Q_t) - C M e(Q_t) - t] dot Q_t$

=== Discriminación de precios

Con discriminación de tercer grado, la empresa elige cantidades en cada segmento $i$ de modo que:

$I M g_i(Q_i) = C M g$

$pi = sum_i [P_i(Q_i)Q_i - C_i(Q_i)]$

$L_i = (P_i - C M g)/P_i = 1/abs(E_(d,i))$

El grupo con demanda menos elástica paga el precio más alto. En discriminación perfecta de primer grado, cada comprador paga su disposición máxima a pagar; la producción se expande hasta $D A P = C M g$ y el excedente del consumidor es capturado por la empresa.

=== Aplicación de un margen

Si el margen bruto aproxima el índice de Lerner:

$L approx "margen bruto"$

$abs(E_d) approx 1/L$

La aproximación requiere cautela: el costo de ventas medio no es necesariamente el costo marginal.

=== Variables

- #variable([$Q$, $Q_m$, $Q_c$], [cantidad total, monopólica y competitiva]); #variable([$P(Q)$, $P_m$, $P_c$], [demanda inversa, precio monopólico y competitivo]).
- #variable([$I T$, $I M e$, $I M g$], [ingreso total, medio y marginal]); #variable([$pi$], [beneficio económico]); #variable([$C T$, $C M g$, $C M e$], [costo total, marginal y medio]).
- #variable([$a$, $b$], [intercepto y pendiente positiva de la demanda lineal $P=a-b dot Q$]); #variable([$c$], [costo marginal constante]).
- #variable([$P I E$], [pérdida irrecuperable de eficiencia]); #variable([$E C$], [excedente del consumidor]); #variable([$D A P$], [disposición a pagar]).
- #variable([$L$], [índice de Lerner]); #variable([$E_d$], [elasticidad-precio de la demanda, con signo negativo]); #variable([$P_t$], [tope de precio]); #variable([$t$], [impuesto específico por unidad]).
- #variable([$Q_i$, $P_i$, $I M g_i$, $E_(d,i)$], [cantidad, precio, ingreso marginal y elasticidad en el segmento $i$]).
