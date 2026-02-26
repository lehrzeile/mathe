---
title: "Erste Integrationsregeln"
description: ""
summary: ""
draft: false
weight: 503
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

Im vorangegangenen Abschnitt hast du zum ersten Mal den Begriff der **Stammfunktion** kennengelernt. Diese bildet man, um das unbestimmte Integral einer Funktion $f$ zu bestimmen oder um den Flächeninhalt zwischen Funktionsgraph und $x$-Achse in einem bestimmten Intervall berechnen zu können.

Man bildet sie -- ähnlich wie beim Ableiten -- anhand konkreter Regeln, die man als **Integrationsregeln** bezeichnet.

{{< box-notice title="Konstantenregel der Integration:" >}}
$\displaystyle \int k ~ dx = k \cdot x + c$
{{< /box-notice >}}

{{< box-example title="Beispiel für die Konstantenregel:" >}}
$\displaystyle \int 3 ~ dx = 3 \cdot x + c$
{{< /box-example >}}

{{< box-notice title="Potenzregel der Integration:" >}}
$\displaystyle f(x)=x^n \qquad \Rightarrow \qquad F(x)=\frac{1}{n+1}x^{n+1} + c$
{{< /box-notice >}}

{{< box-example title="Beispiel für die Potenzregel:" >}}
$\displaystyle f(x)=x^4 \qquad \Rightarrow \qquad F(x)=\frac{1}{5}x^{5} + c$
{{< /box-example >}}

{{< box-notice title="Faktorregel der Integration:" >}}
$\displaystyle \int k \cdot f(x) ~ dx = k \cdot \int f(x) ~ dx$
{{< /box-notice >}}

{{< box-example title="Beispiel für die Faktorregel:" >}}
$\displaystyle \int 3x^5 ~ dx = 3 \cdot \int x^5 ~ dx = 3 \cdot \frac{1}{6}x^6 + c$
{{< /box-example >}}

{{< box-notice title="Summenregel der Integration:" >}}
$\displaystyle \int (f(x) + g(x)) ~ dx = \int f(x) ~ dx + \int g(x) ~ dx$
{{< /box-notice >}}

{{< box-example title="Beispiel für die Summenregel:" >}}
$\displaystyle \int x^3 + x^2 ~ dx = \int x^3 ~ dx + \int x^2 ~ dx = \frac{1}{4}x^4 + \frac{1}{3}x^3 + c$
{{< /box-example >}}
