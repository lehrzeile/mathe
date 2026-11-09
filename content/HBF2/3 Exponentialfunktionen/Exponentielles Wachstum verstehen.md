---
title: "Exponentielles Wachstum verstehen"
description: ""
summary: ""
draft: false
weight: 301
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

## Erste Übungen

{{< job title="Regelmäßigkeiten erkennen und Werte ergänzen" numbered="true" style="enum-alph" name="" columns="2" entry="Die beiden Tabellen beschreiben jeweils einen exponentiellen Vorgang. **Ergänze** die fehlenden Werte." >}}

- | $n$ | 0 | 1 | 2 | 3 | 5 |
| --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 2 | 6 | 18 |  |  |

- | $n$ | 0 | 1 | 3 | 5 | 7 |
| --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 800 | 400 |  |  |  |

{{< /job >}}

{{< job title="Exponentiell oder linear?" numbered="true" style="enum-alph" name="" entry="**Finde** heraus, um welche Art von Wachstum es sich handelt." >}}

- | $n$ | 1 | 2 | 3 | 5 | 7 |
| --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 2 | 4 | 6 | 10 | 14 |

- | $n$ | 1 | 2 | 3 | 4 | 6 |
| --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | $\frac12$ | $\frac14$ | $\frac18$ | $\frac{1}{16}$ | $\frac{1}{64}$ |

- | $n$ | 0 | 1 | 2 | 3 | 4 | 10 | 20 |
| --------- | --------- | --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 4 | 10 | 25 | 62,5 |  |  |  |

- | $n$ | 0 | 1 | 2 | 3 | 4 | 10 | 20 |
| --------- | --------- | --------- | --------- | --------- | --------- | --------- | --------- |
| $B(n)$ | 28 | 23,5 | 19 | 14,5 |  |  |  |

- | $n$ | 0 | 1 | 2 | 3 | 4 | 10 | 20 |
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
