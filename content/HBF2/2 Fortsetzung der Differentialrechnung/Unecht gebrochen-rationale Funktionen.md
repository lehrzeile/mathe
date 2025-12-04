---
title: "Unecht gebrochen-rationale Funktionen"
description: ""
summary: ""
draft: false
weight: 303
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Einleitung

In diesem Abschnitt werden die wichtigsten Schritte zur vollständigen Funktionsuntersuchung unecht gebrochen-rationaler Funktionen systematisch erklärt und an einem Beispiel angewendet.

## Definitionsbereich

Bei ganzrationalen Funktionen (Polynomfunktionen) treten keine Nenner, Wurzeln oder Logarithmen auf. Daher ist der Funktionsausdruck bei ganzrationalen Funktionen für jeden reellen Wert von $x$ definiert und somit gilt $\mathbb{D}(f)=\mathbb{R}$.

Es gibt jedoch auch andere Fälle, in denen der Funktionsausdruck näher untersucht werden muss. 
Allgemein geht man bei der Bestimmung des Definitionsbereichs wie folgt vor:

- Man prüft, ob der Ausdruck Divisionen, Wurzeln oder Logarithmen enthält.
- Falls keiner dieser "Problemfälle" vorhanden ist (wie bei Polynomfunktionen), ist der Definitionsbereich $\mathbb{D} = \mathbb{R}$.
- Falls doch einer dieser Fälle eintritt, so sind die "verbotenen Stellen" aus dem Definitionsbereich auszuschließen.

{{< box-notice title="Zur Erinnerung: Definitionsbereich" >}}
Der **Definitionsbereich** einer Funktion $f$ -- geschrieben: $\mathbb{D}(f)$ -- ist die Menge aller $x$-Werte,
für die die Funktion definiert ist.
{{< /box-notice >}}

{{< box-example title="Beispiel $\displaystyle f(x)=\frac{x^2+1}{x}$" >}}
Bei der hier gegebenen Funktion darf der Nenner ($N(x)$) also nicht Null werden. Dies ist dann der Fall, wenn $x = 0$ ist, da $N(0) = 0$.

Es gilt daher:
$\mathbb{D}(f) = \mathbb{R} \textbackslash \{0\}$.

Gesprochen:
"Der Definitionsbereich umfasst alle reellen Zahlen außer die Null." oder kurz: "$\mathbb{R}$ ohne Null."
{{< /box-example >}}

## Art der Definitionslücke und Vorzeichenwechsel

Als Nächstes untersucht man die Definitionslücke und fragt sich: "Was ist hier besonderes los?".
Setzt man die Nullstelle des Nenners -- die wir soeben bestimmt haben -- in den Zähler ein und erhält einen Wert ungleich Null, so handelt es sich um eine nicht hebbare Lücke: eine sog. **Polstelle** (Unendlichkeitsstelle).

{{< box-example title="Beispiel $\displaystyle f(x)=\frac{x^2+1}{x}$" >}}
Wir haben soeben bestimmt, dass die Nullstelle des Nenners $x = 0$ ist.

Wir setzen nun $x = 0$ in den Zähler ein:
$Z(0) = 0^2 + 1 = 1 \neq 0$.

Wir erhalten einen Wert *ungleich Null*, was bedeutet, dass der Funktionsgraph an dieser Stelle eine **Polstelle** besitzt.
{{< /box-example >}}

{{< box-note title="Hinweis:" >}}
Kommt beim Einsetzen der Nullstelle des Nenners in den Zähler ebenfalls der Wert Null heraus, so handelt es sich in diesem Fall um eine **hebbare Lücke**. In einem solchen Fall wäre es möglich, die Lücke "zu beheben", in dem man eine Polynomdivision durchführt, deren Ergebnis (in den meisten Fällen) eine ganz rationale Funktion ist, welche keine Lücke enthält.

Diesen Fall werden wir hier jedoch vernachlässigen.
{{< /box-note >}}

Als nächstes untersucht man, wie sich der Funktionsgraph links und rechts von der soeben gefundenen Definitionslücke bzw. Polstelle verhält. Hierzu schaut man sich die Vorzeichen der Funktionswerte an, die links ($x_l < x_P$) bzw. rechts ($x_r > x_P$) von der Polstelle ($x_P$) liegen.

{{< box-notice title="Vorzeichenwechsel" >}}
Sei ein Funktionsgraph $f(x)$ mit einer Polstelle $x_P$ gegeben. Außerdem seien $x_l$ und $x_r$ zwei Funktionswerte, die links ($x_l < x_P$) bzw. rechts ($x_r > x_P$) von der Polstelle liegen. Dann gilt:

- $f(x_l) > 0 \& f(x_r) > 0$ oder $f(x_l) < 0 \& f(x_r) < 0 \qquad \Rightarrow \qquad$ Polstelle ohne Vorzeichenwechsel
- $f(x_l) > 0 \& f(x_r) < 0$ oder $f(x_l) < 0 \& f(x_r) > 0 \qquad \Rightarrow \qquad$ Polstelle mit Vorzeichenwechsel.

{{< /box-notice >}}

{{< box-notice title="Merke dir:" >}}

- Polstellen ohne Vorzeichenwechsel nennt man *gerader Pol*.
- Polstellen mit Vorzeichenwechsel nennt man *ungerader Pol*. In diesem Fall passiert an dieser Stelle ein "Sprung" von $+\infty$ nach $-\infty$ oder umgekehrt.

{{< /box-notice >}}
