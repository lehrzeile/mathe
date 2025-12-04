---
title: "Funktionsuntersuchung gebrochen-rationaler Funktionen"
description: ""
summary: ""
draft: false
weight: 302
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Einleitung

Eine gebrochen-rationale Funktion ist eine Bruchfunktion, bei der Zähler und Nenner Polynome sind. Man schreibt sie kurz als $f(x)=\dfrac{Z(x)}{N(x)}$ mit Polynomen $Z$ (wie Zähler) und $N$ (wie Nenner). Wichtig ist hierbei (was ein klein wenig vorgegriffen ist), dass hier $N(x)$ nicht Null sein darf. Deshalb gibt es Stellen, an denen die Funktion nicht definiert ist (entweder sind das echte Polstellen oder sog. hebbare Lücken[^1]). Solche gebrochen-rationale Funktionen verhalten sich zumeist wie Polynomfunktionen, zeigen jedoch an den Nullstellen des Nenners ein besonderes Verhalten (z. B. starke Ausschläge oder sog. Asymptoten).

[^1]: Solche Funktionen mit hebbaren Lücken werden wir hier jedoch vernachlässigen.

In diesem Abschnitt werden die wichtigsten Schritte zur vollständigen Funktionsuntersuchung gebrochen-rationaler Funktionen systematisch erklärt und an einem Beispiel angewendet:

- Definitionsbereich und Polstellen bestimmen
- Nullstellen des Zählers und Vorzeichenanalyse für das Vorzeichenverhalten
- Verhalten im Unendlichen: Bestimmung von waagerechten oder schiefen Asymptoten[^2]
- Untersuchung von Polstellen: einfache und mehrfache Pole, (hebbare Definitionslücken) und echte Polstellen
- Differenzialanalyse: erste und zweite Ableitung zum Finden von Monotonie, Extremstellen und Wendepunkten sowie Krümmungsverhalten
- sowie die Skizzierung des Graphen unter Berücksichtigung aller zuvor untersuchter Merkmale und Eigenschaften. \\

[^2]: Auch gekrümmte Asymptoten werden wir hier nicht betrachten.

Voraussetzungen hierfür sind:

- Kenntnisse über Polynome,
- Grenzwerte,
- Ableitungen und Vorzeichenuntersuchungen. \\

Ziel ist es, anhand dieser systematischen Analyse den Graphen einer gegebenen gebrochen-rationalen Funktion zuverlässig zu skizzieren und ihr qualitatives Verhalten vollständig zu beschreiben.

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
Bei der hier gegebenen Funktion darf der Nenner ($N(x)$) also nicht Null werden. Dies ist dann der Fall, wenn $x = 0$ ist, da $N(0) = 0$. \

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

Wir erhalten $1$ als Ergebnis, was bedeutet, dass der Funktionsgraph an dieser Stelle eine **Polstelle** besitzt.
{{< /box-example >}}

{{< box-note title="Hinweis:" >}}
Kommt beim Einsetzen der Nullstelle des Nenners in den Zähler ebenfalls der Wert Null heraus, so handelt es sich in diesem Fall um eine **hebbare Lücke**. In einem solchen Fall wäre es möglich, die Lücke "zu beheben", in dem man eine Polynomdivision durchführt, deren Ergebnis (in den meisten Fällen) eine ganz rationale Funktion ist, welche keine Lücke enthält.

Diesen Fall werden wir hier jedoch vernachlässigen.
{{< /box-note >}}

Als nächstes untersucht man, wie sich der Funktionsgraph links und rechts von der soeben gefundenen Definitionslücke bzw. Polstelle verhält. Hierzu schaut man sich die Vorzeichen der Funktionswerte an, die links ($x_l < x_P$) bzw. rechts ($x_r > x_P$) von der Polstelle ($x_P$) liegen.

{{< box-notice title="Vorzeichenwechsel" >}}
Sei ein Funktionsgraph $f(x)$ mit einer Polstelle $x_P$ gegeben. Außerdem seien $x_l$ und $x_r$ zwei Funktionswerte, die links ($x_l < x_P$) bzw. rechts ($x_r > x_P$) von der Polstelle liegen. Dann gilt:

- $x_l = x_r \qquad \Rightarrow \qquad$ Polstelle ohne Vorzeichenwechsel
- $x_l \neq x_r \qquad \Rightarrow \qquad$ Polstelle mit Vorzeichenwechsel.

{{< /box-notice >}}

{{< box-notice title="Merke dir:" >}}

1. Polstelle ohne Vorzeichenwechsel nennt man *gerader Pol*.
2. Polstelle mit Vorzeichenwechsel nennt man *ungerader Pol*. In diesem Fall passiert an dieser Stelle ein "Sprung" zwischen $+\infty$ nach $-\infty$ oder umgekehrt.

{{< /box-notice >}}
