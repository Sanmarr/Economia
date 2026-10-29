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