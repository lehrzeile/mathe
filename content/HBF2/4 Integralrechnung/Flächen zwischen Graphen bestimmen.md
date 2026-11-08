---
title: "Flächen zwischen Graphen bestimmen"
description: ""
summary: ""
draft: false
weight: 205
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Vorwort

Bislang haben wir uns mit dem Bilden von Stammfunktionen und dem Berechnen von bestimmten Integralen beschäftigt. Dabei handelt es sich um Flächen, die durch den Funktionsgraphen und die $x$-Achse eingeschlossen werden.

Es gibt aber auch Flächen, die von zwei Funktionsgraphen eingeschlossen werden. Mit diesen befassen wir uns in diesem Abschnitt.

## Flächen zwischen Graphen

{{< box-example title="" >}}
Der Graph der Funktion $f_1(x) = 0,5x^2 - 2x + 3,5$ wird vom Graphen der Funktion $f_2(x) = x + 1$ geschnitten. Gesucht ist die Fläche zwischen den beiden Funktionsgraphen.

Damit man die Fläche berechnen kann, die zwischen den beiden Graphen eingeschlossen wird, muss man zunächst die Grenzen kennen. Diese werden durch die Schnittpunkte der beiden Funktionsgraphen bestimmt:

![Fläche zwischen zwei Graphen](img/Flaeche_zwischen_Graphen.svg)
*Abb. 1: Fläche zwischen zwei Graphen*
<!-- {{< image src="img/Flaeche_zwischen_Graphen.svg" caption="Fläche zwischen zwei Graphen" >}} -->

Die Schnittpunkte lassen sich berechnen, indem man die beiden Funktionsgleichungen gleichsetzt:

$\displaystyle
\begin{aligned}
0,5x^2 - 2x + 3,5 &= x + 1 && wide | - x - 1 \\\
0,5x^2 - 3x + 2,5 &= 0 && wide | :0,5 \\\
x^2 - 6x + 5 &= 0 && wide | "p-q-Formel" \\\
dots.v && \\\
x_1 &= 1, quad x_2 = 5
\end{aligned}$

Nun bildet man die Differenz der beiden Funktionen, um die Funktion zu erhalten, die die Fläche beschreibt:

$d(x) = f_1(x) - f_2(x) = 0,5x^2 - 2x + 3,5 - (x + 1) = 0,5x^2 - 3x + 2,5$

Und zum Schluss integriert man die Funktion $d(x)$ über die Grenzen der Schnittpunkte und bildet davon den Betrag, um die Fläche zu berechnen:

$\displaystyle A = integral_1^5 d(x) "dx" = integral_1^5 0","5x^2 - 3x + 2","5 "dx" = [1/6 x^3 - 1,5 x^2 + 2,5x]_1^5$

Der gesuchte Flächeninhalt ist der Betrag der Differenz der Funktionswerte von $F(x)$ an den Grenzen $1$ und $5$:

$\displaystyle
\begin{aligned}
A &= abs(F(5) - F(1)) = abs((1/6 * 5^3 - 1,5 * 5^2 + 2,5 * 5) - (1/6 * 1^3 - 1,5 * 1^2 + 2,5 * 1)) \
&= quad dots quad = abs(-25/6 - 7/6) = abs(-32/6) = 16/3 approx 5","overline("3") #h(4pt) "FE"
\end{aligned}$

{{< /box-example >}}
