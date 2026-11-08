---
title: "Das bestimmte Integral"
description: ""
summary: ""
draft: false
weight: 204
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

Wie man Stammfunktionen bildet, weißt du nun, da du dir dafür wesentliche Integrationsregeln angeeignet hast.
In diesem Abschnitt wollen wir mit Hilfe von Stammfunktionen eingeschlossene Flächen zwischen Graph und $x$-Achse berechnen.

{{< box-notice title="Das bestimmte Integral" >}}
Das **bestimmte Integral** bezeichnet die Summe der orientierten Flächeninhalte zwischen dem Graphen von $f$ und der $x$-Achse im Intervall $[a,b]$. Es wird also seitlich begrenzt durch zwei vertikale Geraden $x = a$ und $x = b$ (vgl. Abbildung 1).

Schreibweise:\
$\displaystyle \int_a^b f(x) ~ dx = \left[ F(x) \right]_a^b = F(b) − F(a)$

Diese letzte Aussage bezeichnet man auch als den **Hauptsatz der Differential- und Integralrechnung**.
{{< /box-notice >}}

{{< image src="img/orientierte_Flaechen.svg" caption="orientierte Flächeninhalte des bestimmten Integrals" >}}

{{< box-note title="Geometrische Interpretation des bestimmten Integrals" >}}
Beim bestimmten Integral von $f$ von $a$ bis $b$ handelt es sich um die **Summe der orientierten Flächeninhalte** der Teilflächen zwischen dem Graphen von $f$ und der $x$-Achse.

**Orientierung** meint hierbei, dass Flächen *oberhalb* ($+$) oder *unterhalb* ($-$) der $x$-Achse liegen können. Man geht also davon aus, dass ein Flächeninhalt mit negativem Vorzeichen ($-$) eine Fläche beschreibt, die unterhalb der $x$-Achse liegt. Ein Flächeninhalt mit positivem Vorzeichen ($+$) beschreibt wiederum eine Fläche, die oberhalb der $x$-Achse liegt.

Geometrisch interpretiert handelt es sich beim bestimmten Integral also um eine sogenannte **Flächenbilanz**. Das bedeutet, dass sich positive und negative Flächeninhalte auch gegenseitig aufgrund ihrer unterschiedlichen Orientierung ($+$ und $-$) aufheben können.
{{< /box-note >}}

{{< box-notice title="Flächenbilanz" >}}
Ist $f$ eine im Intervall $[a; b]$ stetige Funktion, dann beschreibt das bestimmte Integral $\int_a^b f(x) ~ dx$ die **Flächenbilanz** der vom Graphen von $f$ und der $x$-Achse im Intervall $[a; b]$ eingeschlossenen Fläche.

- Sind alle Funktionswerte in diesem Bereich positiv, dann gilt: \
    $\forall x \in [a;b]: \quad f(x) \geq 0 \quad \Rightarrow \int_a^b f(x) ~ dx \geq 0$ \
    Hier kommt eine Zeichnung hin.
- Sind alle Funktionswerte in diesem Bereich negativ, dann gilt: \
    $\forall x \in [a;b]: \quad f(x) \leq 0 \quad \Rightarrow \int_a^b f(x) ~ dx \leq 0$ \
    Hier kommt eine Zeichnung hin.

Ist $f$ eine Funktion, die im Intervall $[a; b]$ *genau eine* Nullstelle besitzt, dann gibt es sowohl Funktionswerte, die positiv sind als auch Funktionswerte, die negativ sind. Das bedeutet auch, dass sich die gesamte eingeschlossene Fläche in zwei Teilflächen unterteilt, wobei eine Teilfläche oberhalb ($A_1 > 0$) und eine unterhalb ($A_2 < 0$) der $x$-Achse liegt.

Dann gilt: $\int_a^b f(x) ~ dx
\begin{cases}
    > 0, & \text{wenn } A_1 > A_2 \\\
    = 0, & \text{wenn } A_1 = A_2 \\\
    < 0, & \text{wenn } A_1 < A_2.
\end{cases}$

Hier kommt eine Zeichnung hin.
{{< /box-notice >}}

{{< box-important title="Aufpassen!" >}}
Je nach Kontext kann es sein, dass man unterschiedliche Integrale ermitteln möchte. In einem bestimmten Kontext benötigt man womöglich eine Flächenbilanz, jedoch kann in einem anderen Sachkontext wiederum die Summe aller eingeschlossenen Flächen zwischen Graph und $x$-Achse gemeint sein. Man sollte hierbei also beachten, dass das bestimmte Integrals und die Summe der Teilflächen grundsätzlich ganz unterschiedliche Aussagekraft besitzen.

Das bedeutet, dass man also strikt zwischen $\int_a^b f(x) ~ dx$ und $\int_a^(x_0) f(x) ~ dx + \int_(x_0)^b f(x) ~ dx$ unterscheiden muss, wobei $x_0$ die Nullstelle darstellen soll, welche die Gesamtfläche in zwei Teilflächen unterteilt.
{{< /box-important >}}

{{< box-example title="Beispiel für die Flächenbilanz des bestimmten Integrals" >}}
    Gegeben ist die Funktion $f(x)=x^3$. Gesucht ist die Summe der orientierten Flächeninhalte zwischen dem Graphen von $f$ und der $x$-Achse -- also das bestimmte Integral.
{{< /box-example >}}

{{< image src="img/bestimmtes_Integral_2.svg" caption="Das bestimmte Integral von $f$ in den Grenzen von $a$ und $b$ ist die Summe der orientierten Flächeninhalte $A_1$ und $A_2$." >}}

Da der Graph von $f$ an der Stelle $x=0$ eine Nullstelle besitzt, teilt diese die Gesamtfläche in zwei Teilflächen auf, wobei der linke Teil ($A_1$) unterhalb ($-$) und der rechte Teil ($A_2$) oberhalb ($+$) der $x$-Achse liegt.

Das linke Teilstück $A_1$ hat einen Flächeninhalt von $0,25$. $A_2$ besitzt einen Flächeninhalt von $4$. Entgegen einer ersten Vermutung ist jedoch unter dem Strich der Wert des bestimmten Integrals nicht $4,25$, sondern $3,75$. Dies liegt daran, dass sich die beiden Teilflächen zum Teil gegenseitig aufheben: $A_1 + A_2 = -0,25 + 4 = 3,75$.

## Ausblick

Du hast in den vorangegangenen Abschnitten gelernt, wie man Ober- und Untersummen berechnet, wie man Stammfunktionen bildet, um unbestimmte Integrale zu bestimmen und wie man mit Hilfe von bestimmten Integralen Flächen zwischen Graph und $x$-Achse bestimmt. Im nächsten Abschnitt befassen wir uns damit, [Flächen zwischen Graphen](/hbf2/4-integralrechnung/flächen-zwischen-graphen-bestimmen/) zu berechnen.
