---
title: "Funktionsuntersuchung gebrochen-rationaler Funktionen - Teil 3"
description: ""
summary: ""
draft: false
weight: 305
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Extrempunkte

Das, was jetzt folgt, sollte dich erleichtern: \
Das Bestimmen von Extrempunkten von gebrochen-rationalen Funktionen funktioniert nach demselben Prinzip wie bei ganzrationalen Funktionen 🎉

Es gibt einen einzigen Unterschied: Du benötigst hierzu die weiteren Ableitungsregeln.

{{< box-notice title="Extremwerte bestimmen" >}}

1. Bilde die **erste Ableitung** der Funktion und setze diese **gleich Null**:
    $f'(x) = 0$
1. **Löse die erste Ableitung nach $x$ auf**. An diesen Stellen sind entweder ein Minimum oder Maximum gegeben.
1. Bilde die **zweite Ableitung** der Funktion. **Setze die** in 2. ermittelten **$x$-Werte** in die zweite Ableitung **ein**.
1. Ist der Wert der zweiten Ableitung an einer dieser Stellen **größer Null**, so liegt hier ein **Minimum** vor: \
    $f”(x) > 0 \qquad \Rightarrow \qquad$ Minimum
1. Ist der Wert der zweiten Ableitung an einer dieser Stellen **kleiner Null**, so liegt hier ein **Maximum** vor: \
    $f”(x) < 0 \qquad \Rightarrow \qquad$ Maximum
1. **Setze die $x$-Werte** aus 2. **in die Ausgangsfunktion $f(x)$ ein**. So bestimmst du die dazugehörigen $y$-Werte der Extrempunkte.

{{< /box-notice >}}

{{< box-example title="Beispiel:" >}}
Wir untersuchen die gebrochen-rationale Funktion $\displaystyle f(x)=\frac{x^2}{x+1}$ auf mögliche Extrempunkte.

Wir bilden die erste Ableitung:

$\begin{aligned}
&&f'(x) &= \frac{2x \cdot (x+1) - x^2 \cdot 1}{(x+1)^2} \\\
\Leftrightarrow && &= \frac{2x^2 + 2x - x^2}{(x+1)^2} \\\
\Leftrightarrow && &= \frac{x^2 + 2x}{(x+1)^2}
\end{aligned}$

Jetzt bilden wir die zweite Ableitung:

$\begin{aligned}
&&f''(x) &= \frac{(2x+2)\cdot(x+1)^2-2\cdot(x+1)\cdot(x^2+2x)}{(x+1)^4} \\\
\Leftrightarrow && &= \frac{(2x+2)\cdot(x+1)-2\cdot(x^2+2x)}{(x+1)^3} \\\
\Leftrightarrow && &= \frac{2x^2+4x+2-2x^2-4x}{(x+1)^3} \\\
\Leftrightarrow && &= \frac{2}{(x+1)^3}
\end{aligned}$

*Hinweis: Die dritte Ableitung lassen wir aus Gründen der Vereinfachung weg.*

Wir setzen die erste Ableitung gleich Null und lösen die Gleichung:

$\begin{aligned}
&&f'(x) &= 0 \\\
\Leftrightarrow && \frac{x^2 + 2x}{(x+1)^2} &= 0 \\\
\Leftrightarrow && x^2 + 2x &= 0 \\\
\Leftrightarrow && x \cdot (x+2) &= 0 \\\
\Leftrightarrow &&& x_1 = 0, \quad x_2 = -2
\end{aligned}$

Wir untersuchen nun, ob hier jeweils ein lokales Minimum oder Maximum vorliegt:

$f''(x) = \frac{2}{(x+1)^3}$:

1. $f''(0) = \frac{2}{(0+1)^3} = \frac{2}{1} = 2 \qquad \Rightarrow \qquad$ Tiefpunkt
1. $f''(-2) = \frac{2}{(-2+1)^3} = \frac{2}{(-1)^3} = \frac{2}{-1} = -2 \qquad \Rightarrow \qquad$ Hochpunkt

Nun bestimmen wir die dazugehörigen $y$-Werte:

$f(x) = \frac{x^2}{x+1}$:

1. $f(0) = \frac{0^2}{0+1} = \frac{0}{1} = 0$
1. $f(-2) = \frac{(-2)^2}{-2+1} = \frac{4}{-1} = -4$

{{< /box-example >}}

## Wendepunkte

Noch eine gute Nachricht: \
Mit den Wendepunkten von gebrochen-rationalen Funktionen funktioniert das ebenfalls nach demselben Prinzip wie bei ganzrationalen Funktionen 🎉

{{< box-notice title="Wendepunkte bestimmen" >}}

1. Bilde die **zweite Ableitung** der Funktion und setze diese **gleich Null**:
    $f''(x) = 0$
1. **Löse die zweite Ableitung nach $x$ auf**. An diesen Stellen existieren Wendepunkte.
1. Bilde die **dritte Ableitung** der Funktion. **Setze die** in 2. ermittelten **$x$-Werte** in die dritte Ableitung **ein**.
1. Ist der Wert der dritten Ableitung an einer dieser Stellen **größer Null**, so liegt hier eine **Rechts-Links-Wendestelle** vor: \
    $f”(x) > 0 \qquad \Rightarrow \qquad$ Rechts-Links-Wendestelle
1. Ist der Wert der dritten Ableitung an einer dieser Stellen **kleiner Null**, so liegt hier eine **Links-Rechts-Wendestelle** vor: \
    $f”(x) < 0 \qquad \Rightarrow \qquad$ Links-Rechts-Wendestelle
1. **Setze die $x$-Werte** aus 2. **in die Ausgangsfunktion $f(x)$ ein**. So bestimmst du die dazugehörigen $y$-Werte der Wendepunkte.

{{< /box-notice >}}

{{< box-example title="Beispiel:" >}}
Wir untersuchen die gebrochen-rationale Funktion $\displaystyle f(x)=\frac{x^2}{x+1}$ auf das Vorliegen von Wendepunkten.

Die zweite Ableitung kennen wir schon: \
$\displaystyle f''(x) = \frac{2}{(x+1)^3}$

Wir setzen die zweite Ableitung gleich Null und lösen die Gleichung:

$\begin{aligned}
&&f''(x) &= 0 \\\
\Leftrightarrow && \frac{2}{(x+1)^3} &= 0 \\\
\Leftrightarrow && 2 &= 0 \quad \text{Widerspruch}
\end{aligned}$

Da die Gleichung zu einem Widerspruch führte, schließen wir daraus, dass der Funktionsgraph keine Wendepunkte besitzt.

{{< /box-example >}}

## Übung macht den Meister

{{< job title="Üben und Vertiefen" numbered="true" style="enum-alph" name="" entry="**Untersuchen** Sie die folgenden gebrochen-rationalen Funktionen auf Extrem- und Wendepunkte." >}}

1. $\displaystyle f_1(x)=\frac{5x}{2-x^2}$
1. $\displaystyle f_2(x)=\frac{x^2+x+9}{x-1}$
1. $\displaystyle f_3(x)=\frac{2x}{x^2-2x+1}$

<br />

*Kommen dir die Funktionsgleichungen bekannt vor? Du hast sie schon in Teil 2 auf Achsenschnittpunkte, Asymptoten und Grenzverhalten untersucht.*

{{< /job >}}

{{< solution numbered="true" style="enum-alph" >}}

- Dieser Funktionsgraph besitzt keine Extrempunkte und somit auch keine Wendepunkte.
- 2

{{< /solution >}}

## Hakt es noch ein wenig?

Im folgenden Video findest du eine Erklärung für eine vollständige Kurvendiskussion einer gebrochen-rationalen Funktion:

{{< youtube UzjNEhpSNqA >}}
