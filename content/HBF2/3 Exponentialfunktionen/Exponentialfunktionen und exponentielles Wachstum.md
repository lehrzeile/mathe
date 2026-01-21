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

## Einstieg

Es gibt eine Klasse von Funktionen, mit deren Hilfe sich viele Wachstums- und Zerfallsprozesse modellhaft darstellen und erfassen lassen. Die Rede ist von sogenannten **Exponentialfunktionen**.

<!-- Definition -->
{{< box-notice title="Definition:" >}}
Seien $c$ und $a$ reelle Zahlen ($c, a \in \mathbb{R}$) und sei $a$ positiv ($a > 0$).

Dann bezeichnet man die Funktion

$$f(x) = c \cdot a^x$$

als **Exponentialfunktion zur Basis $a$**.
{{< /box-notice >}}

{{< box-notice title="Wachstumsrate und Wachstumsfaktor" >}}
Die Wachstumsrate $p %$ gibt die Veränderung einer Ausgangsgröße in einem bestimmten Abschnitt in Prozent an.

**Wachstumsrate:** $\displaystyle \qquad p\\% = \frac{\textrm{neue Größe}}{\textrm{alte Größe}}$

% Source - https://tex.stackexchange.com/a
% Posted by Nico
% Retrieved 2026-01-21, License - CC BY-SA 3.0

$\displaystyle\frac{\mbox{Actual Value of Production}}{\mbox{Demand}}$

__
alte Größe
Der Faktor, mit dem der alte Wert multipliziert
werden muss, um den neuen Wert zu erhalten,
heißt Wachstumsfaktor q.
Wachstumsfaktor: q = 1 + p % = 1 + p
_
100
Bei einer Abnahme ist die Wachstumsrate
negativ, der Wachstumsfaktor ist dann kleiner
als 1.
{{< /box-notice >}}

<!-- Exponentiell = a * a * a * a * ... * a = a^n -->

### Erste Übungen

{{< job title="Regelmäßigkeiten erkennen" numbered="true" style="" name="" entry="Die Tabelle beschreibt jeweils einen exponentiellen Vorgang. **Ergänze** die fehlenden Werte." >}}

+ a
+ b

{{< /job >}}

{{< job title="Exponentiell oder linear?" numbered="true" style="" name="" entry="**Prüfe**, ob ein lineares oder ein exponentielles Wachstum vorliegt." >}}

+ a
+ b

{{< /job >}}

{{< solution title="" >}}
    Lösungen
{{< /solution >}}

## Exponentielles Wachstum erkennen und beschreiben

<!-- Beispiel 1 -->
{{< box-example title="Beispiel 1: Bakterienwachstum" >}}
Eine Mikrobenpopulation wächst täglich um $60\percent$ an. Zu Beobachtungsbeginn sind $200$ Mikroben vorhanden.

Gesucht ist die Bestandsfunktion $N(t)$, welche die Anzahl der Bakterien $N$ in Abhängigkeit von der Zeit $t$ in Tagen beschreibt.
{{< /box-example >}}

<!-- Lösung 1 -->
{{< solution title="Lösung zu Beispiel 1" >}}
Der gesuchte Wachstumsfaktor, mit dem sich die vorhandene Population an einem Tag vervielfacht, beträgt hier $1,60$. Da es sich um ein Wachstum handelt, ist dieser größer als $1$. Im Detail setzen sich die $1,60$ aus $100\percent$ Bestand plus $60\percent$ Zuwachs zusammen -- und dies ergibt $160\percent$, was wiederum $1,60$ entspricht.

Die gesuchte Bestandsfunktion $N$ lautet also: $\qquad N(t) = 200 \cdot 1,6^t$ ($t$ in Tagen).
{{< /solution >}}

<!-- Beispiel 2 -->
{{< box-example title="Beispiel 2: Radioaktiver Zerfall" >}}
In einem Experiment zerfallen minütlich $30\percent$ der noch vorhandenen Stoffmenge eines radioaktiven Elements. Zu Beobachtungsbeginn sind $2$ mg des Stoffs vorhanden.

Gesucht ist die Bestandsfunktion $N(t)$, welche die noch nicht zerfallene Stoffmenge $N$ in Abhängigkeit von der Zeit $t$ in Minuten beschreibt.
{{< /box-example >}}

<!-- Lösung 2 -->
{{< solution title="Lösung zu Beispiel 2" >}}
Es handelt sich hierbei um einen Zerfalls- bzw. Abnahmeprozess. Der Wachstumsfaktor ist hier also kleiner als $1$. Genauer gesagt beträgt dieser hier $0,7$, denn $100\percent$ abzüglich $30\percent$ Zerfall (Verlust) ergibt $70\percent$.

Die gesuchte Bestandsfunktion $N$ lautet also: $\qquad N(t) = 2 \cdot 0,7^t$ ($t$ in Minuten).
{{< /solution >}}

### Übung macht den Meister -- Teil 1

{{< job title="Wertetabellen erstellen und Graphen skizzieren" numbered="true" style="" name="" entry="" >}}
    a
{{< /job >}}

{{< job title="Wertetabellen ergänzen" numbered="true" style="" name="" entry="" >}}
    b
{{< /job >}}

{{< job title="Funktionsgleichungen und Funktionsgraphen zuordnen" numbered="true" style="" name="" entry="**Ordne** die gegebenen Funktionsgleichungen dem jeweils passenden Funktionsgraphen **zu**. **Begründe** kurz deine Zuordnung." >}}

+ a
+ b

{{< /job >}}

{{< job title="Regelmäßigkeiten erkennen und Funktionsgleichungen aufstellen" numbered="true" style="" name="" entry="" >}}
    c
{{< /job >}}

{{< solution title="" >}}
    Lösungen
{{< /solution >}}

## Berechnung von Funktions- und Umkehrwerten

- "Nach welcher Zeit?"
- "Wie viel nach einer bestimmten Zeit?"

1. Lösung durch Ausprobieren
2. graphische Lösung
3. rechnerische Lösung (Logarithmus)

<!-- Definition Logarithmus -->
{{< box-notice title="" >}}
    a
{{< /box-notice >}}

### Übung macht den Meister -- Teil 2

{{< job title="Exponentialgleichungen lösen - Level 1" numbered="true" style="" name="" entry="" >}}
    c
{{< /job >}}

{{< job title="Exponentialgleichungen lösen - Level 2" numbered="true" style="" name="" entry="" >}}
    c
{{< /job >}}

{{< solution title="" >}}
    Lösungen
{{< /solution >}}

## Exponentielle Bestandsfunktionen bestimmen

1. $a$ und Punkt gegeben
2. Lösung durch Einsetzen von zwei Punkten

<!-- Beispiel 3 -->
{{< box-example title="Beispiel 3: Bakterienwachstum" >}}
Das Wachstum einer weiteren Mikrobenpopulation ist unbekannt. Zu Beobachtungsbeginn sind $400$ Mikroben vorhanden.
Nach $4$ Tagen hat sich die Population auf etwa $4200$ Mikroben erhöht.

Gesucht ist zunächst der Wachstumsfaktor sowie die Bestandsfunktion $N(t)$, welche die Anzahl der Bakterien $N$ in Abhängigkeit von der Zeit $t$ in Tagen beschreibt.
{{< /box-example >}}

### Übungen zum Aufstellen von Exponentialfunktionen

{{< job title="Exponentialgleichungen aufstellen - Level 1" numbered="true" style="" name="" entry="**Ermittle** eine exponentielle Bestandsfunktion zum Anfangswert $a$, deren Graph durch den Punkt $P$ verläuft." >}}

+ $a = 1500; ~~ P(1|750)$
+ $a = 1,6; ~~ P(5|4,8)$
+ $a = 32; ~~ P(3|4)$
+ $a = 2,4; ~~ P(0,5|3,6)$

{{< /job >}}

{{< job title="Exponentialgleichungen aufstellen - Level 2" numbered="true" style="" name="" entry="" >}}
    c
{{< /job >}}
