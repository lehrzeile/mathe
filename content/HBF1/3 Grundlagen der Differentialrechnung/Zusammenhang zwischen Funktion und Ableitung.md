---
title: "Zusammenhang zwischen Funktion und Ableitung"
description: ""
summary: ""
draft: false
weight: 405
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Grafisches Differenzieren

<!-- **Was bedeutet das eigentlich?** \ -->
Mit Hilfe des grafischen Differenzierens lässt sich der Graph der Ableitungsfunktion konstruieren, ohne die Gleichung der Ausgangsfunktion oder der Ableitungsfunktion zu kennen oder zu verwenden.

<!-- Dabei geht man wie folgt vor:\ -->
Ausgangspunkt ist der Ansatz, dass die Ableitungsfunktion $f'$ die (Tangenten-)Steigung an jeder beliebigen Stelle von $f$ angibt.
Auf Basis der Eigenschaften von $f$ lassen sich dann konkrete Aussagen über den Graphen von $f'$ treffen:

{{< table caption="Zusammenhänge zwischen Funktion und Ableitungsfunktion" >}}

{{< center >}}

| Funktion $f$ | Ableitungsfunktion $f'$ |
| --- | --- |
| Hochpunkt <br /> <span style="font-size: 0.8em;">(die Steigung ist erst positiv, dann negativ)</span> | Nullstelle <br /> <span style="font-size: 0.8em;">(der Graph ist erst positiv, dann negativ)</span> |
| Tiefpunkt <br /> <span style="font-size: 0.8em;">(die Steigung ist erst negativ, dann positiv)</span> | Nullstelle <br /> <span style="font-size: 0.8em;">(der Graph ist erst negativ, dann positiv)</span> |
| Wendepunkt | Hoch- oder Tiefpunkt <br /> <span style="font-size: 0.8em;">(hier ist die Steigung am größten oder kleinsten)</span> |
| steigender Graph <br /> <span style="font-size: 0.8em;">(die Steigung ist positiv)</span> | Graph oberhalb der $x$-Achse <br /> <span style="font-size: 0.8em;">($f'(x) > 0$)</span> |
| fallender Graph <br /> <span style="font-size: 0.8em;">(die Steigung ist negativ)</span> | Graph unterhalb der $x$-Achse <br /> <span style="font-size: 0.8em;">($f'(x) > 0$)</span> |

{{< /center >}}

{{< /table >}}

Hat man auf diese Weise genügend Informationen über den Graph der Ableitungsfunktion gesammelt, so lässt sich dieser näherungsweise skizzieren.

## Grafisches Differenzieren an einem Beispiel

{{< box-example >}}

Gegegeben ist der Graph einer Funktion $f$.
Das Ziel ist es, den Graphen der Ableitungsfunktion $f'$ zu skizzieren, ohne die Funktionsgleichung von $f$ zu kennen.

![Graph einer unbekannten Funktion - Graph der Ableitungsfunktion gesucht](img/Zusammenhang1.svg)
*Abb. 1: Graph einer unbekannten Funktion - Graph der Ableitungsfunktion gesucht*
<!-- {{< image src="img/Zusammenhang1.svg" caption="Graph einer unbekannten Funktion - Graph der Ableitungsfunktion gesucht" >}} -->

{{< /box-example >}}

Zunächst betrachtet man den Funktionsgraph und schaut, wo dieser Hoch- und Tiefpunkte besitzt. Hier befinden sich die Nullstellen der Ableitungsfunktion.

{{< image src="img/Zusammenhang2.svg" caption="Zusammenhang zwischen Hoch- und Tiefpunkten und den Nullstellen der Ableitung" >}}

Im nächsten Schritt schaut man, an welchen Stellen der Funktionsgraph Wenedepunkte besitzt. An diesen Stellen hat der Graph der Ableitungsfunktion einen Hoch- oder Tiefpunkt.

{{< image src="img/Zusammenhang3.svg" caption="Zusammenhang zwischen Wendepunkten und den Hoch- und Tiefpunkten der Ableitung" >}}

Zu guter Letzt betrachten wir die Steigung des Graphen und können anhanddessen darauf schließen, in welchen Bereichen sich der Graph der Ableitungsfunktion oberhalb bzw. unterhalb der $x$-Achse befindet. Hierbei betrachtet man jeweils die Bereiche zwischen den einzelnen Nullstellen sowie die beiden äußeren Bereiche (sozusagen die Bereiche "drum herum").

{{< image src="img/Zusammenhang4.svg" caption="Zusammenhang zwischen Steigung und Lage des Graphen der Ableitung" >}}

Alles in allem entsteht auf diese Weise ein relativ genaues Bild des Graphen der Ableitung, welchen wir (vgl. <a href="#abb5">Abbildung 5</a>) nun skizzieren können.

{{< image src="img/Zusammenhang.svg" caption="vollständiger Zusammenhang zwischen Funktion (blau) und Ableitung (orange)" >}}

## Übung macht den Meister

Teste dein Können, indem du mit Hilfe der nachfolgenden Learning-App den Funktionsgraphen (in blau dargestellt) ihre Ableitungen (in orange) zuordnest.

{{< learning-app id="pg8t076c326" >}}
