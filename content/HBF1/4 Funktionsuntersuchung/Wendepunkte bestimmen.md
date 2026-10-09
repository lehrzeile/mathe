---
title: "Wendepunkte bestimmen"
description: ""
summary: ""
draft: false
weight: 503
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

Unsere Beispielfunktion hat zwei Extrema -- einen Hoch- und einen Tiefpunkt -- und somit zwei Stellen, an denen die Steigung des Funktionsgraphen Null ist. Das bedeutet folglich auch, dass es dazwischen eine Stelle geben muss, an der die Steigung extremal (d.h. minimal oder maximal) ist. Solche Stellen bzw. Punkte bezeichnet man als <mark>Wendestellen bzw. -punkte</mark>.

{{< box-notice title="Wendepunkt" >}}
In einem Wendepunkt ändert sich das Krümmungsverhalten des Funktionsgraphen von $f(x)$ von $+$ nach $-$ oder von $-$ nach $+$. Zudem ist ein Wendepunkt derjenige Punkt zwischen zwei Extrempunkten, in dem der Graph die **kleinste bzw. größte Steigung** besitzt.
{{< /box-notice >}}

*Was ist zu tun?* \
Um diejenigen Stellen des Funktionsgraphen ausfindig zu machen, an denen sich Wendepunkte befinden, bestimmt man die <mark>Nullstellen der zweiten Ableitung</mark>.

*Warum ist das so?*

- Die Funktionsgleichung $f(x)$ liefert den passenden **Funktionswert** zu jedem $x$-Wert.
- Die Nullstellen der ersten Ableitung liefern uns diejenigen Stellen, an denen der Funktionsgraph Extrempunkte besitzt -- sprich: an denen der **Funktionswert extremal** (d. h. minimal oder maximal) ist.
- Die erste Ableitung $f'(x)$ liefert uns die **Steigung** des Funktionsgraphen.
- Somit liefert uns die zweite Ableitung $''f(x)$ -- welche man auch als die erste Ableitung der ersten Ableitung bezeichnen könnte -- diejenigen Stellen des Funktionsgraphen, an denen die **Steigung extremal** ist.

{{< box-notice title="Notwendige Bedingung für Wendepunkte" >}}
Die **notwendige Bedingung für eine Wendestelle** einer differenzierbaren Funktion ist, dass die zweite Ableitung ($f''(x)$) an dieser Stelle gleich Null ist ($f''(x) = 0$), da die **Veränderung der Steigung** an dieser Stelle Null ist (und die Steigung somit extremal).
{{< /box-notice >}}

<br />

{{< box-example title="Beispiel $f(x)=0,2x^3 - 1,4x^2 +7,2$" >}}
Um die Wendestellen zu ermitteln, bestimmen wir nun die Nullstellen der zweiten Ableitung:

$\begin{aligned}
f''(x)&=0 & \vert \text{notw. Bed.}\\\
\Leftrightarrow 1,2x-2,8&=0 & \vert +2,8 \\\
\Leftrightarrow 1,2x&=2,8 & \vert :1,2 \\\
x &\approx 2,33
\end{aligned}$

Anschließend überprüfen wir die Wendestelle mit der dritten Ableitung:

$f''(2,33)=1,2 > 0 \quad \Rightarrow$ R-L-Wendestelle

Und zu guter Letzt berechnen wir die $y$-Koordinate des Wendepunkts:

$f(2,33)=0,2 \cdot 2,33^3 - 1,4 \cdot 2,33^2 + 7,2 = 2,12$

Wir kennen nun also auch die genauen Koordinaten des Wendepunkts $(2,33|2,12)$.
{{< /box-example >}}

{{< image src="img/Graph_Wendestellen.svg" caption="Wendepunkt des Funktionsgraphen" >}}
