---
title: "Die Scheitelpunktform"
draft: false
weight: 203
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
url: '2-3'
---

Neben der allgemeinen Form einer Parabel $f(x)=ax^2+bx+c$ werden Parabeln häufig auch in der sogenannten <mark>Scheitelpunktform</mark> dargestellt. Mit Hilfe der Scheitelpunktform lässt sich der Scheitelpunkt - und somit im Grunde fast (!) alle wichtigen Eigenschaften einer Parabel - besonders leicht ablesen.

{{< box-notice title="Scheitelpunktform von quadratischen Funktionen" >}}
Die Scheitelpunktform einer quadratischen Funktion ist gegeben durch
$$ f(x) = a \cdot (x-x_s)^2 + y_s $$
wobei $x_s$ und $y_s$ die Koordinaten des Scheitelpunkts $S(x_s|y_s)$ sind und $a$ der Streck- bzw. Öffnungsfaktor der Parabel ist.
{{< /box-notice >}}

{{< box-question title="Ist dir etwas aufgefallen?" >}}
Die Scheitelpunktform liefert uns nicht nur Auskunft über die Verschiebung der Parabel entlang der $y$-Achse. Sie liefert uns darüber hinaus auch eine Information darüber, wie weit der Scheitelpunkt entlang der $x$-Achse nach links oder rechts verschoben wurde.

Damit beschäftigen wir uns im kommenden Abschnitt.
{{< /box-question >}}

## Verschiebung einer Parabel entlang der $x$- und $y$-Achse

Betrachten wir die quadratische Funktion $f(x)=1,5 \cdot (x-2)^2-1$.

Wir erkennen zunächst einmal, dass die Funktionsgleichung in der Scheitelpunktform vorliegt. Das heißt, dass sich die Koordinaten des Scheitelpunkts somit direkt ablesen lassen: $S(2|-1)$.

{{< image src="img/Scheitelpunktform.svg" caption="Scheitelpunktform einer Parabel" >}}

Was heißt das nun? <br />
Die Parabel wurde also um $2$ Einheiten nach rechts sowie um $1$ Einheit nach unten verschoben.
Außerdem lässt sich noch erkennen, dass die Parabel um den Faktor $1,5$ gestreckt wird.

{{< box-notice title="Verschiebung einer Parabel entlang der $x$- und $y$-Achse" >}}
    Ist eine quadratische Funktion in der Scheitelpunktform $ f(x) = a \cdot (x-x_s)^2 + y_s $ gegeben, so bestimmt $x_s$ die Verschiebung des Scheitelpunkts entlang der $x$-Achse.
    $y_s$ wiederum bestimmt die Verschiebung des Scheitelpunkts entlang der $y$-Achse.
    <ul>
        <li>$x_s > 0 :\quad$ Verschiebung um $x_s$ entlang der $x$-Achse in positive $x$-Richtung (nach rechts)</li>
        <li>$x_s < 0 :\quad$ Verschiebung um $x_s$ entlang der $x$-Achse in negative $x$-Richtung (nach links)</li>
        <li>$x_s = 0 :\quad$ der Scheitelpunkt liegt auf der $y$-Achse</li>
        <li>$y_s > 0 :\quad$ Verschiebung um $y_s$ entlang der $y$-Achse in positive $y$-Richtung (nach oben)</li>
        <li>$y_s < 0 :\quad$ Verschiebung um $y_s$ entlang der $y$-Achse in negative $y$-Richtung (nach unten)</li>
        <li>$y_s = 0 :\quad$ der Scheitelpunkt liegt auf der $x$-Achse</li>
    </ul>
{{< /box-notice >}}

{{< box-example title="Weitere Beispiele für verschobene Parabeln" >}}

- $f(x)=(x-3)^2+5$: \
der Scheitelpunkt der Parabel wurde um **5 Einheiten nach oben** und um **3 Einheiten nach rechts** verschoben
- $f(x)=(x+2)^2-1$: \
der Scheitelpunkt der Parabel wurde um **1 Einheit nach unten** und um **2 Einheiten nach links** verschoben
- $f(x)=-(x-1)^2$: \
der Scheitelpunkt der Parabel wurde um **1 Einheit nach rechts** verschoben und liegt **auf der $x$-Achse**. Außerdem ist die Parabel **nach unten geöffnet**.

{{< /box-example >}}

{{< job numbered="true" style="enum-alph" title="bettermarks" name="" entry="" >}}
    {{< bettermarks uebungscode="FA9U" seriesID="1699534299377696768" title="Streckfaktoren am Graphen ablesen" >}}
    {{< bettermarks uebungscode="C2X7" seriesID="1699534509067731328" title="Streckfaktoren rechnerisch bestimmen" >}}
    {{< bettermarks uebungscode="G2BG" seriesID="1699534742048735616" title="Normalparabel in y-Richtung verschieben" >}}
    {{< bettermarks uebungscode="UTAE" seriesID="1699535587368763648" title="Normalparabel in x-Richtung verschieben" >}}
{{< /job >}}

{{< job numbered="true" style="" title="Ablesen von Funktionsgraphen" name="" entry="" >}}
    In Abbildung 5 sind die Graphen verschobener Normalparabeln -- d. h. quadratischer Funktionen der Form $f(x)=x^2+bx+c$. **Bestimme** jeweils die Funktionsgleichung.
{{< /job >}}

{{< margin -3em >}}

{{< image src="img/Parabeln-Funktionsgleichungen.svg" caption="Funktionsgraphen und Funktionsgleichungen" >}}

{{< job numbered="true" style="enum-alph" title="bettermarks" name="" entry="" >}}
    {{< bettermarks uebungscode="P36L" seriesID="1699536066530247040" title="Scheitelpunkte und Funktionsgleichungen zu Parabeln bestimmen" >}}
    {{< bettermarks uebungscode="9W4X" seriesID="1699536235644584192" title="Parabel ihre Funktionsgleichung zuordnen" >}}
    {{< bettermarks uebungscode="F1FE" seriesID="1699536423125778560" title="Funktionsgleichung zu Parabel zuordnen" >}}
{{< /job >}}
