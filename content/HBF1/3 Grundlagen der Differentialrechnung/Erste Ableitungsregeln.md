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
$$f(x)=x \quad \rightarrow \quad f'(x) = 1$$

Die Ableitung von $x$ ist $1$.
{{< /box-notice >}}

{{< box-notice title="Potenzregel" >}}
$$f(x) = x^n \quad \rightarrow \quad f'(x) = n \cdot x^{n-1}$$

Man multipliziert den ursprünglichen Exponenten $n$ mit der Potenz und reduziert den ursprünglichen Exponenten um $1$.
{{< /box-notice >}}

{{< box-notice title="Faktorregel" >}}
$$f(x) = c \cdot g(x) \quad \rightarrow \quad f'(x) = c \cdot g'(x)$$

Ein Vorfaktor bleibt beim Ableiten erhalten.
{{< /box-notice >}}

{{< box-notice title="Summen- und Differenzenregel" >}}
$$f(x) = g(x) \pm h(x) \quad \rightarrow \quad f'(x) = g'(x) \pm h'(x)$$

Besteht ein Funktionsterm (hier: $f(x)$) aus einer Summe (*bzw. Differenz*) von einzelnen Termen (hier: $g(x)$ und $h(x)$), so leitet man jeden einzelnen Term für sich ab und addiert (*bzw. subtrahiert*) anschließend deren Ableitungen (hier: $g'(x) \pm h'(x)$).
{{< /box-notice >}}

## Methode #4 zur Bestimmung der lokalen Änderungsrate: Steigung in einem Punkt berechnen $\rightarrow$ Funktion ableiten

{{< youtube wo1htpyG9w8 >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f$ mit $f(x)= -x^2 + 5x - 2$.

Bestimme mit Hilfe der Ableitung die Steigung in den Punkten $P_1 \left(1|f(1)\right)$, $P_2 \left(2|f(2)\right)$ und $P_3 \left(5|f(5)\right)$.
{{< /job >}}
