---
title: "Differentialquotient und Ableitung"
description: ""
summary: ""
draft: false
weight: 401
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Wiederholung: Differenzenquotient

Der Differenzenquotient entspricht der Steigung einer Geraden durch zwei Punkte, die auf dem Graphen einer Funktion liegen. Es handelt sich hierbei um eine Sekante, weshalb man auch von der sog. **Sekantensteigung** spricht.

Du erinnerst dich hoffentlich noch daran, wie du die Steigung einer linearen Funktion bestimmt hast, wenn zwei Punkte gegeben waren. Hier hast du ein **Steigungsdreieck** gebildet und im Grunde nichts anderes gemacht.

Das Bilden des Differenzenquotienten ist ein Zwischenschritt bei der <mark>Bestimmung der Steigung einer Kurve in einem Punkt</mark>.

<!-- Grafik -->

## Vom Differenzenquotient zum Differentialquotient

Zur Bestimmung der Steigung in einem Punkt -- der sog. **momentanen** bzw. **lokalen Änderungsrate** -- nähert man den Punkt $P_2$ dem Punkt $P_1$ an. Dabei wird die Sekante zur **Tangente**.

Mathematisch betrachtet verbirgt sich hinter dieser Annäherung der **Grenzwert der Sekantensteigung**.

Es gilt:

$$\displaystyle m = \lim_{x_2 \to x_1} \frac{y_2-y_1}{x_2-x_1} \quad \text{bzw.} \quad m = \lim_{x_2 \to x_1} \frac{f(x_2)-f(x_1)}{x_2-x_1}.$$

$m$ gibt hierbei die **lokale Änderungsrate**, also den Wert des Differentialquotienten, an.

## Differentialquotient und h-Methode

Schreibt man für die Stelle $x_2 = x_1 + h$, so erhält man für den Differentialquotienten eine andere Schreibweise, die sog. **h-Methode**:

$$m = \lim_{h \to 0} \frac{f(x_1+h)-f(x_1)}{x_1+h-x_1} = \lim_{h \to 0} \frac{f(x_1+h)-f(x_1)}{h}.$$

Der Differentialquotient ist die Ableitung $f’(x_1)$ der Funktion $f(x)$ an der Stelle $x_1$. Die erste Ableitung einer Funktion an der Stelle $x_1$ gibt die **Steigung der Tangente an den Funktionsgraphen** im Punkt $P(x_1|f(x_1))$ an.

## Ableitung und ihre Bedeutung

Die erste Ableitung einer Funktion $f$ an einer Stelle $x_0$ gibt die momentane Änderungsrate des Funktionsgraphen an dieser Stelle an -- geometrisch gesehen also die Steigung der Tangente an den Graphen. Die Ableitung der Funktion $f(x)$ wird mit $f'(x)$ bezeichnet. Weitere Ableitungen bezeichnet man $f''(x)$, $f'''(x)$, usw.

- Ist $f’(x_0) > 0$, so **steigt** der Graph an dieser Stelle.
- Ist $f’(x_0) < 0$, so **fällt** der Graph an dieser Stelle.

<!-- Grafik -->

Die Ableitung ist ein wichtiges Hilfsmittel zur Bestimmung von besonderen Stellen eines Graphen. Ebenso gibt sie Auskunft über den Verlauf des Graphen.

Mit Hilfe der ersten Ableitung bestimmt man außerdem mögliche **Extremstellen**. Mehr dazu im Kapitel ["Funktionsuntersuchung"](hbf1/4-funktionsuntersuchung/vollständige-kurvendiskussion/).

## Interpretation der lokalen Änderungsrate im Beispielkontext

| Bsp.e für Funktionen | mittlere Änderungsrate | lokale Änderungsrate |
| --- | --- | --- |
| Zeit → zurückgelegter Weg | Durchschnittsgeschwindigkeit | Momentangeschwindigkeit  |
| Entfernung → Höhe | Durchschnittshöhe | Momentane Steigung |
