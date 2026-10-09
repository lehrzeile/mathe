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

Unsere Beispielfunktion hat zwei Extrema -- einen Hoch- und einen Tiefpunkt -- und somit zwei Stellen, an denen die Steigung des Funktionsgraphen Null ist. Dazwischen gibt es eine Stelle, an der die Steigung extremal (d.h. minimal oder maximal) ist. Solche Stellen bzw. Punkte bezeichnet man als <mark>Wendestellen bzw. -punkte</mark>.

<!-- Graph -->

## Beispiele und Vergleiche

{{< box-note title="Der Bergsteiger-Vergleich" >}}
*Stell dir vor, der Funktionsgraph stellt das Höhenprofil eines Geländes dar und du wanderst dieses entlang. Nachdem du den tiefsten Punkt passiert hast, (du befindest dich jetzt also rechts vom Tiefpunkt) nimmt die wieder Steigung zu -- es geht also wieder bergauf. Ehe du den höchsten Punkt erreicht hast, (du dich also links vom Hochpunkt befindest) nimmt die Steigung jedoch wieder ab -- da es ansonsten ja immer weiter bergauf gehen würde. Das bedeutet, dass es dazwischen folglich eine Stelle geben muss, an der die Steigung am größten ist.*
{{< /box-note >}}

{{< box-notice title="Wendepunkt" >}}
In einem Wendepunkt **ändert sich das Krümmungsverhalten** des Funktionsgraphen von $f(x)$ von $+$ nach $-$ (Links-Rechts-Wendestelle) oder von $-$ nach $+$ (Rechts-Links-Wendestelle).
{{< /box-notice >}}

Um (besser) zu verstehen, was das Krümmungsverhalten bedeutet, kannst du erneut den Bergsteiger-Vergleich heranziehen:

- *"die Steigung nimmt zu"* $\quad \Rightarrow +$
- *"die Steigung nimmt ab"* $\quad \Rightarrow -$.

<br />

Alternativ bietet sich aber auch der folgende Vergleich an:

{{< box-note title="Was das Krümmungsverhalten mit Autofahren zu tun hat?" >}}
*Stell dir vor, du schaust von oben herab auf den Funktionsgraphen und fährst mit einem Auto die vorgegebene Strecke entlang.*

*In bestimmten Bereichen fährst du eine Linkskurve* (Steigung $+ \Rightarrow $ Linkskrümmung)*, in wiederum anderen Bereichen eine Rechtskurve* (Steigung $- \Rightarrow$ Rechtskrümmung)*. Dazwischen gibt es jeweils einen kurzen Moment, in dem du das Lenkrad in keine der beiden Richtungen eingeschlagen hast* (Steigung $=0$) *und somit gerade hältst.*

$\Rightarrow$ Genau an dieser Stelle befindet sich der **Wendepunkt**.
{{< /box-note >}}

Diesen Vergleich kannst du mit Hilfe der nachfolgenden GeoGebra-Aktivität selbst austesten.

<!--  -->

## Wendestellen bestimmen

### Schritt 1

Zunächst bestimmen wir die Funktionsgleichung der <mark>zweiten und dritten Ableitung</mark>.

{{< box-example title="Beispiel $f(x)=0,2x^3 - 1,4x^2 +7,2$" >}}
Wir bestimmen also zunächst die Funktionsgleichungen der zweiten und dritten Ableitung:

- $f''(x)=1,2x-2,8$
- $f'''(x)=1,2$.

{{< /box-example >}}

### Schritt 2

Als nächstes kümmern wir uns um die sogenannte <mark>notwendige Bedingung Für Wendepunkte</mark>:

{{< box-notice title="Notwendige Bedingung für Wendepunkte" >}}
Die **notwendige Bedingung für eine Wendestelle** ist, dass die zweite Ableitung $f''(x)$ an dieser Stelle gleich Null ist -- weshalb man $f''(x) = 0$ setzt --, da die **Steigung an dieser Stelle extremal** ist und somit die **Veränderung der Steigung** gleich Null.
{{< /box-notice >}}

Wenn man die Wendestellen des Funktionsgraphen herausfinden möchte, sucht man -- anders als bei Extrempunkten  -- nach denjenigen Stellen, an denen **der Graph der Ableitung** eine waagerechte Tangente besitzt. Daher bestimmt man in diesem Fall die <mark>Nullstellen der zweiten Ableitung</mark>.

{{< box-example title="Beispiel $f(x)=0,2x^3 - 1,4x^2 +7,2$" >}}
Um die Wendestellen zu ermitteln, bestimmen wir die Nullstellen der zweiten Ableitung:

$\begin{aligned}
f''(x)&=0 & \vert \text{notw. Bed.}\\\
\Leftrightarrow 1,2x-2,8&=0 & \vert +2,8 \\\
\Leftrightarrow 1,2x&=2,8 & \vert :1,2 \\\
x &\approx 2,33
\end{aligned}$
{{< /box-example >}}

Wir wissen nun, dass der Funktionsgraph an der Stelle $x \approx 2,33$ einen Wendepunkt besitzt.

### Schritt 3

Um zu überprüfen, welche Art von Wendepunkt vorliegt, nutzt man nun die <mark>hinreichende Bedingung für Wendepunkte</mark>.

{{< box-notice title="Hinreichende Bedingung für Wendepunkte" >}}
Zur Überprüfung, welche Art von Wendepunkt jeweils vorliegt, wird die dritte Ableitung $f'''(x)$ herangezogen und die jeweilige Wendestelle $x_0$ eingesetzt:

- Ist $f'''(x_0) < 0$ so liegt eine **Links-Rechts-Wendestelle** vor,
- ist $f'''(x_0) > 0$, so handelt es sich um eine **Rechts-Links-Wendestelle**.

{{< /box-notice >}}

{{< box-example title="Beispiel $f(x)=0,2x^3 - 1,4x^2 +7,2$" >}}
Wir überprüfen die Wendestelle mit der dritten Ableitung:

$f''(2,33)=1,2 > 0 \quad \Rightarrow$ R-L-Wendestelle
{{< /box-example >}}

### Schritt 4

Zu guter Letzt berechnet man die noch fehlende $y$-Koordinate des Wendepunkts und gibt den Wendepunkt an.

{{< box-example title="Beispiel $f(x)=0,2x^3 - 1,4x^2 +7,2$" >}}
$f(2,33)=0,2 \cdot 2,33^3 - 1,4 \cdot 2,33^2 + 7,2 = 2,12$

Wir kennen nun also auch die genauen Koordinaten des Wendepunkts $(2,33|2,12)$.
{{< /box-example >}}

{{< image src="img/Graph_Wendestellen.svg" caption="Wendepunkt des Funktionsgraphen" >}}

## Zum Verständnis

<!-- *Warum ist das so?* -->

- Die Funktionsgleichung $f(x)$ liefert den passenden **Funktionswert** zu jedem $x$-Wert.
- Die Nullstellen der ersten Ableitung liefern uns diejenigen Stellen, an denen der Funktionsgraph Extrempunkte besitzt -- sprich: an denen der **Funktionswert extremal** (d. h. entweder minimal oder maximal) ist.
- Die erste Ableitung $f'(x)$ liefert uns die **Steigung** des Funktionsgraphen.
- Somit liefert uns die zweite Ableitung $f''(x)$ -- welche man auch als die erste Ableitung der ersten Ableitung bezeichnen könnte -- diejenigen Stellen des Funktionsgraphen, an denen die **Steigung extremal** ist.

{{< box-note title="Vergleich Extrem- und Wendepunkte" >}}
Ein Extrempunkt ist derjenige Punkt, in dem der Graph den **kleinsten bzw. größten Funktionswert** besitzt.

{{< center >}} vs. {{< /center >}}

Ein Wendepunkt ist derjenige Punkt, in dem der Graph die **kleinste bzw. größte Steigung** besitzt.
{{< /box-note >}}
