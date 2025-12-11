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

{{< box-notice title="Definition: Asymptote" >}}
Eine Asymptote ist eine **Linie** oder **Kurve**, der sich der Graph einer Funktion **im Unendlichen immer weiter annähert**, ohne sie notwendigerweise zu berühren oder zu schneiden.
{{< /box-notice >}}

Gebrochen-rationale Funktionen können verschiedene Arten von Asymptoten haben.
Man unterscheidet dabei grundsätzlich zwischen senkrechten und nicht-senkrechten Asymptoten.
Den ersten Typ hast du bereits kennengelernt -- nur dass man dabei nicht immer von Asymptoten spricht: Polstellen.

In diesem Abschnitt lernen wir weitere Arten von Asymptoten kennen und üben, wie man diese nachweist bzw. untersucht:

- _waagerechte_ und
- _schräge Asymptoten_ sowie
- _asymptotische Kurven_.

{{< gallery images="2" >}}
{{< image src="img/Asymptoten1.svg" caption="Graph mit waagerechter Asymptote: $y=0$" >}}
{{< image src="img/Asymptoten2.svg" caption="Graph mit waagerechter Asymptote: $y=-2$" >}}
{{< /gallery >}}

{{< gallery images="2" >}}
{{< image src="img/Asymptoten3.svg" caption="Graph mit schräger Asymptote: $y=x-2$" >}}
{{< image src="img/Asymptoten5.svg" caption="Graph mit kurvenförmiger Asymptote: $y=x^2+2$" >}}
{{< /gallery >}}

## Asymptoten bestimmen

{{< box-notice title="Asymptoten bestimmen" >}}

1. Senkrechte Asymptoten erhält man durch das **Bestimmen der Polstellen**.
1. Nicht-senkrechte Asymptoten erhält man **durch Polynomdivision**.

{{< /box-notice >}}

Da wir uns in [Teil 1](https://www.lehrzeile.org/hbf2/2-fortsetzung-der-differentialrechnung/funktionsuntersuchung-gebrochen-rationaler-funktionen-teil-1/) bereits mit dem Bestimmen von Polstellen (_senkrechten Asymptoten_) befasst haben, widmen wir uns nun den nicht-senkrechten Asymptoten und deren Bestimmung.

{{< box-notice title="Nicht-senkrechte Asymptoten und deren Abhängigkeit von Zähler- und Nennergrad" >}}
Wenn man die nicht-senkrechten Asymptoten einer gebrochen-rationalen Funktion bestimmen möchte, muss man im Grunde nur den **Zählergrad mit dem Nennergrad vergleichen**:

| Vergleich | Art der Asymptote |
| --------- | ----------------- |
| Zählergrad $\leq$ Nennergrad | **waagerechte** Asymptote |
| Zählergrad $=$ Nennergrad + 1 | **schräge** Asymptote |
| Zählergrad $\geq$ Nennergrad + 2 | **kurvenförmige** Asymptote (bzw. _asymptotische Kurve_) |

{{< /box-notice >}}

### Waagerechte Asymptote berechnen

Bei waagerechten Asymptoten unterscheidet man noch einmal zwischen zwei Fällen:

1. Zählergrad $<$ Nennergrad $\qquad \Rightarrow \qquad$ **waagerechte** Asymptote bei $y = 0$
1. Zählergrad $=$ Nennergrad $\qquad \Rightarrow \qquad$ **waagerechte** Asymptote bei $y = \frac{p_n}{q_m}$

Im ersten Fall bildet die $x$-Achse die Asymptote.
Im zweiten Fall sind $p_n$ und $q_m$ die Koeffizienten vor der jeweils größten Potenz des Zählers bzw. Nenners.

{{< box-example title="Beispiel 1:" >}}
Sei $\displaystyle f(x)=\frac{1}{x^2}$.

In diesem Beispiel müssen wir im Grunde nichts weiter tun, als anzugeben, dass der Zählergrad (hier: $0$) kleiner als der Nennergrad (hier: $2$) ist und daraus schlussfolgern, dass die $x$-Achse die **waagerechte Asymptote** darstellt:

0 = $grad(Z) < grad(N) = 2 \qquad \Rightarrow \qquad$ waagerechte Asymptote $y=0$.
{{< /box-example >}}

{{< box-example title="Beispiel 2:" >}}
Sei $\displaystyle f(x)=\frac{2x^2 - 4}{3x^2+5}$.

In diesem Beispiel sieht das schon etwas anders aus. Wir erkennen folgendes:

2 = $grad(Z) ~ = ~ grad(N) = 2 \qquad \Rightarrow \qquad$ waagerechte Asymptote bei $\frac{p_n}{q_m} = \frac{2}{3}$.

Die gebrochen-rationale Funktion in diesem Beispiel hat also auch eine waagerechte Asymptote bei $y = \frac{2}{3}$.
{{< /box-example >}}

{{< gallery images="2" >}}
{{< image src="img/Beispiel1.svg" caption="waagerechte Asymptote = $y=0$" >}}
{{< image src="img/Beispiel2.svg" caption="waagerechte Asymptote bei $y=\frac23$" >}}
{{< /gallery >}}

### Schräge und kurvenförmige Asymptote berechnen

Wie bereits angedeutet, lässt sich die Funktionsgleichung einer schräger bzw. kurvenförmigen Asymptote mittels einer **Polynomdivision** berechnen. Hierzu teilt man einfach das Zählerpolynom durch das Nennerpolynom.

{{< box-notice title="Bestimmung der Asymptoten mittels Polynomdivision" >}}
Führt man zur Bestimmung einer Asymptoten eine Polynomdivision durch, so erhält man im Ergebnis einen ganzrationalen Term sowie einen gebrochen-rationalen Term. Beide haben eine unterschiedliche Bedeutung:

1. Der ganzrationale Teil des Ergebnisses liefert uns die **Gleichung der Asymptote**.
1. Der gebrochen-rationale Teil des Ergebnisses wiederum gibt uns die Möglichkeit, zu untersuchen, wie sich der Funktionsgraph der Asymptoten **im Unendlichen annähert** bzw. an diese _anschmiegt_.

{{< /box-notice >}}

{{< box-example title="Beispiel 3: schräge Asymptote berechnen" >}}
Sei $\displaystyle f(x)=\frac{x^2 -3x}{x-1}$.

Wir bestimmen die Funktionsgleichung der Asymptote mittels Polynomdivision.
{{< /box-example >}}

{{< image src="img/Asymptoten3.svg" caption="Graph mit schräger Asymptote: $y=x-2$" >}}

{{< box-example title="Beispiel 4: kurvenförmige Asymptote berechnen" >}}
Mit kurvenförmigen Asymptoten verfährt man auf dieselbe Weise. Im Ergebnis erhält man jedoch mindestens ein Polynom vom Grad 2 oder höher.

Sei $\displaystyle f(x)=\frac{x^3 - x^2 + 2x - 1,5}{x-1}$.
{{< /box-example >}}

## Zwischenfazit

{{< youtube bYptobjt2JM >}}

## Grenzverhalten

{{< box-notice title="Grenzverhalten gebrochen-rationaler Funktionen" >}}
Um das Grenzverhalten des Funktionsgraphen zu bestimmen, wenden wir den Limes auf die Funktionsgleichung der Asymptoten an:

$lim_{x \to \pm \infty} f(x) = lim_{x \to \pm \infty} a(x)$, wobei $a(x)$ für die Funktionsgleichung der Asymptote steht.
{{< /box-notice >}}

{{< box-example title="" >}}
Wir bestimmen das Grenzverhalten der Funktionsgraphen aus den Beispielen zuvor:

1. $\displaystyle f(x)=\frac{1}{x}$
1. $\displaystyle f(x)=\frac{x^2-3x}{x-1}$
1. $\displaystyle f(x)=\frac{x^3+3x-1}{x-4}$

{{< /box-example >}}

## Übung macht den Meister

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" entry="**Untersuchen** Sie die folgenden gebrochen-rationalen Funktionen auf Asymptoten und ihr Grenzverhalten." >}}

1. $\displaystyle f_1(x)=\frac{2x^2+3x}{4x^2-4}$
1. $\displaystyle f_2(x)=\frac{0,5x^2+2x+3}{x+2}$

{{< /job >}}
