---
title: "Das unbestimmte Integral und die Stammfunktion"
description: ""
summary: ""
draft: false
weight: 502
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Ober- und Untersumme

Eine Möglichkeit, um den Flächeninhalt zwischen dem Funktionsgraphen und der $x$-Achse (oder kurz: unterhalb eines Funktionsgraphen) zu bestimmen, ist das Berechnen der sogenannten **Ober- und Untersumme**.

Obersumme und Untersumme dienen in der Integralrechnung dazu, den Flächeninhalt unter einem Funktionsgraphen <mark>näherungsweise</mark> durch Rechtecke zu berechnen (man spricht hierbei von einer sogenannten *Approximation*). Die **Untersumme** (die Summe der kleineren Rechtecke) liegt vollständig unter dem Funktionsgraphen (und ist somit kleiner als die wahre Fläche des Funktionsgraphen), während die **Obersumme** (die Summe der großen Rechtecke) darüber liegt (und somit größer als die wahre Fläche ist).

{{< box-notice title="Unter- und Obersumme" >}}
Zunächst wird das Intervall $[a; b]$ wird in $n$ gleich breite Teilabschnitte unterteilt. Die Breite dieser Teilabschnitte (und somit später der einzelnen Rechtecke) beträgt dann $\frac{b-a}{n}$.

1. Bei der Untersumme wird jedes Rechteck stets unter dem Funktionsgraph eingezeichnet. Der **kleinste Funktionswert** in jedem Teilbereich gibt dabei die Höhe des Rechtecks an.
2. Bei der Obersumme wird das Rechteck immer über der Kurve eingezeichnet. Hierbei gibt der **größte Funktionswert** in jedem Teilbereich die Höhe des Rechtecks an.

{{< /box-notice >}}

{{< box-example title="Beispiel:" >}}
In diesem Beispiel wollen wir den Flächeninhalt zwischen dem Funktionsgraphen von $f$ mit $f(x)=x^2$ und der $x$-Achse im Intervall von $0$ bis $2$ bestimmen.
{{< /box-example >}}

Mit Hilfe von GeoGebra und dem Befehl {{< code "A = Integral(f, 0, 2)" >}} lässt sich dies ganz einfach realisieren und wir erhalten die Fläche unterhalb des Funktionsgraphen: $A=2,67$ Flächeneinheiten (kurz: FE).

{{< image src="img/Ober-Untersumme_1.svg" caption="Flächeninhalt unterhalb des Graphen von $f$" >}}

Zerlegt man nun das Intervall in drei ($n=3$) gleich große Abschnitte, so erhält man folgende Ober- sowie Untersummen:

{{< gallery images="2" >}}
{{< image src="img/Ober-Untersumme_2.svg" caption="Untersumme für $n=3$" >}}
{{< image src="img/Ober-Untersumme_3.svg" caption="Obersumme für $n=3$" >}}
{{< /gallery >}}

Erhöht man nun schrittweise die Anzahl der Teilabschnitte ($n$), so erhält man folgende Ergebnisse:

{{< gallery images="2" >}}
{{< image src="img/Ober-Untersumme_4.svg" caption="Untersumme für $n=10$" >}}
{{< image src="img/Ober-Untersumme_5.svg" caption="Obersumme für $n=10$" >}}
{{< /gallery >}}

Und für $n=30$ ist bereits eine deutliche Annäherung an die "wahre Fläche" erkennbar:

{{< gallery images="2" >}}
{{< image src="img/Ober-Untersumme_6.svg" caption="Untersumme für $n=30$" >}}
{{< image src="img/Ober-Untersumme_7.svg" caption="Obersumme für $n=30$" >}}
{{< /gallery >}}

## Erste Übung

{{< geogebra-activity id="pe2xznsq" >}}

{{< job title="" numbered="true" style="enum-alph" entry="Hier siehst du die gesuchte Fläche sowie einen Schieberegler, mit dem die Anzahl der Rechtecke ($n$) verändert werden kann. Folgende Werte können eingeblendet werden: Obersumme und Untersumme. Außerdem wird die Differenz $O_n – U_n$ angezeigt." >}}

- Beginne mit der kleinsten Einstellung des Schiebereglers ($n$ = 2) und trage die aus der Grafik abgelesenen Werte in die Tabelle auf deinem Arbeitsblatt ein. Variiere den Parameter $n$ aufsteigend und fülle die Tabelle entsprechend weiter aus.
- Beschreibe wie sich die abgelesen Werte mit steigendem $n$ verändern?
- Gib eine Schätzung für die wahre Fläche ab.

{{< /job >}}

## Aus Ober- und Untersumme wird das Integral

{{< box-notice title="Grenzwert von Ober- und Untersumme" >}}
Grundsätzlich gilt: \
Je mehr Rechtecke bei Ober- und Untersumme eingezeichnet werden (sprich: je größer $n$ ist), desto genauer ist die Annäherung an die wahre Fläche unterhalb des Funktionsgraphen. Man spricht hierbei auch von der sog. **Feinheit** der Zerlegung bzw. der Unterteilung des Intervalls.

*Was sich daraus folgern lässt?* \
Den Grenzwert von Ober- und Untersumme bezeichnet man als das sogenannte **Integral von $f$ in den Grenzen von $a$ bis $b$**.

Man schreibt hierfür: \
$\displaystyle \lim_{n \to \infty} O_n = \lim_{n \to \infty} U_n = \int_a^b f(x) ~ dx$.
{{< /box-notice >}}

{{< box-note title="Bedeutung der Symbole" >}}

1. Das Integralzeichen $\int$ ist ein langgestrecktes "S", das für das lateinische Wort *"Summa"* (Summe) steht.
2. $a$ und $b$ bezeichnen hierbei die **Grenzen des Intervalls**, wobei man hier noch einmal zwischen **unterer Grenze** ($a$) und **oberer Grenze** ($b$) unterscheidet.
3. Das $dx$ am Ende des Integrals ist das sogenannte Differential und kennzeichnet die Integrationsvariable. Hier: $x$.

{{< /box-note >}}

Bevor wir uns als nächstes die Bedeutung des **unbestimmten Integrals** anschauen, müssen wir zunächst noch den Begriff der **Stammfunktion** klären.

{{< box-notice title="Stammfunktion F(x) einer Funktion f(x)" >}}
Eine Funktion $F$ heißt **Stammfunktion von $f$**, wenn gilt:

$$F'(x) = f(x).$$

Oder anders ausgedrückt: \
Jede Funktion $F$, deren Ableitung der Funktionsgleichung von $f$ entspricht, nennt man **Stammfunktion von $f$**. Es muss also $F'(x) = f(x)$ erfüllt sein.
{{< /box-notice >}}

Unter dem Strich bedeutet das also, dass die Ableitung der Stammfunktion gerade wieder die ursprüngliche Funktion ergibt, wie du auf der nachfolgenden Grafik anschaulich sehen kannst:

{{< image src="https://www.mathe-lerntipps.de/wp-content/uploads/2018/04/1435243714_Ableiten-und-Aufleiten.png" caption="Der Kreislauf des Ableitens und Aufleitens" >}}

{{< source type="image" text="mathe-lerntipps.de" src="https://www.mathe-lerntipps.de/stammfunktion/" lastcall="25.02.2026" >}}

*Wie bildet man denn nun also die Stammfunktion?* \
Eine Stammfunktion zu bilden, bedeutet also, die Funktionsgleichung aufzuleiten. Und diesen Vorgang kann man sich wie ein "rückwärts ableiten" vorstellen.

Bevor wir allerdings dazu kommen, wie man "aufleitet", klären wir zunächst noch die beiden Begriffe **unbestimmtes Integral** und **bestimmtes Integral**:

{{< box-notice title="Unbestimmtes Integral" >}}
Das **unbestimmte Integral** bezeichnet die Menge aller Stammfunktionen von $f$.

Man schreibt: \
$\displaystyle \int f(x) ~ dx = F(x) + c$, $\qquad$ mit $c\in\mathbb{R}$.
{{< /box-notice >}}

{{< box-question title="Was ist mit 'die Menge aller Stammfunktionen' gemeint?" >}}
Ganz einfach: Du weißt doch noch, was beim Ableiten mit Konstanten passiert, oder? Diese fallen gemäß der Konstantenregel (vgl. Abschnitt [Ableitungsregeln](/hbf1/3-grundlagen-der-differentialrechnung/erste-ableitungsregeln/)) beim Ableiten weg. Daher kann man beim "Rückwärts-Ableiten" nicht wissen, welche reelle Zahl $c \in \mathbb{R}$ zuvor als Konstante in der Funktionsgleichung gestanden haben muss. Hierfür gibt es unendlich viele Möglichkeiten, da es ja schließlich auch unendlich viele reelle Zahlen ($\mathbb{R}$) gibt. Man schreibt daher: $F(x)+c$, wobei $c$ für eine beliebige reelle Zahl steht.
{{< /box-question >}}

{{< box-notice title="Unbestimmtes Integral" >}}
Das **bestimmte Integral** bezeichnet den Flächeninhalt zwischen dem Graphen von $f$, der $x$-Achse und den Geraden $x = a$ und $x = b$.

Schreibweise:\
$\displaystyle \int_a^b f(x) ~ dx = F(b) − F(a)$

<!-- Zeichnung -->

Diese letzte Aussage bezeichnet man auch als den **Hauptsatz der Differential- und Integralrechnung**.
{{< /box-notice >}}

<!-- Geometrisch interpretiert ist das Integral von $f$ von $a$ bis $b$ die Summe der orientierten Flächeninhalte der Teilflächen zwischen dem Graphen von $f$ und der $x$-Achse. Orientierung meint hierbei, dass Flächen oberhalb ($+$) oder unterhalb ($-$) der $x$-Achse liegen können. Man geht also davon aus, dass ein Flächeninhalt mit negativem Vorzeichen ($-$) eine Fläche beschreibt, die unterhalb der $x$-Achse liegt. Ein positiver Flächeninhalt ($+$) beschreibt wiederum eine Fläche, die oberhalb der $x$-Achse liegt.  -->

Im folgenden Kapitel [Erste Integrationsregeln](/hbf2/4-integralrechnung/erste-integrationsregeln/) werden wir uns anschauen, wie man Stammfunktionen bildet -- ähnlich wie das Ableiten und mit festen Regeln.

<!-- Eine solche Stammfunktion erhält man, indem man die folgenden Regeln zum Aufleiten anwendet. -->
<!-- Potenzregel bei der Integration: f(x)=x^n \Rightarrow F(x)=\frac{1}{n+1}x^n+1 + c
Konstante Regel: \int k \, dx = k \cdot x + c
Faktorregel: \int k \cdot f(x) \, dx = k \cdot \int f(x) \, dx -->
