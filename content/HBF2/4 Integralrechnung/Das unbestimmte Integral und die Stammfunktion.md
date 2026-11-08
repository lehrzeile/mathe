---
title: "Das unbestimmte Integral und die Stammfunktion"
description: ""
summary: ""
draft: false
weight: 202
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Ober- und Untersumme

Eine Möglichkeit, um den Flächeninhalt zwischen dem Funktionsgraphen und der $x$-Achse (oder kurz: unterhalb eines Funktionsgraphen) zu bestimmen, ist das Berechnen der sogenannten **Ober- und Untersumme**.

Obersumme und Untersumme dienen in der Integralrechnung dazu, den Flächeninhalt unter einem Funktionsgraphen <mark>näherungsweise</mark> durch Rechtecke zu berechnen (man spricht hierbei von einer sogenannten *Approximation*). Die **Untersumme** (die Summe der kleineren Rechtecke) liegt vollständig unter dem Funktionsgraphen (und ist somit kleiner als die wahre Fläche des Funktionsgraphen), während die **Obersumme** (die Summe der großen Rechtecke) darüber liegt (und somit größer als die wahre Fläche ist).

{{< box-notice title="Unter- und Obersumme" >}}
Zunächst wird das Intervall $[a; b]$ wird in $n$ gleich breite Teilabschnitte unterteilt. Die Breite dieser Teilabschnitte (und somit später der einzelnen Rechtecke) beträgt dann $\frac{b-a}{n}$.

Anschließend addiert man die Flächeninhalte der einzelnen Streifen, wobei man folgendes beachten muss:

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

- Beginne mit der kleinsten Einstellung des Schiebereglers ($n$ = 2) und **trage** die aus der Grafik abgelesenen Werte in die Tabelle auf deinem Arbeitsblatt **ein**. Variiere den Parameter $n$ aufsteigend und **fülle** die Tabelle entsprechend weiter **aus**.
- **Beschreibe** wie sich die abgelesen Werte mit steigendem $n$ verändern?
- **Gib** eine Schätzung für die wahre Fläche **ab**.

Orientiere dich in Aufgabenteil a) an folgender Tabelle:

| $n$ | $2$ | ... |
| --------- | ----------------- | --- |
| **Untersumme** | | |
| **Obersumme** | | |

{{< /job >}}

## Aus Ober- und Untersumme wird das Integral

{{< box-notice title="Integral als Grenzwert von Ober- und Untersumme: Das Riemann-Integral" >}}
Grundsätzlich gilt: \
Je mehr Rechtecke bei Ober- und Untersumme eingezeichnet werden (sprich: je größer $n$ ist), desto genauer ist die Annäherung an den tatsächlichen Flächeninhalt. Man spricht hierbei auch von der sog. **Feinheit** der Zerlegung bzw. der Unterteilung des Intervalls.

Hierbei haben wir jedoch festgestellt, dass ist die Untersumme immer etwas kleiner und die Obersumme immer etwas größer als der tatsächliche Flächeninhalt sind. Verallgemeinernd lässt sich also sagen: \
$\displaystyle U_n \leq \int_a^b f(x) ~ dx \leq O_n$.

Man stelle sich nun vor, dass man die Anzahl der Streifen (bzw. die **Feinheit**) immer weiter (bis ins Unendliche) erhöhen und gleichzeitg die Breite der Streifen immer weiter verkleinern könnte, sodass diese unendlich dünn bzw. unendlich fein würden. Dies hätte zur Folge, dass sich die Obersumme und die Untersumme immer besser dem Wert des Integrals von oben bzw. unten annähern würden.

Mathematisch gesehen bedeutet das, dass die Obersumme und die Untersumme für eine immer feiner werdende Unterteilung des Intervalls $[a; b]$ gegen einen **gemeinsamen Grenzwert** konvergieren. Und diesen Grenzwert bezeichnet man als das **Riemann-Integral** $\int_a^b f(x) dx$: \
$\displaystyle \lim_{n \to \infty} U_n = \int_a^b f(x) ~ dx = \lim_{n \to \infty} O_n$.
{{< /box-notice >}}

{{< box-note title="Bedeutung der Symbole" >}}

1. Das Integralzeichen $\int$ ist ein langgestrecktes "S", das für das lateinische Wort *"Summa"* (Summe) steht.
2. $a$ und $b$ bezeichnen hierbei die **Grenzen des Intervalls**, wobei man hier noch einmal zwischen **unterer Grenze** ($a$) und **oberer Grenze** ($b$) unterscheidet.
3. Das $dx$ am Ende des Integrals ist das sogenannte Differential und kennzeichnet die Integrationsvariable. Hier: $x$.

{{< /box-note >}}

{{< box-important title="Was bedeutet das ab sofort für uns?" >}}

1. Den Grenzwert von Ober- und Untersumme bezeichnen wir fortan als das sogenannte **Integral von $f$ in den Grenzen von $a$ bis $b$**.
2. Ab sofort berechnen wir keine Ober- und Untersummen mehr, da wir den exakten Flächeninhalt berechen wollen.
3. Und das bedeutet: Wenn wir ab sofort Flächeninhalte berechnen wollen, müssen wir **Integrale bestimmen**.

{{< /box-important >}}

{{< box-note title="Geometrische Bedeutung des Integrals" >}}
Im Prinzip kann man sich das Integral als Summe unendlich vieler unendlich schmaler "Streifen" vorstellen (siehe Abbildung 8) -- deshalb ja auch das $\int$ ("S"). Hierzu wird jeweils die Höhe des Streifens ($f(x)$) mit der Breite des Streifens ($dx$) multipliziert. Zum Schluss werden die Flächeninhalte aller Streifen addiert (vgl. Abbildung 9).
{{< /box-note >}}

{{< image src="img/Integral_Streifen.svg" caption="Geometrische Interpretation des Integrals" >}}

{{< image src="img/bestimmtes_Integral.svg" caption="Integral von $f$ in den Grenzen von $a$ und $b$" >}}

Bevor wir uns dem sog. **unbestimmten Integral** widmen, klären wir zuvor den Begriff der **Stammfunktion**, da wir diese dafür benötigen.

## Die Stammfunktion

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

Bevor wir allerdings dazu kommen, wie man "aufleitet", klären wir zunächst noch den Begriff des **unbestimmten Integrals**.

## Das unbestimmte Integral

{{< box-notice title="Das unbestimmte Integral" >}}
Das **unbestimmte Integral** bezeichnet die Menge aller Stammfunktionen von $f$.

Man schreibt: \
$\displaystyle \int f(x) ~ dx = F(x) + c$ $\quad \left( c\in\mathbb{R} \right)$.
{{< /box-notice >}}

{{< box-question title="Was ist mit 'die Menge aller Stammfunktionen' gemeint?" >}}
*Weißt du noch, was beim Ableiten mit Konstanten passiert?* Richtig. Diese fallen gemäß der Konstantenregel (vgl. Abschnitt [Ableitungsregeln](/hbf1/3-grundlagen-der-differentialrechnung/erste-ableitungsregeln/)) beim Ableiten weg. Daher kann man beim "Rückwärts-Ableiten" nicht wissen, welche reelle Zahl $c \in \mathbb{R}$ zuvor als Konstante in der Funktionsgleichung gestanden hat. Hierfür gibt es unendlich viele Möglichkeiten, da es ja schließlich auch unendlich viele reelle Zahlen ($\mathbb{R}$) gibt.

Man schreibt daher: $F(x)+c$, wobei $c$ für die unbekannte reelle Zahl steht -- also die Konstante, die beim Ableiten von $F(x)$ nach $f(x)$ wegfällt.
{{< /box-question >}}

Im nächsten Abschnitt werden wir uns anschauen, wie man Stammfunktionen bildet, um anschließend Flächen zwischen Graph und $x$-Achse sowie eingeschlossene Flächen zwischen zwei Graphen berechnen zu können. Das Integrieren funktioniert ähnlich wie das Ableiten und es gibt feste Regeln, die man dabei beachten muss. Diese lernst du im Abschnitt [erste Integrationsregeln](/hbf2/4-integralrechnung/erste-integrationsregeln/) kennen.
