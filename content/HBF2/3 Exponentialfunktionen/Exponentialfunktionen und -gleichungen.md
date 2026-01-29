---
title: "Exponentialfunktionen und -gleichungen"
description: ""
summary: ""
draft: false
weight: 402
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Berechnung von Funktions- und Umkehrwerten

In der Realität gibt es Situationen, die exponentielle Vorgänge beschreiben, und in denen man sich Fragen stellt wie:

- "Nach welcher Zeit ...?"
- "Wie viel ... nach einer bestimmten Zeit?"

Solche Fragestellungen lassen sich in der Regel auf unterschiedliche Arten lösen:

1. durch Ausprobieren
2. graphisch oder
3. rechnerisch.

Letztere ist diejenige, auf die wir uns nachfolgend konzentrieren werden. Die Umkehrfunktion des Potenzierens (*"hoch irgendwas rechnen"*) nennt man **Logarithmieren**.

<!-- Definition Logarithmus -->
{{< box-notice title="Definition Logarithmus" >}}
Der **Logarithmus** ist die Umkehroperation zum Potenzieren und beantwortet die Frage: *"Mit welcher Zahl (Exponent $x$) muss ich eine Basis ($a$) potenzieren, um einen bestimmten Wert (Numerus $N$) zu erhalten?"*.

Die oben genannte Gleichung, welche wir lösen wollen, lautet also: $a^x=N$.

Die Schreibweise der Lösung lautet dann: $x = log_a(N)$.

Gesprochen: *"$x$ ist gleich der Logarithmus zur Basis $a$ von $N$."*

Wichtige Regeln sind, dass

1. der Numerus $N$ und die Basis $a$ positiv sein müssen und
2. die Basis $a$ nicht $1$ sein darf.

{{< /box-notice >}}

{{< box-example title="Beispiel: Exponentialgleichung lösen durch Logarithmieren" >}}

Gesucht ist die Lösung der Gleichung $2^x=8$.

Oder anders ausgedrückt: *"Wie oft muss man 2 mit sich selbst multiplizieren, um 8 zu erhalten?"*

$\begin{aligned}
&&2^x &=8 &\vert ~ \log \\\
\Leftrightarrow &&x &= \log_2(8) \\\
\Leftrightarrow &&x &= 3
\end{aligned}$

{{< /box-example >}}

### Übung macht den Meister

{{< job title="Exponentialgleichungen lösen - Level 1: Im Kopf logarithmieren" numbered="true" style="enum-alph" name="" entry="**Ermittle** den Logarithmus ohne Hilfsmittel." >}}

- $log_2(32)$
- $log_{10}(1000)$
- $log_7(1)$
- $log_4(\frac{1}{16})$

{{< /job >}}

{{< job title="Exponentialgleichungen lösen - Level 2" numbered="true" style="enum-alph" name="" entry="**Löse** die Exponentialgleichung. Runde das Ergebnis auf Hundertstel." >}}

- $2^x = 128$
- $10^x = 350$
- $1,1^x - 150 = 70$
- $4 + 0,9^x - 150 = 25$
- $3 \cdot 1,2^x = 270$
- $\displaystyle \frac{12}{2^x} = 4$
- $5 : 2,2^x = 1$
- $3^x = -2$

{{< /job >}}

{{< solution title="" >}}
    folgen...
{{< /solution >}}

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

Gesucht ist zunächst der Wachstumsfaktor sowie die Bestandsfunktion $N(t)$, welche die Anzahl der Bakterien $N$ in Abhängigkeit von der Zeit $t$ in Tagen beschreibt.
{{< /box-example >}}

### Übungen zum Aufstellen von Exponentialfunktionen

{{< job title="Exponentialgleichungen aufstellen - Level 1" numbered="true" style="enum-alph" name="" entry="**Ermittle** eine exponentielle Bestandsfunktion zum Anfangswert $c$, deren Graph durch den Punkt $P$ verläuft." >}}

- $c = 1500; ~~ P(1|750)$
- $c = 1,6; ~~ P(5|4,8)$
- $c = 32; ~~ P(3|4)$
- $c = 2,4; ~~ P(0,5|3,6)$

{{< /job >}}

{{< job title="Exponentialgleichungen aufstellen - Level 2" numbered="true" style="enum-alph" name="" entry="**Ermittle** eine exponentielle Bestandsfunktion, deren Graph durch die Punkte $A$ und $B$ verläuft." >}}

- $A(0|5); ~~ B(1|7,5)$
- $A(2|75); ~~ B(6|46875)$
- $A(-3|16); ~~ B(2|0,5)$

{{< /job >}}
