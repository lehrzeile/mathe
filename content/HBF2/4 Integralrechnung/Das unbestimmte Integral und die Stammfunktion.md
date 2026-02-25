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

{{< job title="" numbered="true" style="enum-alph" entry="Hier siehst du die gesuchte Fläche sowie einen Schieberegler, mit dem die Anzahl der Rechtecke ($n$) verändert werden kann. Folgende Werte können eingeblendet werden: Obersumme, Untersumme und Differenz (OS – US)." >}}

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
$\displaystyle \lim_{n \to \infty} S_n = \int_a^b f(x) \, dx$.

$a$ und $b$ bezeichnen hierbei die **Grenzen des Intervalls**, wobei man hier noch einmal zwischen **unterer Grenze** ($a$) und **oberer Grenze** ($b$) unterscheidet.
{{< /box-notice >}}

<!-- Stammfunktion bilden als "rückwärts ableiten" -->
<!-- Stammfunktion F(x) einer Funktion f(x): Eine Funktion F heißt Stammfunktion von f, wenn gilt: F'(x) = f(x)
(Die Ableitung der Stammfunktion ergibt wieder die ursprüngliche Funktion.) -->

<!-- Unbestimmtes Integral als Menge aller Stammfunktionen -->
<!-- Unbestimmtes Integral: Menge aller Stammfunktionen
Schreibweise:
∫ f(x) dx = F(x) + C   (C = beliebige reelle Konstante) -->

<!-- Bestimmtes Integral -->
<!-- Bestimmtes Integral: Flächeninhalt zwischen dem Graphen von f, der x-Achse und den Geraden x = a und x = b (orientiert – positiv oberhalb, negativ unterhalb der x-Achse)
Schreibweise:
∫_a^b f(x) dx = F(b) − F(a)   (Hauptsatz der Differential- und Integralrechnung) -->

<!-- Beide erhält man, indem man eine Stammfunktion von f bildet. -->

<!-- Eine solche Stammfunktion erhält man, indem man die folgenden Regeln zum Aufleiten anwendet. -->
<!-- Potenzregel bei der Integration: f(x)=x^n \Rightarrow F(x)=\frac{1}{n+1}x^n+1 + c
Konstante Regel: \int k \, dx = k \cdot x + c
Faktorregel: \int k \cdot f(x) \, dx = k \cdot \int f(x) \, dx -->

<!-- orientierter Flächeninhalt -->
<!-- Geometrisch interpretiert ist das Integral von $f$ von $a$ bis $b$ die Summe der orientierten, positiven Flächeninhalte der Teilflächen zwischen dem Graphen von $f$ und der $x$-Achse. Orientierung meint hierbei, dass Flächen oberhalb ($+$) oder unterhalb ($-$) der $x$-Achse liegen können. Man geht also davon aus, dass eine Fläche mit negativem Vorzeichen ($-$) zwar einen positiven Flächeninhalt besitzt, jedoch unterhalb der $x$-Achse liegt. ) -->
