---
title: "Übungen zum Bestimmen der lokalen Änderungsrate"
description: ""
summary: ""
draft: false
weight: 402
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

In diesem Kapitel lernst du, wie man die lokale Änderungsrate – also die Steigung einer Funktion an einer bestimmten Stelle – bestimmt. Du erfährst, wie man zwischen mittlerer und lokaler Änderungsrate unterscheidet und welche Methoden es gibt, um die Ableitung einer Funktion zu berechnen. Die folgenden Aufgaben und Beispiele helfen dir, das Konzept Schritt für Schritt zu verstehen und anzuwenden.

## Bestimmen der mittleren Änderungsrate

{{< youtube sXxK-JATrc0 >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f_1$ mit $f_1(x)=\frac12 x^2 - 3x + 1$.

1. **Bestimme** mithilfe des Differenzenquotienten die mittlere Änderungsrate im Intervall $[-2;1]$.
2. **Bestimme** nach demselben Prinzip die mittlere Änderungsrate im gleichen Intervall, dieses Mal jedoch in Einerschritten ($[-2;-1]$, $[-1;0]$ und $[0;1]$).
3. **Triff** eine begründete Aussage über einen möglichen Zusammenhang zwischen den mittleren Änderungsraten aus den Aufgabenteilen 1 und 2.
{{< /job >}}

## Bestimmen der lokalen Änderungsrate

### Methode #1: Näherungstabelle bzw. Differenzenquotient

Mit Hilfe des Differenzenquotienten lässt sich auch - allerdings nur näherungsweise (!) - die <mark>lokale Änderungsrate</mark> an einer bestimmten Stelle des Funktionsgraphen bestimmen. Hierzu muss notwendigerweise das Intervall um die entsprechende Stelle herum sehr klein (!) gewählt werden.

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f$ mit $f(x)=\frac12 x^2 - 3x + 1$.

**Bestimme** mithilfe des Differenzenquotienten die Steigung im Punkt $P_1 \left(3|f(3)\right)$, indem du die mittlere Änderungsrate des Intervalls um die gesuchte Stelle herum *berechnest* und dieses schrittweise verkleinerst - sprich: die Intervallgrenzen step-by-step nach innen verschiebst ($\pm 0,5 \rightarrow \pm 0,1 \rightarrow \pm 0,01$).
{{< /job >}}

<!-- ![image](Bestimmen_der_lokalen_Änderungsrate.jpeg) -->

### Methode #2: Grenzwertbetrachtung $\rightarrow$ Der Differentialquotient

Wenn man - wie in der Aufgabe zuvor - händig das Intervall um die gesuchte Stelle herum verkleinert, erhält man eine gute Näherung für die lokale Änderungsrate. Schneller geht es mit einer sogenannten **Grenzwertbetrachtung**. Hierzu betrachten wir den Grenzwert des Differenzenquotienten - den **Differentialquotienten**.

{{< youtube _L6wmTzod_I >}}

{{< box-example >}}
Sei die Funktion $f$ gegeben mit $f(x)=\frac14 x^2 - 4x + 5$.

Gesucht wird die lokale Änderungsrate im Punkt $\left(2|f(2)\right)$.

Wir betrachten also nun den Grenzwert des Differenzenquotienten:

$\displaystyle m = \lim_{x_2 \to x_1} \dfrac{f(x_2) - f(x_1)}{x_2-x_1}$

$\displaystyle = \lim_{x_2 \to x_1} \dfrac{\frac14 (x_2)^2 - 4x_2 + 5 - (\frac14 (x_1)^2 - 4x_1 + 5)}{x_2-x_1}$

Klammer auflösen:

$\displaystyle = \lim_{x_2 \to x_1} \dfrac{\frac14 (x_2)^2 - 4x_2 + 5 - \frac14 (x_1)^2 + 4x_1 - 5}{x_2-x_1}$

Umsortieren:

$\displaystyle = \lim_{x_2 \to x_1} \dfrac{\frac14 (x_2)^2 - \frac14 (x_1)^2 - 4x_2 + 4x_1}{x_2-x_1}$

Ausklammern:

$\displaystyle = \lim_{x_2 \to x_1} \dfrac{\frac14 \cdot ((x_2)^2 - (x_1)^2) - 4 \cdot (x_2 - x_1)}{x_2-x_1}$

Binomische Formel rückwärts anwenden:

$\displaystyle = \lim_{x_2 \to x_1} \dfrac{\frac14 \cdot (x_2 + x_1) \cdot (x_2 - x_1) - 4 \cdot (x_2 - x_1)}{x_2-x_1}$

Kürzen mit $(x_2-x_1)$ ergibt:

$\displaystyle m = \lim_{x_2 \to x_1} \frac14 \cdot (x_2 + x_1) - 4 = \frac14 \cdot 2x_1 - 4 = \frac12 x_1 - 4 = f'(x_1)$

Schlussendlich setzen wir nun die $x$-Koordinate des gegebenen Punkts ($x_1=2$) ein und erhalten:

$f'(2)=\frac12 \cdot 2 - 4 = 1 - 4 = -3.$

Die Steigung des Funktionsgraphen an der Stelle $x_1=2$ bzw. im Punkt $P(2|-2)$ beträgt also -3.
{{< /box-example >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" >}}
Gegeben sei die Funktion $f$ mit $f(x)= -x^2 + 4x + 10$.

**Bestimme** mit Hilfe des Differentialquotienten die Steigung in den Punkten $P_1 \left(2|f(2)\right)$ und $P_2 \left(-1|f(-1)\right)$.
{{< /job >}}

### Methode #3: Grenzwertbetrachtung unter Anwendung der h-Methode $\rightarrow$ Der Differentialquotient

{{< box-example >}}
Sei die Funktion $f$ gegeben mit $f(x)=\frac14 x^2 - 4x + 5$.

Gesucht wird die lokale Änderungsrate im Punkt $\left(2|f(2)\right)$.

Wir betrachten also nun den Grenzwert des Differenzenquotienten:

$\displaystyle m = \lim_{h \to 0} \dfrac{f(x_1+h) - f(x_1)}{x_1+h-x_1}$

$\displaystyle = \lim_{h \to 0} \dfrac{\frac14 (x_1+h)^2 - 4(x_1+h) + 5 - (\frac14 (x_1)^2 - 4x_1 + 5)}{h}$

Binomische Formeln, Distributivgesetz und Minusklammer anwenden:

$\displaystyle = \lim_{h \to 0} \dfrac{\frac14 \cdot ((x_1)^2 + 2x_1h + h^2) - 4x_1 - 4h + 5 - \frac14 (x_1)^2 + 4x_1 - 5}{h}$

Distributivgesetz anwenden:

$\displaystyle = \lim_{h \to 0} \dfrac{\frac14 (x_1)^2 + \frac12x_1h + \frac14 h^2 - 4x_1 - 4h + 5 - \frac14 (x_1)^2 + 4x_1 - 5}{h}$

Term vereinfachen:

$\displaystyle = \lim_{h \to 0} \dfrac{\frac12 x_1h + \frac14 h^2 - 4h}{h}$

$h$ ausklammern:

$\displaystyle = \lim_{h \to 0} \dfrac{h \cdot (\frac12 x_1 + \frac14 h - 4)}{h}$

Grenzwertbetrachtung des vereinfachten Terms:

$\displaystyle = \lim_{h \to 0} (\frac12 x_1 + h - 4) = \frac12 x_1 - 4 = f'(x_1)$

Schlussendlich setzen wir auch hier die $x$-Koordinate des gegebenen Punkts ($x_1=2$) ein und erhalten:

$\displaystyle f'(2) = \frac12 \cdot 2 - 4 = 1 - 4 = -3$

Die Steigung des Funktionsgraphen an der Stelle $x_1=2$ bzw. im Punkt $P(2|-2)$ beträgt also $-3$.
{{< /box-example >}}

{{< job title="Üben und Vertiefen" numbered="true" style="enum-alph" name="" entry="**Bestimme** mit Hilfe der h-Methode die Ableitung der Funktion $f$ an der Stelle $x_0$!" >}}

- $f_1(x)=6x+1, \quad x_0=2$
- $f_2(x)=x^2, \quad x_0=3$
- $f_3(x)=-x^2 + 4, \quad x_0=-4$

{{< /job >}}

{{< source text="matheportal.com" src="https://matheportal.com/wp-content/uploads/2018/03/lc3b6sung-ableitung-mit-h-methode.pdf" lastcall="09.10.2025" >}}

{{< solution numbered="true" style="enum-alph" >}}

- $\displaystyle f'(x)=\lim_{h \to 0} \frac{f(2+h)-f(2)}{2+h-2} = \lim_{h \to 0} \frac{6\cdot(2+h)+1-(6 \cdot 2 + 1)}{h} = \lim_{h \to 0} \frac{12 + 6h + 1 - 12 - 1}{h} = \lim_{h \to 0} \frac{6h}{h} = \lim_{h \to 0} 6 = 6$
- $\displaystyle f'(x)=\lim_{h \to 0} \frac{f(3+h)-f(3)}{3+h-3} = \lim_{h \to 0} \frac{(3+h)^2-3^2}{h} = \lim_{h \to 0} \frac{3^2+6h+h^2-3^2}{h} = \lim_{h \to 0} \frac{6h+h^2}{h} = \lim_{h \to 0} \frac{h(6+h)}{h} = \lim_{h \to 0} (6+h) = 6$
- $\displaystyle f'(x)=\lim_{h \to 0} \frac{f(-4+h)-f(-4)}{-4+h-(-4)} = \lim_{h \to 0} \frac{-(-4+h)^2 + 4 - (-(-4)^2 + 4)}{h} = \lim_{h \to 0} \frac{-(16-8h+h^2) + 4 - (-16+4)}{h} = \lim_{h \to 0} \frac{-16+8h-h^2+4+12}{h} = \lim_{h \to 0} \frac{8h-h^2}{h} = \lim_{h \to 0} \frac{h(8-h)}{h} = \lim_{h \to 0} (8-h) = 8$

{{< /solution >}}

## Ausblick

Kompliment, dass du dich bis hierhin "durchgekämpft" hast. Ab jetzt wird das Bestimmen von Steigungen am Graphen einfacher. Versprochen.

<!-- {{< figure src="/content/HBF1/3 Grundlagen der Differentialrechnung/Bestimmen_der_lokalen_Änderungsrate.jpeg" caption="Bestimmen der lokalen Änderungsrate" >}} -->