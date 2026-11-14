---
title: "Exponentielles Wachstum erkennen und beschreiben"
description: ""
summary: ""
draft: false
weight: 702
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
url: '7-2'
---

## Exponentielles Wachstum erkennen und beschreiben

<!-- Definition Exponentialfunktion -->
{{< box-notice title="Definition:" >}}
Seien $c$ und $a$ reelle Zahlen ($c, a \in \mathbb{R}$) mit $c$ ungleich Null ($c \neq 0$), $a$ positiv ($a > 0$) und ungleich Eins ($a \neq 1$).

Dann bezeichnet man die Funktion

$$f(x) = c \cdot a^x$$

als **Exponentialfunktion zur Basis $a$**. $c$ bezeichnet hierbei den Startwert (zum Zeitpunkt $0$).
{{< /box-notice >}}

<!-- Beispiel 2 -->
{{< box-example title="Beispiel 2: Bakterienwachstum" >}}
Eine Mikrobenpopulation wächst täglich um $60\\%$ an. Zu Beobachtungsbeginn sind $200$ Mikroben vorhanden.

Gesucht ist die Bestandsfunktion $B(n)$, welche die Anzahl der Bakterien $B$ in Abhängigkeit von der Zeit $n$ in Tagen beschreibt.
{{< /box-example >}}

<!-- Lösung 2 -->
{{< solution title="Lösung zu Beispiel 2" >}}
Der gesuchte Wachstumsfaktor, mit dem sich die vorhandene Population an einem Tag vervielfacht, beträgt hier $1,60$. Da es sich um ein Wachstum handelt, ist dieser größer als $1$. Im Detail setzen sich die $1,60$ aus $100\\%$ Bestand plus $60\\%$ Zuwachs zusammen -- und dies ergibt $160\\%$, was wiederum $1,60$ entspricht.

Die gesuchte Bestandsfunktion $B$ lautet also: $\qquad B(n) = 200 \cdot 1,6^n$ ($n$ in Tagen).
{{< /solution >}}

<!-- Beispiel 3 -->
{{< box-example title="Beispiel 3: Radioaktiver Zerfall" >}}
In einem Experiment zerfallen minütlich $30\\%$ der noch vorhandenen Stoffmenge eines radioaktiven Elements. Zu Beobachtungsbeginn sind $2$ mg des Stoffs vorhanden.

Gesucht ist die Bestandsfunktion $B(n)$, welche die noch nicht zerfallene Stoffmenge $B$ in Abhängigkeit von der Zeit $n$ in Minuten beschreibt.
{{< /box-example >}}

<!-- Lösung 3 -->
{{< solution title="Lösung zu Beispiel 3" >}}
Es handelt sich hierbei um einen Zerfalls- bzw. Abnahmeprozess. Der Wachstumsfaktor ist hier also kleiner als $1$. Genauer gesagt beträgt dieser hier $0,7$, denn $100\\%$ abzüglich $30\\%$ Zerfall (Verlust) ergibt $70\\%$.

Die gesuchte Bestandsfunktion $B$ lautet also: $\qquad B(n) = 2 \cdot 0,7^n$ ($n$ in Minuten).
{{< /solution >}}

## Übung macht den Meister

{{< job title="Wertetabellen erstellen und Graphen skizzieren" numbered="true" style="enum-alph" name="" columns="2" entry="**Erstelle** eine Wertetabelle und **skizziere** den Graphen von $f$ für $-3 \leq x \leq 3$." >}}

- $f(x) = 1,8 \cdot 2^x$
- $f(x) = 0,6 \cdot 1,5^x$
- $f(x) = 2 \cdot 0,6^x$
- $f(x) = 0,5 \cdot 1,5^x$
- $f(x) = 0,5 \cdot 2^x$
- $f(x) = 0,5 \cdot 0,6^x$
- $f(x) = (-2)^x$

{{< /job >}}

{{< job title="Funktionsgleichungen und Funktionsgraphen zuordnen" numbered="true" style="enum-alph" name="" columns="2" entry="**Ordne** die gegebenen Funktionsgleichungen dem jeweils passenden Funktionsgraphen aus Abbildung 3 **zu**. **Begründe** kurz deine Zuordnung." >}}

- $f(x) = 2^x$
- $f(x) = 3,1^x$
- $f(x) = 1,3^x$
- $f(x) = 0,2^x$
- $f(x) = (\frac12)^x$
- $f(x) = (\frac34)^x$

{{< /job >}}

{{< image src="img/Uebung_Exponentialfunktionen.svg" caption="Beispiel für den Graphen einer Exponentialfunktion bei exponentiellem Wachstum" >}}

<!-- {{< job title="Wertetabellen ergänzen" numbered="true" style="" name="" entry="" >}}
    b
{{< /job >}} -->

<!-- {{< job title="Regelmäßigkeiten erkennen und Funktionsgleichungen aufstellen" numbered="true" style="" name="" entry="" >}}
    folgt...
{{< /job >}} -->

{{< solution title="" >}}
    folgen...
{{< /solution >}}
