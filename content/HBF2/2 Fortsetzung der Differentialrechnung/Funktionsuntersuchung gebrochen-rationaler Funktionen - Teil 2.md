---
title: "Funktionsuntersuchung gebrochen-rationaler Funktionen - Teil 2"
description: ""
summary: ""
draft: false
weight: 304
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Asymptoten

### Begriffsklärung

{{< box-notice title="Definition: Asymptote" >}}
Eine Asymptote ist eine **Linie** oder **Kurve**, der sich der Graph einer Funktion **im Unendlichen immer weiter annähert**, ohne sie notwendigerweise zu berühren oder zu schneiden.
{{< /box-notice >}}

Beispielgraph

### Arten von Asymptoten

Gebrochen-rationale Funktionen können verschiedene Arten von Asymptoten haben.
Man unterscheidet dabei grundsätzlich zwischen senkrechten und nicht-senkrechten Asymptoten.
Den ersten Typ hast du bereits kennengelernt -- nur dass man dabei nicht immer von Asymptoten spricht: Polstellen.

In diesem Abschnitt lernen wir weitere Arten von Asymptoten kennen und üben, wie man diese nachweist bzw. untersucht:

- waagerechte und
- schräge Asymptoten sowie
- asymptotische Kurven.

<!-- Graphen gegenübergestellt -->

## Asymptoten bestimmen

{{< box-notice title="Asymptoten bestimmen" >}}

1. Senkrechte Asymptoten: erhält man durch **Bestimmen der Polstellen**.
1. Nicht-senkrechte Asymptoten erhält man **durch Polynomdivision**.

{{< /box-notice >}}

Da wir uns in Teil 1 bereits mit dem Bestimmen von Polstellen (_senkrechten Asymptoten_) befasst haben, widmen wir uns nun den nicht-senkrechten Asymptoten und deren Bestimmung.

{{< box-notice title="Nicht-senkrechte Asymptoten und deren Abhängigkeit von Zähler- und Nennergrad" >}}
Wenn man die nicht-senkrechten Asymptoten einer gebrochen-rationalen Funktion bestimmen möchte, muss man im Grunde nur den **Zählergrad mit dem Nennergrad vergleichen**:

1. Zählergrad $\leq$ Nennergrad $\qquad \Rightarrow \qquad$ **waagerechte** Asymptote
1. Zählergrad $=$ Nennergrad + 1 $\qquad \Rightarrow \qquad$ **schiefe** Asymptote
1. Zählergrad $\geq$ Nennergrad + 2 $\qquad \Rightarrow \qquad$ **kurvenförmige** Asymptote (bzw. _asymptotische Kurve_)

{{< /box-notice >}}

### Waagerechte Asymptote berechnen

Bei waagerechten Asymptoten unterscheidet man noch einmal zwischen zwei Fällen:

1. Zählergrad $<$ Nennergrad $\qquad \Rightarrow \qquad$ **waagerechte** Asymptote bei $y=0$ (sprich: die $x$-Achse bildet die Asymptote)
1. Zählergrad $=$ Nennergrad $\qquad \Rightarrow \qquad$ **waagerechte** Asymptote bei $\frac{p_n}{q_m}$, wobei $p_n$ und $q_m$ die Koeffizienten vor der größten Potenz des Zählers bzw. Nenners sind.

{{< box-example title="Beispiel 1: $\displaystyle f(x)=\frac{1}{x^2}$" >}}
In diesem Beispiel müssen wir im Grunde nichts weiter tun, als anzugeben, dass der Zählergrad (hier: $0$) kleiner als der Nennergrad (hier: $2$) ist und daraus schlussfolgern, dass die $x$-Achse die **waagerechte Asymptote** darstellt:

$grad(Z) = 0 < grad(N) = 2 \qquad \Rightarrow \qquad$ waagerechte Asymptote $y=0$.
{{< /box-example >}}

{{< box-example title="Beispiel 2: $\displaystyle f(x)=\frac{2x^2 - 4}{3x^2+5}$" >}}
In diesem Beispiel sieht das schon etwas anders aus. Wir erkennen folgendes:

$grad(Z) = 2 = grad(N) = 2 \qquad \Rightarrow \qquad$ waagerechte Asymptote bei $\frac{p_n}{q_m} = \frac{2}{3}$.

Die Funktion in diesem Beispiel hat also auch eine waagerechte Asymptote bei $y = \frac{2}{3}$.
{{< /box-example >}}

<!-- Graphen gegenübergestellt -->

### Schiefe und kurvenförmige Asymptote berechnen

Wie bereits angedeutet, lässt sich die Funktionsgleichung einer schiefen bzw. kurvenförmigen Asymptote mittels einer **Polynomdivision** berechnen. Hierzu teilt man einfach das Zählerpolynom durch das Nennerpolynom. Im Ergebnis erhalten wir einen ganzrationalen Term gefolgt von einem gebrochen-rationalen Term, welche im Grunde jeweils eine unterschiedliche Bedeutung haben:

1. Der ganzrationale Teil des Ergebnisses liefert uns die Gleichung der Asymptote.
1. Der gebrochen-rationale Teil des Ergebnisses wiederum gibt uns die Möglichkeit, zu untersuchen, wie sich der Funktionsgraph im Unendlichen der Asymptoten annähert.

<!-- Beispiel -->

<!-- Graph -->

## Übung macht den Meister

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" entry="**Untersuchen** Sie die folgenden gebrochen-rationalen Funktionen auf Asymptoten." >}}

1. $\displaystyle f(x)=\frac{a}{x´b}$
1. $\displaystyle f(x)=\frac{a}{x´b}$

{{< /job >}}
