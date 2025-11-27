---
title: "Weitere Ableitungsregeln"
description: ""
summary: ""
draft: false
weight: 302
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

<!-- Produktregel -->
{{< box-notice title="Produktregel" >}}
$f(х) = g(х) \cdot h(x) \quad \rightarrow \quad f'(x)= g'(x) \cdot h(x) + g(x) \cdot h'(x)$
{{< /box-notice >}}

<!-- Beispiel -->
{{< box-example title="Beispiel für die Anwendung der Produktregel:" >}}

$f(x) = 3x^2 \cdot (5x - 7)$ \
$\rightarrow \quad f'(x) = 6x \cdot (5x - 7) + 3x^2 \cdot 5$

{{< /box-example >}}

<!-- Quotientenregel -->
{{< box-notice title="Quotientenregel" >}}
$f(х) = \frac{u(х)}{v(x)} \quad \rightarrow \quad f'(x)= \frac{u'(x) \cdot v(x) - u(x) \cdot v'(x)}{(v(x))^2}$
{{< /box-notice >}}

<!-- Beispiel -->
{{< box-example title="Beispiel für die Anwendung der Quotientenregel:" >}}

$f(x) = \frac{x^2}{2x+2} $ \
$\rightarrow \quad f'(x) = \frac{2x \cdot (2x+2) - x^2 \cdot 2}{(2x+2)^2}$

{{< /box-example >}}

<!-- Kettenregel -->
{{< box-notice title="Kettenregel" >}}
$f(х) = g(h(x)) \quad \rightarrow \quad f'(x)= g'(h(x)) \cdot h'(x)$
{{< /box-notice >}}

<!-- Beispiel -->
{{< box-example title="Beispiel für die Kettenregel:" >}}

$f(x) = (3x^2 + 4)^5$ \
$\rightarrow \quad f'(x) = 5 \cdot (3x^2 + 4)^4 \cdot 6x$

{{< /box-example >}}

<!-- Aufgaben -->
{{< job numbered="true" style="enum-alph" title="Übung macht den Meister" columns="2" entry="**Bestimme** jeweils den Term der Ableitungsfunktion $f'(x)$." >}}

- $f(x) = x^2 \cdot (x - 1)$
- $f(x) = (x^2 - \frac14 x) \cdot (x^2 + 3)$
- $f(x) = 4x^2 \cdot (-2x+2)$
- $f(x) = x^2 \cdot x$
- $f(x) = (x - 1) \cdot (x^2 + x + 7)$
- $f(x) = \frac{4}{3x-2}$
- $f(x) = \frac{2x+1}{2x-1}$
- $f(x) = \frac{2x+1}{(2x-1)^2}$
- $f(x) = \frac{2x+3}{x^5}$
- $f(x) = \frac{x^2}{x^3} + 3x + 1$
- $f(x) = (2x+4)^2$
- $f(x) = 3(x^2+3)^3$
- $f(x) = \frac12(4x^3+1)^4$

{{< /job >}}
