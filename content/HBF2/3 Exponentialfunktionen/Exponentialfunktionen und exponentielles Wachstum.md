---
title: "Exponentialfunktionen und exponentielles Wachstum"
description: ""
summary: ""
draft: false
weight: 401
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

Es gibt eine Klasse von Funktionen, mit deren Hilfe sich viele Wachstums- und Zerfallsprozesse modellhaft darstellen und erfassen lassen. Die Rede ist von sogenannten **Exponentialfunktionen** der Form $f(x) = c \cdot a^x$.

<!-- Definition -->
{{< box-notice title="$y$-Achsenabschnitt:" >}}
Seien $c$ und $a$ reelle Zahlen ($c, a \in \mathbb{R}$) und sei $a$ positiv ($a > 0$).

Dann bezeichnet man die Funktion

$$f(x) = c \cdot a^x$$

als **Exponentialfunktion zur Basis $a$**.
{{< /box-notice >}}

<!-- Beispiel 1 -->
{{< box-example title="Beispiel 1: Bakterienwachstum" >}}
Eine Mikrobenpopulation wächst täglich um $60%$ an. Zu Beobachtungsbeginn sind $200$ Mikroben vorhanden.

Gesucht ist die Bestandsfunktion $N(t)$, welche die Anzahl der Bakterien $N$ in Abhängigkeit von der Zeit $t$ in Tagen beschreibt.
{{< /box-example >}}

<!-- Lösung 1 -->
{{< solution >}}
    Der gesuchte Wachstumsfaktor, mit dem sich die vorhandene Population an einem Tag vervielfacht, beträgt hier $1,60$. Da es sich um ein Wachstum handelt, ist dieser größer als $1$. Im Detail setzen sich die $1,60$ aus $100%$ Bestand plus $60%$ Zuwachs zusammen -- und dies ergibt $160%$, was wiederum $1,60$ entspricht.

    Die gesuchte Bestandsfunktion $N$ lautet also: $\qquad N(t) = 200 \cdot 1,6^t$ ($t$ in Tagen).
{{< /solution >}}

<!-- Beispiel 2 -->
{{< box-example title="Beispiel 2: Radioaktiver Zerfall" >}}
    In einem Experiment zerfallen minütlich $30%$ der noch vorhandenen Stoffmenge eines radioaktiven Elements. Zu Beobachtungsbeginn sind $2$ mg des Stoffs vorhanden.

    Gesucht ist die Bestandsfunktion $N(t)$, welche die noch nicht zerfallene Stoffmenge $N$ in Abhängigkeit von der Zeit $t$ in Minuten beschreibt.
{{< /box-example >}}

<!-- Lösung 2 -->
{{< solution >}}
    Es handelt sich hierbei um einen Zerfalls- bzw. Abnahmeprozess. Der Wachstumsfaktor ist hier also kleiner als $1$. Genauer gesagt beträgt dieser hier $0,7$, denn $100%$ abzüglich $30%$ Zerfall (Verlust) ergibt $70%$.

    Die gesuchte Bestandsfunktion $N$ lautet also: $\qquad N(t) = 2 \cdot 0,7^t$ ($t$ in Minuten).
{{< /solution >}}

## Übung macht den Meister

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" entry="" >}}
    a
{{< /job >}}
