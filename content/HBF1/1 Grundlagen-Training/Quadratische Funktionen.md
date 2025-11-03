---
title: "Quadratische Funktionen"
draft: false
weight: 205
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

Quadratische Funktionen begegnen dir öfter, als du vielleicht denkst. Wenn du einen Ball wirfst, eine Brücke anschaust oder eine Satellitenschüssel siehst, steckt dahinter oft eine besondere Kurve – die sogenannte **Parabel**.

## Die Normalparabel

{{< box-notice title="Normalparabel" >}}
Die einfachste quadratische Funktion ist die Funktion $f(x)= x^2$ und wird als **Normalparabel** bezeichnet.

Ihr Graph ist **symmetrisch zur $y$-Achse** und der Punkt $S(0|0)$ ist ihr **Scheitelpunkt**.
{{< /box-notice >}}

{{< image src="img/Normalparabel.svg" caption="Normalparabel" >}}

## Der Graph einer quadratischen Funktion - Die Parabel

Den Graph einer beliebigen quadratischen Funktion bezeichnet man als <mark>Parabel</mark>.

Parabeln können entweder nach unten oder nach oben geöffnet sein und sind dabei immer charakteristisch wie ein Bogen geformt.

Den Tiefpunkt bzw. Hochpunkt einer solchen bogenförmigen Parabel bezeichnet man als <mark>Scheitelpunkt</mark>.

Dieser kann beliebig im Koordinatensystem verschoben sein.

{{< box-notice title="Allgemeine Funktionsgleichung einer quadratischen Funktion" >}}
Die **allgemeine Funktionsgleichung** einer quadratischen Funktion hat die Form $$f(x)=ax^2+bx+c.$$
{{< /box-notice >}}

### Symmetrieeigenschaft und Scheitelpunkt quadratischer Funktionen

Eine Parabel ist <mark>achsensymmetrisch</mark>. Ihre Symmetrieachse ist eine vertikale Linie, die durch den Scheitelpunkt der Parabel verläuft und parallel zur $y$-Achse liegt. Das bedeutet, dass die linke und rechte Seite der Parabel, wenn man sie entlang dieser Achse spiegelt, perfekt übereinstimmen. Man könnte sie sozusagen entlang dieser Symmetrieachse falten, sodass anschließend beide Seiten perfekt übereinander liegen.

### Der Streckfaktor

Den **Streck- bzw. Öffnungsfaktor** einer Parabel kann man ganz einfach ablesen: Er ist der Parameter $a$ vor dem $x^2$, wenn $f(x)=ax^2$ ist. Der Streckfaktor $a$ bestimmt dabei die Form der Parabel. Man spricht hierbei entweder von **Streckung** oder **Stauchung**.

{{< box-notice title="Streck- bzw. Öffnungsfaktor einer Parabel" >}}
    Ob eine Parabel gestreckt oder gestaucht ist, erkennst du am Vorfaktor $a$:
    <ul>
        <li>$a = 1 :\quad$ der Graph ist eine **Normalparabel** (oranger Graph)</li>
        <li>$a = -1 :\quad$ der Graph ist eine **nach unten geöffnete** Normalparabel (blauer Graph)</li>
        <li>$a > 1$ oder $a < -1 :\quad$ die Parabel ist **gestreckt** (grüner Graph)</li>
        <li>$-1 < a < 1, \hspace{5pt} a \neq 0 :\quad$ die Parabel ist **gestaucht** (roter Graph)</li>
    </ul>
{{< /box-notice >}}

{{< image src="img/Streckung-Stauchung.svg" caption="Gestreckte und gestauchte Parabeln" >}}

### Einfluss der Parameter $b$ und $c$ auf die Normalparabel

Zurück zur allgemeinen Funktionsgleichung $f(x)=ax^2+bx+c$. Um den Streckfaktor $a$ haben wir uns bereits gekümmert. Wofür stehen allerdings $b$ und $c$?

Wir untersuchen also jetzt, wie die Parabel im Koordinatensystem verschoben wird, wenn wir die Parameter $b$ und $c$ verändern.

Der Parameter $c$ beeinflusst, wie weit die Parabel <mark>nach oben oder nach unten verschoben</mark> wird. Das kannst du im folgenden GeoGebra-Applet selbst testen, indem du den Schieberegler von $c$ verschiebst:

{{< geogebra-activity id="kfhaawtr" >}}

{{< margin 2em>}}

Vorab: Der Parameter $b$ hat keinen direkt erkennbaren Einfluss auf die Lage der Parabel. Erst wenn man genau hinschaut, wird sichtbar, was passiert, wenn sich der Parameter $b$ verändert:

{{< geogebra-activity id="mqzu6n8g" >}}

{{< margin 2em>}}

{{< job title="Beobachtungsauftrag" numbered="true" style="enum-arabic" name="" entry="Die beiden GeoGebra-Applet befassen sich mit dem Einfluss der beiden Parameter $b$ und $c$ auf die Lage der Parabel im Koordinatensystem." >}}

- **Bearbeite** die beiden GeoGebra-Applets.
- **Notiere** deine Beobachtungen stichwortartig in deine Unterlagen.

{{< /job >}}

{{< box-notice title="Verschiebung der Normalparabel entlang der $y$-Achse" >}}

Um nachvollziehen zu können, wie der Scheitelpunkt einer Parabel entlang der $y$-Achse verschoben wird, betrachten wir ausschließlich den Parameter $c$:

- $c=0$: der Scheitelpunkt liegt **auf der $x$-Achse**
- $c>0$: der Scheitelpunkt wird entlang der $y$-Achse **nach oben** verschoben
- $c<0$: der Scheitelpunkt wird entlang der $y$-Achse **nach unten** verschoben

{{< /box-notice >}}

{{< image src="img/Verschiebung.svg" caption="Verschiebung der Normalparabel entlang der y-Achse" >}}

### Die Scheitelpunktform

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

### Verschiebung einer Parabel entlang der $x$- und $y$-Achse

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

{{< job numbered="true" style="" title="Übung macht den Meister" name="" entry="" >}}
    Gegeben sind die Graphen quadratischer Funktionen der Form $f(x)=x^2+bx+c$, ($a=1$). **Bestimme** jeweils die Funktionsgleichung.
{{< /job >}}

{{< image src="img/Parabeln-Funktionsgleichungen.svg" caption="Funktionsgraphen und Funktionsgleichungen" >}}

## Quadratische Ergänzung

{{< box-question title="Schonmal gehört?" >}}
    Die **quadratische Ergänzung** benötigst du unter anderem, um die Funktionsvorschrift einer quadratischen Funktionen von der allgemeinen Form in die Scheitelpunktform umzuwandeln.
{{< /box-question >}}

{{< job numbered="false" style="" title="" name="Tüftelaufgabe" >}}
    **Erkläre**, wie das Verfahren der quadratischen Ergänzung funktioniert. Wähle hierzu ein oder zwei geeignete Beispiele (Funktionsgleichungen in der allgemeinen Form), die du in die Scheitelpunktform umwandelst.
{{< /job >}}

{{< box-note title="Kurzvortrag gefällig?" >}}
    Diese Aufgabe eignet sich hervorragend für einen kurzen benoteten Vortrag, in dem das Verfahren vorstellst und erklärst. Erstelle hierzu ein Handout, welches du deiner Klasse zur Verfügung stellst. Hierbei solltest du möglichst anschaulich vorgehen und die einzelnen Schritte möglichst genau beschreiben und so dein Können unter Beweis stellen.
{{< /box-note >}}

## Nullstellen quadratischer Funktionen - Lösen quadratischer Gleichungen

{{< box-notice >}}
Je nach Position des Scheitelpunkts kann der Graph einer quadratischen Funktion eine, zwei oder keine Nullstellen besitzen:

- die Parabel ist nach oben geöffnet und der Scheitelpunkt liegt oberhalb der $x$-Achse \
$\Rightarrow$ keine Nullstelle
- die Parabel ist nach unten geöffnet und der Scheitelpunkt liegt unterhalb der $x$-Achse \
$\Rightarrow$ keine Nullstelle
- der Scheitelpunkt liegt auf der $x$-Achse \
$\Rightarrow$ eine Nullstelle
- die Parabel ist nach oben geöffnet und der Scheitelpunkt liegt unterhalb der $x$-Achse \
$\Rightarrow$ zwei Nullstellen
- die Parabel ist nach unten geöffnet und der Scheitelpunkt liegt oberhalb der $x$-Achse \
$\Rightarrow$ zwei Nullstellen

{{< /box-notice >}}

{{< youtube yuoe6BN-1YQ >}}

{{< youtube IM1WtnTYJK4 >}}

{{< job name="" numbered="false" style="enum-arabic" name="Beobachtungsauftrag" entry="Die beiden Videos beschäftigen sich mit dem Bestimmen von Nullstellen quadratischer Funktionen - mit und ohne p-q-Formel." >}}

- **Schaue** dir zunächst aufmerksam das Video **an**.
- **Betrachte** das Video nun ein zweites Mal und **schreibe** die Beispielaufgabe **mit**.

{{< /job >}}

{{< job name="" numbered="true" style="enum-alph" title="Üben und Vertiefen" entry="" >}}

- folgt
- folgt
- folgt

{{< /job >}}

{{< job name="" numbered="true" style="enum-alph" title="Üben und Vertiefen" entry="" >}}

- folgt
- folgt
- folgt

{{< /job >}}

{{< box-note title="Zur Erinnerung:" >}}
    Wie genau das mit dem Ausklammern, dem Satz vom Nullprodukt und der p-q-Formel funktioniert, ist bereits im Abschnitt <a class="link" href="/hbf1/1-grundlagen-training/terme-und-gleichungen/">Terme und Gleichungen</a> beschrieben.
{{< /box-note >}}

## Die Linearfaktorform

Hat man die Nullstellen einer quadratischen Funktion berechnet, so kann man die Funktionsgleichung in der sogenannten **Linearfaktorform** darstellen.

Die Linearfaktorform ist besonders nützlich, wenn du die <mark>Nullstellen</mark> einer quadratischen Funktion kennst oder sie herausfinden möchtest. Sie zeigt direkt, an welchen Stellen der Graph die $x$-Achse schneidet. Sprich: Du kannst die Nullstellen direkt ablesen.

Jede Nullstelle $x_1$ oder $x_2$ der Funktion entspricht dabei einem Linearfaktor $(x-x_1)$ bzw. $(x-x_2)$. So kannst du die Funktionsgleichung einfach als Produkt dieser Linearfaktoren und des Streckfaktors $a$ schreiben.

{{< box-notice title="Definition Linearfaktor" >}}
Ein **Linearfaktor** ist ein Faktor einer Polynomfunktion, der die Variable $x$ nur in der ersten Potenz enthält (also $x$ "hoch Eins"), also von der Form $(x - N)$ ist, wobei $N$ eine Nullstelle der Funktion ist.
{{< /box-notice >}}

{{< box-notice title="Linearfaktorform" >}}
Die **Linearfaktorform** (oder auch Linearfaktordarstellung oder -zerlegung) ist eine Darstellung eines Polynoms als Produkt von Linearfaktoren und einer Konstante $a$. Sie lautet für eine quadratische Funktion:

$$f(x) = a \cdot (x-x_1) \cdot (x-x_2).$$

Dabei sind $x_1$ und $x_2$ die Nullstellen des Polynoms und $a$ der Streck- bzw. Öffnungsfaktor der Parabel.
{{< /box-notice >}}

{{< box-notice title="Beispiele für quadratische Funktionen in der Linearfaktorform" >}}

- $f(x) = a \cdot (x-1) \cdot (x-4):$ \
die quadratische Funktion besitzt die Nullstellen $x_1=1$ und $x_2=4$
- $f(x) = a \cdot (x+2) \cdot (x+5):$ \
die quadratische Funktion besitzt die Nullstellen $x_1=-2$ und $x_2=-5$
- $f(x) = a \cdot (x-3) \cdot (x+6):$ \
die quadratische Funktion besitzt die Nullstellen $x_1=3$ und $x_2=-6$

{{< /box-notice >}}

## Die drei Darstellungsformen

Je nachdem, was man bestimmen möchte, eignen sich die drei Darstellungsformen -- die allgemeine Form, die Scheitelpunktform sowie die Linearfaktorform -- einer quadratischen Funktion auf unterschiedliche Art und Weise.

{{< job numbered="false" style="" title="" name="Tüftelaufgabe" >}}
    Es gibt drei Möglichkeiten, eine quadratische Funktion darzustellen: die allgemeine Form, die Scheitelpunktform sowie die Linearfaktorform. **Stelle dar**, wie man mathematisch zwischen diesen drei Darstellungsformen wechseln kann und welche Vor- und Nachteile die jeweiligen Darstellungsformen haben.
{{< /job >}}

{{< box-note title="Kurzvortrag gefällig?" >}}
    Diese Aufgabe eignet sich hervorragend für einen kurzen benoteten Vortrag, in dem du der Klasse deine Ergebnisse und Überlegungen vorstellst und so dein Können unter Beweis stellst.
{{< /box-note >}}

## Schnittpunkte von Parabel und Gerade

{{< youtube W9tPX_gcGJ4 >}}

{{< job name="" numbered="false" style="enum-arabic" name="Beobachtungsauftrag" entry="" >}}

- **Schaue** dir zunächst aufmerksam das Video **an**.
- **Betrachte** das Video nun ein zweites Mal und **schreibe** die Beispielaufgabe **mit**.

{{< /job >}}

{{< job name="" numbered="true" style="enum-alph" title="Übung macht den Meister" entry="**Bestimme** jeweils die Schnittpunkte von Parabel und Gerade." >}}

- $f_1(x) = x^2 - 2x - 3, \qquad g_1(x)= 2x + 2$
- $f_2(x) = 2x^2 + 4x - 2, \qquad g_2(x)= -2x - 2$
- $f_3(x) = -\frac12 x^2 - 2x, \qquad g_3(x)= 2x + 8$

{{< /job >}}

{{< source text="mathe-total.de" src="https://www.mathe-total.de/new15a/Schnittpunkt-von-Geraden-und-Parabeln.pdf" lastcall="13.08.2025" >}}

{{< solution numbered="true" style="enum-alph" >}}

- $S_1(5|12) \qquad S_2(-1|0)$
- $S_1(0|-2) \qquad S_2(-3|4)$
- $S_1(-4|0)$ (Berührpunkt, da die Gerade $g$ eine Tangente an die Parabel $f$ ist)

{{< /solution >}}

## Schnittpunkte von zwei Parabeln

{{< youtube w_lhORlfZ20 >}}

{{< job name="" numbered="false" style="enum-arabic" name="Beobachtungsauftrag" entry="" >}}

- **Schaue** dir zunächst aufmerksam das Video **an**.
- **Betrachte** das Video nun ein zweites Mal und **schreibe** die Beispielaufgabe **mit**.

{{< /job >}}

{{< job name="" numbered="true" style="enum-alph" title="Übung macht den Meister" entry="**Bestimme** jeweils die Schnittpunkte der beiden Parabeln." >}}

- $f_1(x) = 2x^2 + 3x + 7, \qquad p_1(x)= 4x^2 - 5x - 3$
- $f_2(x) = 3x^2 - 5x, \qquad p_2(x)= 2x^2 - x - 4$
- $f_3(x) = 2x^2 - 4x + 10, \qquad p_3(x)= x^2 - 2x - 2$

{{< /job >}}

{{< source text="matheportal.com" src="https://matheportal.com/wp-content/uploads/2023/09/loesung-zu-aufgaben-zu-schnittpunkten-von-quadratischen-funktionen-1.pdf" lastcall="13.08.2025" >}}

{{< solution numbered="true" style="enum-alph" >}}

- $S_1(-1|6) \qquad S_2(5|72)$
- $S_1(2|2)$ (Berührpunkt)
- kein Schnittpunkt

{{< /solution >}}

## Zusammenfassung: Unterschied zwischen linearen und quadratischen Funktionen

{{< tiktok 7313675899507854624 >}}
