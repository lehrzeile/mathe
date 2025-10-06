---
title: "Übungen zum Bestimmen der lokalen Änderungsrate"
description: ""
summary: ""
draft: false
weight: 402
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Definition

Gegeben ist die Funktion $f$.
Die lokale Änderungsrate von $f$ an der Stelle $x_0$ ist die Steigung der Tangente an dem Graphen von $f$ im Punkt $P\left(x_0|f(x)\right)$.
Die lokale Änderungsrate heißt auch **Ableitung der Funktion an der Stelle $x_0$**.
Geschrieben $f'(x)$ (gesprochen: "f Strich von x null").

{{< box-notice >}}
Die lokale bzw. momentane Änderungsrate einer Funktion entspricht der **Steigung der Tangenten** am Graphen in einem bestimmten Punkt. Mit der momentanen Änderungsrate, die man auch **Ableitung** nennt, kann man die Steigung in jedem beliebigen Punkt einer Kurve bestimmen.
{{< /box-notice >}}

## Bestimmen der mittleren Änderungsrate

{{< youtube sXxK-JATrc0 >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f_1$ mit $f_1(x)=\frac12 x^2 - 3x + 1$.

1. Bestimme mithilfe des Differenzenquotienten die mittlere Änderungsrate im Intervall $[-2;1]$.
2. Bestimme nach demselben Prinzip die mittlere Änderungsrate im gleichen Intervall, dieses Mal jedoch in Einerschritten ($[-2;-1]$, $[-1;0]$ und $[0;1]$).
3. Triff eine Aussage über einen möglichen Zusammenhang zwischen den mittleren Änderungsraten aus den Aufgabenteilen 1 und 2.
{{< /job >}}

## Bestimmen der lokalen Änderungsrate

### Methode #1: Näherungstabelle bzw. Differenzenquotient

Mit Hilfe des Differenzenquotienten lässt sich auch - allerdings nur näherungsweise (!) - die <mark>lokale Änderungsrate</mark> an einer bestimmten Stelle des Funktionsgraphen bestimmen. Hierzu muss notwendigerweise das Intervall um die entsprechende Stelle herum sehr klein (!) gewählt werden.

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f$ mit $f(x)=\frac12 x^2 - 3x + 1$.

**Bestimme** mithilfe des Differenzenquotienten die Steigung im Punkt $P_1 \left(3|f(3)\right)$, indem du die mittlere Änderungsrate des Intervalls um die gesuchte Stelle herum *berechnest* und dieses schrittweise verkleinerst - sprich: die Intervallgrenzen step-by-step nach innen verschiebst ($\pm 0,5 \rightarrow \pm 0,1 \rightarrow \pm 0,01$).
{{< /job >}}

<!-- ![image](Bestimmen_der_lokalen_Änderungsrate.jpeg) -->

### Methode #2: Grenzwertbetrachtung $\rightarrow$ Der Differentialquotient

Wenn man - wie in der Aufgabe zuvor - händig das Intervall um die gesuchte Stelle herum verkleinert, erhält man eine gute Näherung für die lokale Änderungsrate. Schneller geht es mit einer sogenannten **Grenzwertbetrachtung**. Hierzu betrachten wir den Grenzwert des Differenzenquotienten - den **Differentialquotienten**.

{{< youtube _L6wmTzod_I >}}

{{< box-example >}}
Sei die Funktion $f$ gegeben mit $f(x)=\frac14 x^2 - 4x + 5$.

Gesucht wird die lokale Änderungsrate im Punkt $\left(2|f(2)\right)$.

Wir betrachten also nun den Grenzwert des Differenzenquotienten:

$\displaystyle m = \lim_{x_2 \to x_1} \frac{\frac14 x_2^2 - 4x_2 + 5 - (\frac14 x_1^2 - 4x_1 + 5)}{x_2-x_1}$

$\displaystyle = \lim_{x_2 \to x_1} \frac{\frac14 x_2^2 - 4x_2 + 5 - \frac14 x_1^2 + 4x_1 - 5}{x_2-x_1}$

$\displaystyle = \lim_{x_2 \to x_1} \frac{\frac14 x_2^2 - \frac14 x_1^2 - 4x_2 + 4x_1}{x_2-x_1}$

$\displaystyle = \lim_{x_2 \to x_1} \frac{\frac14 \cdot (x_2^2 - x_1^2) - 4 \cdot (x_2 - x_1)}{x_2-x_1}$

$\displaystyle = \lim_{x_2 \to x_1} \frac{\frac14 \cdot (x_2 + x_1) \cdot (x_2 - x_1) - 4 \cdot (x_2 - x_1)}{x_2-x_1}$

Kürzen mit $(x_2-x_1)$ ergibt:

$\displaystyle m = \lim_{x_2 \to x_1} \frac14 \cdot (x_2 + x_1) - 4 = \frac14 \cdot 2x_1 - 4 = \frac12 x_1 - 4 = f'(x_1)$

$f'(2)=\frac12 \cdot 2 - 4 = 1 - 4 = -3.$

Die Steigung des Funktionsgraphen an der Stelle $x_1=2$ bzw. im Punkt $P(2|-2)$ beträgt also -3.
{{< /box-example >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f$ mit $f(x)= -x^2 + 4x + 10$.

Bestimme mit Hilfe des Differentialquotienten die Steigung in den Punkten $P_1 \left(2|f(2)\right)$ und $P_2 \left(-1|f(-1)\right)$.
{{< /job >}}

### Methode #3: Grenzwertbetrachtung unter Anwendung der h-Methode $\rightarrow$ Der Differentialquotient

to follow...
