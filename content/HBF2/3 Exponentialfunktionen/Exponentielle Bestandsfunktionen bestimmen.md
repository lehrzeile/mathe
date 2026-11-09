---
title: "Exponentielle Bestandsfunktionen bestimmen"
description: ""
summary: ""
draft: false
weight: 304
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Exponentielle Bestandsfunktionen bestimmen

Funktionsgleichungen von Exponentialfunktionen lassen sich bestimmen,

- wenn ein Punkt sowie der Startwert oder
- wenn zwei Punkte

gegeben sind.

Hierzu braucht es etwas Übung und die Kenntnis über Potenzregeln und das Lösen von Exponentialgleichungen.
Hiermit befassen wir uns in diesem Abschnitt.

<!-- Beispiel 3 -->
{{< box-example title="Beispiel 3: Bakterienwachstum" >}}
Das Wachstum einer weiteren Mikrobenpopulation ist unbekannt. Zu Beobachtungsbeginn sind $400$ Mikroben vorhanden.
Nach $4$ Tagen hat sich die Population auf etwa $4200$ Mikroben erhöht.

Gesucht ist zunächst der Wachstumsfaktor sowie die Bestandsfunktion $B(n)$, welche die Anzahl der Bakterien $B$ in Abhängigkeit von der Zeit $n$ in Tagen beschreibt.

**Lösung:**

Zunächst einmal fassen wir die Aussage *"Nach $4$ Tagen hat sich die Population auf etwa $4200$ Mikroben erhöht."* als einen Punkt auf: $\qquad (4|4200)$.

Der Startwert ist mit $400$ Mikroben zu Beobachtungsbeginn ebenfalls schon gegeben.

Beides setzen wir in die folgende Gleichung ein:

$\begin{aligned}
B(n) &= B_0 \cdot a^n & \\\
4200 &= 400 \cdot a^4 &\vert ~ :400 \\\
10,5 &= a^4 &\vert ~ \sqrt[4]{} \\\
\sqrt[4]{10,5} &= a & \\\
1,8 &\approx a
\end{aligned}$

und erhalten im Ergebnis, dass der Wachstumsfaktor $1,8$ und somit die Wachstumsrate ca. $80\\%$ beträgt.

Die gesuche Bestandsfunktion lautet also: $\qquad B(n) = 400 \cdot 1,8^n$.

{{< /box-example >}}

{{< box-example title="Beispiel 4: Funktionsgleichung aus zwei Punkten aufstellen" >}}

Bekannt ist, dass der Graph einer Exponentialfunktion der Form $f(x) = c \cdot a^x$ durch die beiden Punkte $(3|24)$ und $(5|96)$ verläuft. Gesucht ist die Funktionsgleichung der Exponentialfunktion.

Zunächst stellen wir mit Hilfe der beiden Punkte jeweils eine Gleichungen auf:

1. $24 = c \cdot a^3$
2. $96 = c \cdot a^5$

Nun teilen wir die Gleichung mit dem größeren Exponenten durch die mit dem kleineren:

$\begin{aligned}
\frac{96}{24} &= \frac{a^5}{a^3} \\\
4 &= a^{5-3} \\\
4 &= a^2 &\vert ~ \sqrt[2]{} \\\
2 &= a
\end{aligned}$

Um den Startwert $c$ zu berechnen, muss man nun noch etwas "zurückrechnen":

$\begin{aligned}
24 &= c \cdot 2^3 &\vert ~ : 2^3 \\\
3 &= c
\end{aligned}$

{{< /box-example >}}

### Übungen zum Aufstellen von Exponentialfunktionen

{{< job title="Exponentialgleichungen aufstellen - Level 1" numbered="true" style="enum-alph" name="" entry="**Ermittle** eine exponentielle Bestandsfunktion zum Anfangswert $c$, deren Graph durch den Punkt $P$ verläuft." >}}

- $c = 1500; ~~ P(1|750)$
- $c = 1,6; ~~ P(5|4,8)$
- $c = 32; ~~ P(3|4)$
- $c = 2,4; ~~ P(0,5|3,6)$

{{< /job >}}

{{< job title="Exponentialgleichungen aufstellen - Level 2" numbered="true" style="enum-alph" columns="2" name="" entry="**Ermittle** eine exponentielle Bestandsfunktion, deren Graph durch die Punkte $A$ und $B$ verläuft." >}}

- $A(0|5); ~~ B(1|7,5)$
- $A(2|75); ~~ B(6|46875)$
- $A(-3|16); ~~ B(2|0,5)$
- $A(2|3); ~~ B(5|17)$
- $A(7|5); ~~ B(4|8)$
- $A(1|5); ~~ B(4|40)$
- $A(2|3); ~~ B(6|75)$
- $A(2|1); ~~ B(3|5)$

{{< /job >}}
