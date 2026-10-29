#set document(
  author: "Ignacio Sammartino",
  description: 
    "Resumen de Economia",
  keywords: "Economia", 
  date: auto
)

//Aca hago una Super caratula
#set page(columns: 1, fill: rgb("444352"),
margin: (
  top: 3cm,
  bottom: 2cm,
  x: 0.8cm,
))

//Mas configuraciones -------------------------------------------------------------------------
#set text(lang: "es")
#set text(fill: rgb("fdfdfd"))


//#set math.equation(numbering: "(1.1)")
// Number equations based on the current section and reset the equation counter
#set heading(numbering: "1.")
#show heading.where(level: 1): it => {
  counter(math.equation).update(0)
  it
}

#set math.equation(numbering: n => {
  numbering("(1.1)", counter(heading).get().first(), n)
})


//Seteo el formato del texto
#set text(
  font: "Linux Biolinum O",
  size: 14pt,
  tracking: 0pt, // (Default = 0pt2)
  spacing: 100%,
  fractions: false /* Se rompe por algun motivo con true*/
)

//Formato del titulo
#show title: set text(size: 20pt)
#show title: set align(center)
#show title: set block(below: 4em)

#align(center)[#text(size: 24pt)[Instituto Tecnológico de Buenos Aires]] 

#figure(
  image("files/images/indice/itbaSVG_white.svg", width: 60%)
) <fig:indice>

#title[
61.27 - Análisis de Coyuntura Económica 

Resumen De Micro-Economia
]

//Aca Termina la caratula
#set page(
    header: context [
    #grid(
      columns: (1fr, auto),
      align: center,
      [#align(left)[61.27 - Análisis de Coyuntura Económica ]],
      [#align(right)[#image("files/images/indice/itbaSVG.svg", width: 33%)]]
    )
  ],
  numbering: "1 of 1",
  columns: 2,
)

// Personalización estilizada de los títulos
#show heading.where(level: 1): it => block(
  width: 100%,
  fill: rgb("#eef3f8"),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
  stroke: (left: 4pt + rgb("#1a3a6b")),
  above: 1.6em,
  below: 1em,
)[
  #text(size: 14pt, weight: "bold", fill: rgb("#1a3a6b"))[#it.body]
]

#show heading.where(level: 2): it => block(
  above: 1.3em,
  below: 0.7em,
)[
  #text(size: 14pt, weight: "bold", fill: rgb("#2b5b84"))[#it.body]
  #v(2pt)
  #line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))
]

#show heading.where(level: 3): it => block()[
  #text(size: 12pt, weight: "bold", fill: rgb("#2b5b84"))[#it.body]
]

#pagebreak()
#set page(fill: rgb("#ffffff"))
#set text(size: 12pt, fill: rgb("#000000"))

#set page(numbering: "1 of 1")
#set heading(numbering: none)


#set page(columns: 2)
#outline(depth: 2)
#set page(columns: 1)


#pagebreak()
#include "files/micro/Clase1.typ"

#pagebreak()
//#include "files/micro/Clase2.typ"

#pagebreak()
//#include "files/micro/Clase3.typ"




