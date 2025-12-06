---
title: "Funktionsuntersuchung gebrochen-rationaler Funktionen"
description: ""
summary: ""
draft: false
weight: 303
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Einleitung

In diesem Abschnitt werden die wichtigsten Schritte zur vollständigen Funktionsuntersuchung **gebrochen-rationaler Funktionen** systematisch erklärt und an einem Beispiel angewendet.

## Definitionsbereich

Bei ganzrationalen Funktionen (Polynomfunktionen) treten keine Nenner, Wurzeln oder Logarithmen auf. Daher ist der Funktionsausdruck bei ganzrationalen Funktionen für jeden reellen Wert von $x$ definiert und somit gilt $\mathbb{D}(f)=\mathbb{R}$.

Es gibt jedoch auch andere Fälle, in denen der Funktionsausdruck näher untersucht werden muss. 
Allgemein geht man bei der Bestimmung des Definitionsbereichs wie folgt vor:

- Man prüft, ob der Ausdruck Brüche, Wurzeln oder Logarithmen enthält.
- Falls keiner dieser "Problemfälle" vorhanden ist (wie bei Polynomfunktionen), ist der Definitionsbereich $\mathbb{D} = \mathbb{R}$.
- Falls doch einer dieser Fälle eintritt, so sind die "verbotenen Stellen" aus dem Definitionsbereich auszuschließen.

{{< box-notice title="Zur Erinnerung: Definitionsbereich" >}}
Der **Definitionsbereich** einer Funktion $f$ -- geschrieben: $\mathbb{D}(f)$ -- ist die Menge aller $x$-Werte,
für die die Funktion definiert ist.

Seien $a$ und $b$ zwei reelle Zahlen (Notation: $a, b \in \mathbb{R}$).\
Die Schreibweise $\mathbb{D}(f) = \mathbb{R} \backslash \\{ a ; b \\}$ bedeutet, dass der Definitionsbereich alle reellen Zahlen außer $a$ und $b$ enthält.
{{< /box-notice >}}

{{< box-example title="Beispiel $\displaystyle f(x)=\frac{x-1}{x^2-4}$" >}}
Der Nenner $N(x)$ darf nicht Null werden. Wir setzen ihn also bewusst gleich Null, um dessen Nullstellen herauszufinden und diese dann aus dem Definitionsbereich auszuschließen.

$N(x) = 0 \qquad \Leftrightarrow \qquad x^2 - 4 = 0$.

Ergebnis: $x_{1/2} = \pm 2$.

Es gilt daher:
$\mathbb{D}(f) = \mathbb{R} \backslash \\{ -2 ; 2 \\}$.

Gesprochen:
"Der Definitionsbereich umfasst alle reellen Zahlen außer $-2$ und $2$."
{{< /box-example >}}

## Art der Definitionslücke und Vorzeichenwechsel

Als Nächstes untersucht man die Definitionslücke und fragt sich: "Was ist hier besonderes los?".
Setzt man die Nullstelle des Nenners -- die wir soeben bestimmt haben -- in den Zähler ein und erhält einen Wert ungleich Null, so handelt es sich um eine nicht hebbare Lücke: eine sog. **Polstelle** (Unendlichkeitsstelle).

{{< box-example title="Beispiel $\displaystyle f(x)=\frac{x-1}{x^2-4}$" >}}
Wir haben soeben bestimmt, dass die Nullstellen des Nenners an den Stellen $x_1 = -2$ und $x_2 = +2$ sind.

Wir setzen nun $x_1 = -1$ und $x_2 = +2$ in den Zähler ein:

- $Z(-2) = -2-1 = -3 \neq 0 \qquad \Rightarrow$ Polstelle.
- $Z(+2) = +2-1 = 1 \neq 0 \qquad \Rightarrow$ Polstelle.

Wir erhalten jeweils einen Wert *ungleich Null*, was bedeutet, dass der Funktionsgraph an diesen Stellen **Polstellen** besitzt.
{{< /box-example >}}

{{< box-note title="Hinweis:" >}}
Käme beim Einsetzen der Nullstelle des Nenners in den Zähler ebenfalls der Wert Null heraus, so handelt es sich in diesem Fall um eine **hebbare Lücke**. In einem solchen Fall wäre es also möglich, die Lücke "zu beheben", in dem man eine Polynomdivision durchführt. In solchen Fällen erhält man eine ganzrationale Funktion als Ergebnis, deren Graph gleich verläuft, jedoch an den Lücken des Definitionsbereich keine Lücken enthält.

Diesen Fall werden wir hier jedoch vernachlässigen.
{{< /box-note >}}

Als nächstes untersucht man, wie sich der Funktionsgraph links und rechts von der soeben gefundenen Polstelle verhält. Hierzu schaut man sich die Vorzeichen der Funktionswerte an, die links ($x_l < x_P$) bzw. rechts ($x_r > x_P$) von der Polstelle ($x_P$) liegen, indem man jene Werte in die Funktionsgleichung einsetzt.

{{< box-notice title="So untersucht man einen möglichen Vorzeichenwechsel:" >}}
Sei ein Funktionsgraph $f(x)$ mit einer Polstelle $x_P$ gegeben. Außerdem seien $x_l$ und $x_r$ zwei Funktionswerte, die links ($x_l < x_P$) bzw. rechts ($x_r > x_P$) von der Polstelle liegen. Dann gilt:

- $f(x_l) > 0 \quad$ und $\quad f(x_r) > 0 \qquad \Rightarrow \qquad$ Polstelle ohne Vorzeichenwechsel
- $f(x_l) < 0 \quad$ und $\quad f(x_r) < 0 \qquad \Rightarrow \qquad$ Polstelle ohne Vorzeichenwechsel
- $f(x_l) < 0 \quad$ und $\quad f(x_r) > 0 \qquad \Rightarrow \qquad$ Polstelle mit Vorzeichenwechsel.
- $f(x_l) > 0 \quad$ und $\quad f(x_r) < 0 \qquad \Rightarrow \qquad$ Polstelle mit Vorzeichenwechsel.

{{< /box-notice >}}

{{< box-notice title="Fachbegriffe:" >}}

- Polstellen ohne Vorzeichenwechsel nennt man **gerader Pol**.
- Polstellen mit Vorzeichenwechsel nennt man **ungerader Pol**.

Im Falle eines ungeraden Pols passiert an der Polstelle ein "Sprung" von $+\infty$ nach $-\infty$ oder umgekehrt.

{{< /box-notice >}}

## Achsenschnittpunkte

### Nullstellen

Um die Nullstellen des Funktionsgraphen zu bestimmen, genügt es, die Nullstellen des Zählers zu betrachten. Setzt man nämlich den Funktionsterm gleich Null, so muss man als nächstes (da es sich im Falle einer gebrochen-rationalen Funktion um eine Bruchgleichung handelt) ohnehin mit dem Nenner multiplizieren, sodass dieser wegfällt und für die Gleichung irrelevant ist.

{{< box-notice title="Nullstellen einer gebrochen-rationalen Funktion:" >}}
    Die Nullstellen des Zählers stellen die Nullstellen des Funktionsgraphen einer gebrochen-rationalen Funktion dar. Diese ermittelt man, indem man den Zähler gleich Null setzt und die Lösung(en) der Gleichung mit Hilfe bereits bekannter Verfahren wie bspw. der Äquivalenzumformung, Wurzelziehen, der p-q-Formel oder der Polynomdivision bestimmt.
{{< /box-notice >}}

{{< box-example title="Beispiel $\displaystyle f(x)=\frac{x-1}{x^2-4}$" >}}
Der Nenner $N(x)$ darf nicht Null werden. Wir setzen ihn also bewusst gleich Null, um dessen Nullstellen herauszufinden und diese dann aus dem Definitionsbereich auszuschließen.

$Z(x) = 0 \qquad \Leftrightarrow \qquad x - 1 = 0$.

Ergebnis: $x = 1$.

Der Graph hat somit die Nullstelle $x_1 = 1$.
{{< /box-example >}}

### $y$-Achsenabschnitt

{{< box-notice title="$y$-Achsenabschnitt:" >}}
    Um den $y$-Achsenabschnitt des Funktionsgraphen zu bestimmen, genügt es, $x=0$ in den Funktionsterm einzusetzen und den Funktionswert zu berechnen.
{{< /box-notice >}}

{{< box-example title="Beispiel $\displaystyle f(x)=\frac{x-1}{x^2-4}$" >}}
Der Nenner $N(x)$ darf nicht Null werden. Wir setzen ihn also bewusst gleich Null, um dessen Nullstellen herauszufinden und diese dann aus dem Definitionsbereich auszuschließen.

$\displaystyle f(0)=\frac{0-1}{0^2-4} = \frac{-1}{-4} = \frac14$
{{< /box-example >}}

Der Funktionsgraph schneidet die $y$-Achse also im Punkt $\left( 0; \frac14 \right)$.

## Übung macht den Meister

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" entry="**Untersuchen** Sie die folgenden gebrochen-rationalen Funktionen auf ihren Definitionsbereich, die Art der Definitionslücken und auf ihre Achsenschnittpunkte." >}}

1. $\displaystyle f(x)=\frac{x^2+1}{x}$
1. $\displaystyle f(x)=\frac{x^3+2}{2x^2}$
1. $\displaystyle f(x)=-\frac{1}{x^2} - \frac{1}{3}x$

{{< /job >}}
