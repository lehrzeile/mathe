---
title: "Substitution"
description: ""
summary: ""
draft: false
weight: 304
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

Manche Funktionen eignen sich aufgrund ihrer Form für ein weiteres Verfahren -- die Substitution.
Der größte Vorteil dieses Verfahrens liegt im Vergleich mit der Polynomdivision in der Zeitersparnis.

{{< box-question >}}
Der Begriff **Substitution** bedeutet auch "Ersetzung eines Objekts durch ein anderes".
{{< /box-question >}}

{{< box-notice title="Das Substitutions-Verfahren" >}}
Die Substitution ist ein mathematisches Verfahren, um komplexe Gleichungen durch den Austausch eines Terms durch einen anderen (z.B. $x^2$ durch $z$) zu vereinfachen und lösbar zu machen. Es handelt sich um ein drei-schrittiges Verfahren:

1. Substituieren (Ersetzen)
2. Lösen (z.B. mit pq-Formel)
3. Resubstitution (Rückrechnung auf die ursprüngliche Variable).
{{< /box-notice >}}

Im folgenden Video lernst du, wie du das Verfahren anwendest:

{{< youtube MWyih-7KIEA >}}

{{< job name="" numbered="false" style="enum-arabic" name="Beobachtungsauftrag" >}}

- **Schaue** dir das folgende Video zunächst einmal aufmerksam **an**.
- **Betrachte** das Video nun ein zweites Mal, **schreibe** dabei die Beispielaufgabe **mit** und **mache** dir zu den jeweiligen Rechenschritten Notizen.

{{< /job >}}

{{< box-question title="Nachgedacht:" >}}
Wie bereits erwähnt, eignet sich das Substitutions-Verfahren nicht für alle Funktionen. Diese benötigen eine ganz bestimmte Form:

- $ax^4 +bx^2 + c=0$
- $ax^6 +bx^3 + c=0$
- $ax^8 +bx^4 + c=0$
- $\dots$

*Erkennst du die Systematik dahinter?*

*Überlege* dir, welche Form eine Funktionsvorschrift im Allgemeinen haben muss, damit sich die Nullstellen mit Hilfe der Substitution bestimmen lassen.
{{< /box-question >}}

{{< job name="" numbered="true" style="enum-alph" title="Üben und Vertiefen" entry="**Bestimme** die Nullstellen der folgenden Funktionen:" >}}

- $f_1(x) = -2x^4 + 34x^2 - 32$
- $f_2(x) = -2x^4 + 80x^2 - 288$
- $f_3(x) = x^6 - 7x^3 - 8$
- $f_4(x) = x^6 + 133x^3 + 1000$

{{< /job >}}

{{< job name="" numbered="true" style="enum-alph" title="Üben und Vertiefen" entry="Beim Bestimmen der Nullstellen einer Funktion mit Hilfe der Substitution ist die Rücksubstitution nicht immer möglich -- manchmal nur teilweise und manchmal sogar überhaupt nicht. Hier sind einige Beispiele dafür." >}}

- $f_5(x) = -3x^4 - 60x^2 + 1728$
- $f_6(x) = -6x^4 - 30x^2 - 24$
- $f_7(x) = 2x^4 - 64x^2 - 288$
- $f_8(x) = 5x^4 + 130x^2 + 125$

{{< /job >}}

{{< solution name="" numbered="true" style="enum-alph" title="Üben und Vertiefen" >}}

- $f_1(x) = -2x^4 + 34x^2 - 32$ \
$\Rightarrow x_1=-4, \quad x_2=-1, \quad x_3=1, \quad x_4=4$
- $f_2(x) = -2x^4 + 80x^2 - 288$ \
$\Rightarrow x_1=-6, \quad x_2=-2, \quad x_3=2, \quad x_4=6$
- $f_3(x) = x^6 - 7x^3 - 8$ \
$\Rightarrow x_1=-1, \quad x_2=2$
- $f_4(x) = x^6 + 133x^3 + 1000$ \
$\Rightarrow x_1=-5, \quad x_2=-2$

<hr>

- $f_5(x) = -3x^4 - 60x^2 + 1728 \qquad \Rightarrow x_1=-4, \quad x_2=4$
- $f_6(x) = -6x^4 - 30x^2 - 24 \qquad \Rightarrow \mathbb{L}=\emptyset$
- $f_7(x) = 2x^4 - 64x^2 - 288 \qquad \Rightarrow x_1=-6, \quad x_2=6$
- $f_8(x) = 5x^4 + 130x^2 + 125 \qquad \Rightarrow \mathbb{L}=\emptyset$

{{< /solution >}}
