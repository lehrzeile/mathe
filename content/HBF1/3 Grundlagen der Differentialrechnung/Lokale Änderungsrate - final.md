---
title: "Lokale Änderungsrate - final"
description: ""
summary: ""
draft: true
weight: 401
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

1. Bestimme mithilfe des Differenzenquotienten die mittlere Steigung im Intervall $[-2;1]$.
2. Bestimme nach demselben Prinzip die mittlere Steigung im gleichen Intervall, dieses Mal jedoch in Einerschritten ($[-2;-1]$, $[-1;0]$ und $[0;1]$).
3. Triff eine Aussage über einen möglichen Zusammenhang zwischen den mittleren Steigungen aus den Aufgabenteilen 1 und 2.
{{< /job >}}

## Bestimmen der lokalen Änderungsrate

### Methode #1: Näherungstabelle bzw. Differenzenquotient

Mit Hilfe des Differenzenquotienten lässt sich auch - allerdings nur näherungsweise (!) - die lokale Änderungsrate an einer bestimmten Stelle des Funktionsgraphen bestimmen. Hierzu muss notwendigerweise das Intervall um die entsprechende Stelle herum sehr klein (!) gewählt werden.

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f$ mit $f(x)=\frac12 x^2 - 3x + 1$.

Bestimme mithilfe des Differenzenquotienten die Steigung im Punkt $P_1 \left(3|f(3)\right)$, indem du die mittlere Änderungsrate des Intervalls um die gesuchte Stelle herum berechnest und dieses schrittweise verkleinerst - sprich: die Intervallgrenzen step-by-step nach innen verschiebst ($\pm 0,5 \rightarrow \pm 0,1 \rightarrow \pm 0,01$).
{{< /job >}}

<!-- ![image](Bestimmen_der_lokalen_Änderungsrate.jpeg) -->

### Methode #2: Grenzwertbetrachtung $\rightarrow$ Der Differentialquotient

Wenn man - wie in der Aufgabe zuvor - händig das Intervall um die gesuchte Stelle herum verkleinert, erhält man eine gute Näherung für die lokale Änderungsrate. Schneller geht es mit einer sogenannten **Grenzwertbetrachtung**. Hierzu betrachten wir den Grenzwert des Differenzenquotienten - den **Differentialquotienten**.

{{< youtube _L6wmTzod_I >}}

{{< box-example >}}
Sei die Funktion $f$ gegeben mit $f(x)=\frac14 x^2 - 4x + 5$.

Gesucht wird die lokale Änderungsrate im Punkt $\left(2|f(2)\right)$.
{{< /box-example >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f$ mit $f(x)= -x^2 + 4x + 10$.

Bestimme mit Hilfe des Differentialquotienten die Steigung in den Punkten $P_1 \left(2|f(2)\right)$ und $P_2 \left(-1|f(-1)\right)$.
{{< /job >}}

### Methode #3: Steigung in einem Punkt berechnen $\rightarrow$ Funktion ableiten

{{< youtube wo1htpyG9w8 >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f$ mit $f(x)= -x^2 + 5x - 2$.

Bestimme mit Hilfe der Ableitung die Steigung in den Punkten $P_1 \left(1|f(1)\right)$, $P_2 \left(2|f(2)\right)$ und $P_3 \left(5|f(5)\right)$.
{{< /job >}}

## Interpretation der lokalen Änderungsrate im Beispielkontext

| Bsp.e für Funktionen | mittlere Änderungsrate | lokale Änderungsrate |
| --- | --- | --- |
| Zeit → zurückgelegter Weg | Durchschnittsgeschwindigkeit | Momentangeschwindigkeit  |
| Entfernung → Höhe | Durchschnittshöhe | Momentane Steigung |
