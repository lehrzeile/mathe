---
title: "Erste Ableitungsregeln"
description: ""
summary: ""
draft: false
weight: 403
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Ableitungsregeln

Nachfolgend lernst du ein paar Ableitungsregeln, mit deren Hilfe man ebenfalls die Steigung in einem bestimmten Punkt des Graphen bestimmen kann.

Mit diesen Ableitungsregeln kannst du viele Funktionen schnell und einfach ableiten, ohne jedes Mal die Definition der Ableitung (sprich: den Differentialquotienten) anwenden zu müssen. Sie sind grundlegende Werkzeuge, um die Steigung einer Funktion an jeder Stelle zu bestimmen und spielen eine zentrale Rolle in der Differentialrechnung.

{{< box-notice title="Ableitung von $x$" >}}
$f(x)=x \quad \rightarrow \quad f'(x) = 1$

Die Ableitung von $x$ ist $1$.
{{< /box-notice >}}

{{< box-notice title="Kostantenregel" >}}
$f(x)=c, \hspace{10pt} c \in \mathbb{R} \quad \rightarrow \quad f'(x) = 0$

Die Ableitung einer Kostanten $c$ ist $0$.
{{< /box-notice >}}

{{< box-notice title="Faktorregel" >}}
$f(x) = c \cdot g(x) \quad \rightarrow \quad f'(x) = c \cdot g'(x)$

Ein Vorfaktor bleibt beim Ableiten erhalten.
{{< /box-notice >}}

{{< box-example title="Ableitung von $x$ und Faktorregel zusammen:" >}}

- $f(x)=x \quad \rightarrow \quad f'(x) = 1$
- $f(x)=3x \Leftrightarrow f(x)=3 \cdot x \quad \rightarrow \quad f'(x) = 3 \cdot 1 = 3$
- $f(x)=-5x \quad \rightarrow \quad f'(x) = -5$
- $f(x)= \text{trölf} x \quad \rightarrow \quad f'(x) = \text{trölf}$

{{< /box-example >}}

{{< box-notice title="Potenzregel" >}}
$f(x) = x^n \quad \rightarrow \quad f'(x) = n \cdot x^{n-1}$

Man multipliziert den ursprünglichen Exponenten $n$ mit der Potenz und reduziert den ursprünglichen Exponenten um $1$.
{{< /box-notice >}}

{{< box-example title="Potenzregel:" >}}

- $f(x)=x^2 \quad \rightarrow \quad f'(x) = 2x^{2-1}=2x^1=2x$
- $f(x)=x^3 \quad \rightarrow \quad f'(x) = 3x^{3-1}=3x^2$
- $f(x)=x^4 \quad \rightarrow \quad f'(x) = 4x^{4-1}=4x^3$
- $f(x)=5x^17 \quad \rightarrow \quad f'(x) = 5 \cdot 17x^{17-1}=85x^{16}$

{{< /box-example >}}

{{< box-notice title="Summen- und Differenzenregel" >}}
$f(x) = g(x) \pm h(x) \quad \rightarrow \quad f'(x) = g'(x) \pm h'(x)$

Besteht ein Funktionsterm (hier: $f(x)$) aus einer Summe (*bzw. Differenz*) von einzelnen Termen (hier: $g(x)$ und $h(x)$), so leitet man jeden einzelnen Term für sich ab und addiert (*bzw. subtrahiert*) anschließend deren Ableitungen (hier: $g'(x) \pm h'(x)$).
{{< /box-notice >}}

{{< box-example title="Kostantenregel sowie Summen- und Differenzenregel:" >}}

- $f(x)=x^2 + 3x \quad \rightarrow \quad f'(x) = (x^2)' + (3x)' = 2x + 3$
- $f(x)=x^5 - 4x^2 \quad \rightarrow \quad f'(x) = (x^5)' - (4x^2)' = 5x^4 + 8x$
- $f(x)=-2x^3 + 7x - 5 \quad \rightarrow \quad f'(x) = (-2x^3)' + (7x)' - (5)' = -6x^2 + 7 - 0 = -6x^2 + 7$

{{< /box-example >}}

## Methode #4 zur Bestimmung der lokalen Änderungsrate: Steigung in einem Punkt berechnen $\rightarrow$ Funktion ableiten

Du erinnerst dich an die drei Methoden aus dem vorangegangenen Kapitel, mit deren Hilfe man die lokale Änderungsrate bestimmen kann? Jetzt kannst du unter Anwendung der Ableitungsregeln die Ableitung direkt bilden und somit die Steigung in einem Punkt viel schneller bestimmen.

{{< youtube wo1htpyG9w8 >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f(x)= -x^2 + 5x - 2$.

Bestimme mit Hilfe der Ableitung die Steigung in den Punkten $P_1 \left(1|f(1)\right)$, $P_2 \left(2|f(2)\right)$ und $P_3 \left(5|f(5)\right)$.
{{< /job >}}

{{< solution >}}
Zuerst bestimmt man die Ableitungsfunktion $f'(x)=-2x+5$.

Danach setzt man die $x$-Koordinaten der Punkte ein:

1. $x_1=1: \quad f'(1)=-2 \cdot 1 + 5 = 3$ \
Die Steigung im Punkt $P_1$ beträgt $3$.

2. $x_2=2: \quad f'(2)=-2 \cdot 2 + 5 = 1$ \
Die Steigung im Punkt $P_2$ beträgt $1$.

3. $x_3=5: \quad f'(5)=-2 \cdot 5 + 5 = -5$ \
Die Steigung im Punkt $P_3$ beträgt $-5$.
{{< /solution >}}

## Übung macht den Meister

{{< job numbered="true" style="enum-alph" title="bettermarks" >}}
    <li>{{< bettermarks uebungscode="LLD6Q" seriesID="1689552499859521664" title="Die Potenzregel bei der Bestimmung von Ableitungsfunktionen nutzen" >}}</li>
    <li>{{< bettermarks uebungscode="LY7J2" seriesID="1689552696945672576" title="Die Faktor- und Summenregeln bei der Bestimmung von Ableitungsfunktionen nutzen" >}}</li>
    <li>{{< bettermarks uebungscode="D5L9" seriesID="1689552038590939264" title="Höhere Ableitungen ganzrationaler Funktionen und deren Grad bestimmen" >}}</li>
{{< /job >}}

{{< job numbered="true" style="" title="Übung macht den Meister" columns="2" >}}
<p>Bestimme jeweils den Term der Ableitungsfunktion $f'(x)$.</p>
<ol type="a">
    <li>$f(x)=3x+5$</li>
    <li>$f(x)=x^4-1$</li>
    <li>$f(x)=-3x^6$</li>
    <li>$f(x)=\frac12x^4$</li>
    <li>$f(x)=3x^3-4x^2+5x-6$</li>
    <li>$f(x)=\frac16 x^3 - \frac34 x^2 + \frac15 x - 3$</li>
</ol>
{{< /job >}}

{{< solution >}}
    <ol type="a">
        <li>$f'(x)=3$</li>
        <li>$f'(x)=4x^3$</li>
        <li>$f'(x)=-18x^5$</li>
        <li>$f'(x)=2x^3$</li>
        <li>$f'(x)=9x^2 - 8x + 5$</li>
        <li>$f'(x)=\frac12x^2 - \frac32 x + \frac15$</li>
    </ol>
{{< /solution >}}
