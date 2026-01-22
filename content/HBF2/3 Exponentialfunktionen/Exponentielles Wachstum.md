---
title: "Exponentielles Wachstum"
description: ""
summary: ""
draft: false
weight: 401
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Exponentielles Wachstum verstehen

Es gibt eine Klasse von Funktionen, mit deren Hilfe sich viele Wachstums- und Zerfallsprozesse modellhaft darstellen und erfassen lassen. Die Rede ist von sogenannten **Exponentialfunktionen**.
Mit diesen befassen wir uns in diesem Kapitel.

Zunächst wollen wir jedoch den Blick auf ein paar Begriffe werfen, die hierfür grundlegend sind.

{{< box-notice title="Exponentielles vs. lineares Wachstum" >}}
In der Mathematik beschreibt der Ausdruck **"exponentiell"** ein Wachstum oder einen Zerfall, bei dem sich eine Größe **in gleichbleibenden Zeitabständen immer um denselben Faktor multipliziert**, anstatt addiert zu werden, wie es bei linearem Wachstum der Fall ist. Das führt zu immer schnelleren Zu- oder Abnahmen, wie die beiden nachfolgenden Beispiele Bakterienwachstum (Bsp. 2) oder radioaktiver Zerfall (Bsp. 3) zeigen werden.
{{< /box-notice >}}

{{< box-notice title="Merke dir:" >}}
Wächst eine Größe $G$ in gleich langen Zeitabschnitten um den gleichen Prozentsatz $p\\%$, d. h. wird immer mit dem gleichen Faktor ($q > 1$) vervielfacht, liegt ein **exponentielles Wachstum** vor.
{{< /box-notice >}}

{{< box-notice title="Wachstumsrate und Wachstumsfaktor" >}}
Die **Wachstumsrate $p\\%$** gibt die Veränderung einer Ausgangsgröße in einem bestimmten Zeitabschnitt in Prozent an:

$$\displaystyle \qquad p\\% = \frac{\textrm{neue Größe - alte Größe}}{\textrm{alte Größe}}$$

Der Faktor, mit dem der alte Wert multipliziert werden muss, um den neuen Wert zu erhalten, heißt **Wachstumsfaktor $q$**:

$$\displaystyle \qquad q = 1 + p\\% = 1 + \frac{p}{100}$$

Bei einer Abnahme ist die Wachstumsrate negativ, der Wachstumsfaktor liegt dann zwischen $0$ und $1$.
{{< /box-notice >}}

{{< box-question title="Wusstest du?" >}}
Wird Geld verzinst, so nennt man den Wachstumsfaktor übrigens oft auch **Aufzinsungsfaktor**.
{{< /box-question >}}

<!-- Beispiel 1 -->
{{< box-example title="Beispiel 1: Gewinn eines Unternehmens" >}}
Der Gewinn einer Firma wuchs innerhalb eines Jahrs von $80.000€$ auf $86.000€$.

$\displaystyle \qquad p\\% = \frac{86000 - 80000}{80000} = \frac{6000}{80000} = 7,5%$

Die Wachstumsrate beträgt also $7,5\\%$.

Das bedeutet auch, dass der Gewinn des Unternehmens um das $1,075$-fache zugenommen hat, denn der Wachstumsfaktor beträgt:

$\qquad q = 1 + 7,5\\% = 1 + 0,075 = 1,075$.
{{< /box-example >}}

{{< box-note title="" >}}
Im Falle von Prozessen mit negativen Wachstumsraten spricht auch man von **exponentieller Abnahme**.
{{< /box-note >}}

{{< gallery images="2" >}}
{{< image src="img/Bsp_Exponentialfunktion_1.svg" caption="Graph einer Exponentialfunktion bei exponentiellem Wachstum" >}}
{{< image src="img/Bsp_Exponentialfunktion_2.svg" caption="Graph einer Exponentialfunktion bei exponentieller Abnahme" >}}
{{< /gallery >}}

### Erste Übungen

{{< job title="Regelmäßigkeiten erkennen und Werte ergänzen" numbered="true" style="" name="" entry="Die beiden Tabellen beschreiben jeweils einen exponentiellen Vorgang. **Ergänze** die fehlenden Werte." >}}

1. | $n$ | 0 | 1 | 2 | 3 | 5 |
| --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 2 | 6 | 18 |  |  |

2. | $n$ | 0 | 1 | 3 | 5 | 7 |
| --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 800 | 400 |  |  |  |

{{< /job >}}

{{< job title="Exponentiell oder linear?" numbered="true" style="" name="" entry="**Finde** heraus, um welche Art von Wachstum es sich handelt." >}}

1. | $n$ | 1 | 2 | 3 | 5 | 7 |
| --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 2 | 4 | 6 | 10 | 14 |

2. | $n$ | 1 | 2 | 3 | 4 | 6 |
| --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | $\frac12$ | $\frac14$ | $\frac18$ | $\frac{1}{16}$ | $\frac{1}{64}$ |

3. | $n$ | 0 | 1 | 2 | 3 | 4 | 10 | 20 |
| --------- | --------- | --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 4 | 10 | 25 | 62,5 |  |  |  |

4. | $n$ | 0 | 1 | 2 | 3 | 4 | 10 | 20 |
| --------- | --------- | --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 28 | 23,5 | 19 | 14,5 |  |  |  |

5. | $n$ | 0 | 1 | 2 | 3 | 4 | 10 | 20 |
| --------- | --------- | --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 120 | 96 | 76,8 | 61,44 |  |  |  |

{{< /job >}}

{{< job title="Exponentiell oder linear?" numbered="true" style="enum-alph" name="" entry="**Entscheide**, ob hier ein exponentielles Wachstum vorliegt und **gib** gegebenenfalls den Wachstumsfaktor **an**." >}}

- Herr Maier legt sein Geld auf einem Tagesgeldkonto zu einem festen Zinssatz in Höhe von $2,1\\%$ an.
- Der Wert eines Autos nimmt jährlich um $20\\%$ des Vorjahreswerts ab.
- Johanna spart monatlich $5€$.
- Eine Kettennachricht wird von jedem Empfänger an 7 weitere Personen geschickt.
- Eine spezielle Algenkultur ($15g$) verdoppelt ihre Masse alle zwei Tage.

{{< /job >}}

{{< solution title="" >}}
    folgen...
{{< /solution >}}

## Exponentielles Wachstum erkennen und beschreiben

<!-- Definition Exponentialfunktion -->
{{< box-notice title="Definition:" >}}
Seien $c$ und $a$ reelle Zahlen ($c, a \in \mathbb{R}$) mit $c$ ungleich Null ($c \neq 0$), $a$ positiv ($a > 0$) und ungleich Eins ($a \neq 1$).

Dann bezeichnet man die Funktion

$$f(x) = c \cdot a^x$$

als **Exponentialfunktion zur Basis $a$**.
{{< /box-notice >}}

<!-- Beispiel 2 -->
{{< box-example title="Beispiel 2: Bakterienwachstum" >}}
Eine Mikrobenpopulation wächst täglich um $60\\%$ an. Zu Beobachtungsbeginn sind $200$ Mikroben vorhanden.

Gesucht ist die Bestandsfunktion $B(n)$, welche die Anzahl der Bakterien $B$ in Abhängigkeit von der Zeit $b$ in Tagen beschreibt.
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

### Übung macht den Meister -- Teil 1

{{< job title="Wertetabellen erstellen und Graphen skizzieren" numbered="true" style="enum-alph" name="" entry="**Erstelle** eine Wertetabelle und **skizziere** den Graphen von $f$ für $-3 \leq x \leq 3$." >}}

- $f(x) = 1,8 \cdot 2^x$
- $f(x) = 0,6 \cdot 1,5^x$
- $f(x) = 2 \cdot 0,6^x$
- $f(x) = 0,5 \cdot 1,5^x$
- $f(x) = 0,5 \cdot 2^x$
- $f(x) = 0,5 \cdot 0,6^x$
- $f(x) = -2^x$

{{< /job >}}

{{< job title="Funktionsgleichungen und Funktionsgraphen zuordnen" numbered="true" style="enum-arabic" name="" entry="**Ordne** die gegebenen Funktionsgleichungen dem jeweils passenden Funktionsgraphen aus Abbildung 3 **zu**. **Begründe** kurz deine Zuordnung." >}}

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

{{< job title="Regelmäßigkeiten erkennen und Funktionsgleichungen aufstellen" numbered="true" style="" name="" entry="" >}}
    folgt...
{{< /job >}}

{{< solution title="" >}}
    folgen...
{{< /solution >}}
