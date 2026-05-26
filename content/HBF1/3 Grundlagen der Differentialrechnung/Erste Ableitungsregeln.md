---
title: "Erste Ableitungsregeln"
description: ""
summary: ""
draft: false
weight: 403
toc: true
math: true # für die Nutzung von KaTeX
count: 0 # für die Nummerierung der Aufgaben
---

## Ableitungsregeln

Nachfolgend lernst du ein paar Ableitungsregeln, mit deren Hilfe man ebenfalls die Steigung in einem bestimmten Punkt des Graphen bestimmen kann.

Mit diesen Ableitungsregeln kannst du viele Funktionen schnell und einfach ableiten, ohne jedes Mal die Definition der Ableitung (sprich: den Differentialquotienten) anwenden zu müssen. Sie sind grundlegende Werkzeuge, um die Steigung einer Funktion an jeder Stelle zu bestimmen und spielen eine zentrale Rolle in der Differentialrechnung.

<!-- Kostantenregel -->
{{< box-notice title="Kostantenregel" >}}
$f(x)=c, \hspace{10pt} c \in \mathbb{R} \quad \rightarrow \quad f'(x) = 0$

Die Ableitung einer Kostanten $c$ ist $0$.
{{< /box-notice >}}

<!-- Ableitung von x -->
{{< box-notice title="Ableitung von $x$" >}}
$f(x)=x \quad \rightarrow \quad f'(x) = 1$

Die Ableitung von $x$ ist $1$.
{{< /box-notice >}}

<!-- Faktorregel -->
{{< box-notice title="Faktorregel" >}}
$f(x) = c \cdot g(x) \quad \rightarrow \quad f'(x) = c \cdot g'(x)$

Ein Vorfaktor bleibt beim Ableiten erhalten.
{{< /box-notice >}}

<!-- Beispiele für Konstantenregel, Ableitung von $x$ und Faktorregel -->
{{< box-example title="Beispiele für Konstantenregel, Ableitung von $x$ und Faktorregel:" >}}

- $f(x)=5$ \
$\rightarrow \quad f'(x) = 0$
- $f(x)=x$ \
$\rightarrow \quad f'(x) = 1$
- $f(x)=3x \Leftrightarrow f(x)=3 \cdot x$ \
$\rightarrow \quad f'(x) = 3 \cdot 1 = 3$
- $f(x)=-5x$ \ $\rightarrow \quad f'(x) = -5 \cdot 1 = -5$
- $f(x)= \text{trölf} \cdot x$ \
$\rightarrow \quad f'(x) = \text{trölf} \cdot 1 = \text{trölf}$

{{< /box-example >}}

<!-- Potenzregel -->
{{< box-notice title="Potenzregel" >}}
$f(x) = x^n \quad \rightarrow \quad f'(x) = n \cdot x^{n-1}$

Man multipliziert den ursprünglichen Exponenten $n$ mit der Potenz und reduziert den ursprünglichen Exponenten um $1$.
{{< /box-notice >}}

<!-- Beispiele für die Potenzregel -->
{{< box-example title="Beispiele für die Potenzregel:" >}}

- $f(x)=x^2$ \
$\rightarrow \quad f'(x) = 2x^{2-1}=2x^1=2x$
- $f(x)=x^3$ \
$\rightarrow \quad f'(x) = 3x^{3-1}=3x^2$
- $f(x)=x^4$ \
$\rightarrow \quad f'(x) = 4x^{4-1}=4x^3$
- $f(x)=5x^{17}$ \
$\rightarrow \quad f'(x) = 5 \cdot 17x^{17-1}=85x^{16}$

{{< /box-example >}}

<!-- Summen- und Differenzenregel -->
{{< box-notice title="Summen- und Differenzenregel" >}}
$f(x) = g(x) \pm h(x)$ \
$\rightarrow \quad f'(x) = g'(x) \pm h'(x)$

Besteht ein Funktionsterm (hier: $f(x)$) aus einer Summe (*bzw. Differenz*) von einzelnen Termen (hier: $g(x)$ und $h(x)$), so leitet man jeden einzelnen Term für sich ab und addiert (*bzw. subtrahiert*) anschließend deren Ableitungen (hier: $g'(x) \pm h'(x)$).
{{< /box-notice >}}

<!-- Beispiele für alle bisherigen Ableitungsregeln zusammen -->
{{< box-example title="Kostantenregel sowie Summen- und Differenzenregel:" >}}

- $f(x)=x^2 + 3x$ \
$\rightarrow \quad f'(x) = (x^2)' + (3x)' = 2x + 3$
- $f(x)=x^5 - 4x^2$ \
$\rightarrow \quad f'(x) = (x^5)' - (4x^2)' = 5x^4 + 8x$
- $f(x)=5 \cdot (4x^3 - 1)$ \
$\rightarrow \quad f'(x) = 5 \cdot (4x^3 - 1)'= 5 \cdot 12x^2 = 60x^2$
- $f(x)=-2x^3 + 7x - 5$ \
$\rightarrow \quad f'(x) = (-2x^3)' + (7x)' - (5)' = -6x^2 + 7 - 0 = -6x^2 + 7$

{{< /box-example >}}

## Methode #4 zur Bestimmung der lokalen Änderungsrate: Steigung in einem Punkt berechnen $\rightarrow$ Funktion ableiten

Du erinnerst dich an die drei Methoden aus dem vorangegangenen Kapitel, mit deren Hilfe man die lokale Änderungsrate bestimmen kann? Jetzt kannst du unter Anwendung der Ableitungsregeln die Ableitung direkt bilden und somit die Steigung in einem Punkt viel schneller bestimmen.

{{< youtube wo1htpyG9w8 >}}

{{< job title="Üben und Vertiefen" numbered="true" style="" name="" entry="Gegeben sei die Funktion $f(x)= -x^2 + 5x - 2$." >}}
**Bestimme** mit Hilfe der Ableitung die Steigung in den Punkten $P_1 \left(1|f(1)\right)$, $P_2 \left(2|f(2)\right)$ und $P_3 \left(5|f(5)\right)$.
{{< /job >}}

{{< solution >}}
Zuerst bestimmt man die Ableitungsfunktion $f'(x)=-2x+5$.

Danach setzt man die $x$-Koordinaten der Punkte ein:

1. $x_1=1: \quad f'(1)=-2 \cdot 1 + 5 = 3$ \
Die Steigung im Punkt $P_1$ beträgt $3$.

2. $x_2=2: \quad f'(2)=-2 \cdot 2 + 5 = 1$ \
Die Steigung im Punkt $P_2$ beträgt $1$.

3. $x_3=5: \quad f'(5)=-2 \cdot 5 + 5 = -5$ \
Die Steigung im Punkt $P_3$ beträgt $-5$.
{{< /solution >}}

## Übung macht den Meister

{{< job numbered="true" style="enum-alph" title="bettermarks" >}}
{{< bettermarks uebungscode="LLD6Q" seriesID="1689552499859521664" title="Die Potenzregel bei der Bestimmung von Ableitungsfunktionen nutzen" >}}
{{< bettermarks uebungscode="LY7J2" seriesID="1689552696945672576" title="Die Faktor- und Summenregeln bei der Bestimmung von Ableitungsfunktionen nutzen" >}}
{{< bettermarks uebungscode="D5L9" seriesID="1689552038590939264" title="Höhere Ableitungen ganzrationaler Funktionen und deren Grad bestimmen" >}}
{{< /job >}}

{{< job numbered="true" style="enum-alph" title="Übung macht den Meister" columns="2" entry="**Bestimme** jeweils den Term der Ableitungsfunktion $f'(x)$." >}}

- $f(x)=3x+5$
- $f(x)=x^4-1$
- $f(x)=-3x^6$
- $f(x)=\frac12x^4$
- $f(x)=3x^3-4x^2+5x-6$
- $f(x)=\frac16 x^3 - \frac34 x^2 + \frac15 x - 3$

{{< /job >}}

{{< solution numbered="true" style="enum-alph" columns="2" >}}

- $f'(x)=3$
- $f'(x)=4x^3$
- $f'(x)=-18x^5$
- $f'(x)=2x^3$
- $f'(x)=9x^2 - 8x + 5$
- $f'(x)=\frac12x^2 - \frac32 x + \frac15$

{{< /solution >}}

## Test

{{< h5p >}}
    <!-- H5P Drag Question: Funktionen und ihre Ableitungen zuordnen -->
    <style>
    .h5p-dragquestion-container {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        max-width: 900px;
        margin: 30px auto;
        padding: 25px;
        background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    }
    .h5p-dragquestion-title {
        font-size: 24px;
        font-weight: 700;
        color: #2c3e50;
        margin-bottom: 10px;
        text-align: center;
    }
    .h5p-dragquestion-instruction {
        font-size: 16px;
        color: #555;
        margin-bottom: 25px;
        text-align: center;
        line-height: 1.6;
    }
    .h5p-dragquestion-content {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 20px;
        margin-bottom: 25px;
    }
    .h5p-dragquestion-column {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }
    .h5p-section-title {
        font-size: 18px;
        font-weight: 600;
        color: #34495e;
        padding: 12px;
        background: white;
        border-radius: 8px;
        text-align: center;
        box-shadow: 0 2px 8px rgba(0,0,0,0.08);
    }
    .h5p-tile {
        background: #f8f9fa;
        border: 2px solid #bdc3c7;
        border-radius: 8px;
        padding: 15px;
        transition: all 0.3s ease;
        position: relative;
    }
    .h5p-dropzone {
        min-height: 160px;
        border-style: dashed;
    }
    .h5p-dropzone.drag-over {
        background: #e8f4f8;
        border-color: #3498db;
        transform: scale(1.02);
    }
    .h5p-dropzone.filled {
        border-style: solid;
        border-color: #27ae60;
        background: #eafaf1;
    }
    .h5p-draggable {
        background: white;
        border: 2px solid #3498db;
        cursor: move;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    .h5p-draggable:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(0,0,0,0.15);
        border-color: #2980b9;
    }
    .h5p-draggable.dragging {
        opacity: 0.5;
        cursor: grabbing;
    }
    .h5p-draggable.placed {
        opacity: 0.3;
        cursor: not-allowed;
    }
    .h5p-graph-svg {
        width: 100%;
        height: 140px;
        display: block;
    }
    .h5p-button-group {
        display: flex;
        gap: 15px;
        justify-content: center;
        margin-top: 25px;
    }
    .h5p-btn {
        padding: 12px 30px;
        font-size: 16px;
        font-weight: 600;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: all 0.3s ease;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .h5p-btn-check {
        background: #3498db;
        color: white;
    }
    .h5p-btn-check:hover {
        background: #2980b9;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    }
    .h5p-btn-reset {
        background: #95a5a6;
        color: white;
    }
    .h5p-btn-reset:hover {
        background: #7f8c8d;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    }
    .h5p-feedback {
        margin-top: 20px;
        padding: 15px;
        border-radius: 8px;
        font-size: 16px;
        font-weight: 600;
        text-align: center;
        display: none;
    }
    .h5p-feedback.success {
        background: #d4edda;
        color: #155724;
        border: 2px solid #c3e6cb;
    }
    .h5p-feedback.error {
        background: #f8d7da;
        color: #721c24;
        border: 2px solid #f5c6cb;
    }
    .h5p-feedback.partial {
        background: #fff3cd;
        color: #856404;
        border: 2px solid #ffeaa7;
    }
    @media (max-width: 768px) {
        .h5p-dragquestion-content {
        grid-template-columns: 1fr;
        }
        .h5p-button-group {
        flex-direction: column;
        }
        .h5p-btn {
        width: 100%;
        }
    }
    </style>
    <div class="h5p-dragquestion-container">
    <div class="h5p-dragquestion-title">Funktionen und ihre Ableitungen zuordnen</div>
    <div class="h5p-dragquestion-instruction">
        Ordne jeder Funktion f(x) ihre entsprechende Ableitung f'(x) zu, indem du die Graphen der Ableitungen in die passenden Felder ziehst.
    </div>
    <div class="h5p-dragquestion-content">
        <!-- Linke Spalte: Funktionen (Dropzones) -->
        <div class="h5p-dragquestion-column">
        <div class="h5p-section-title">Funktionen f(x)</div>
        <div class="h5p-tile h5p-dropzone" data-answer="derivative-1">
            <svg class="h5p-graph-svg" viewBox="0 0 200 120">
            <defs>
                <marker id="arrowhead1" markerWidth="10" markerHeight="10" refX="9" refY="3" orient="auto">
                <polygon points="0 0, 10 3, 0 6" fill="#34495e" />
                </marker>
            </defs>
            <line x1="10" y1="60" x2="190" y2="60" stroke="#bdc3c7" stroke-width="1" marker-end="url(#arrowhead1)"/>
            <line x1="100" y1="110" x2="100" y2="10" stroke="#bdc3c7" stroke-width="1" marker-end="url(#arrowhead1)"/>
            <path d="M 20,100 Q 100,20 180,100" stroke="#e74c3c" stroke-width="3" fill="none"/>
            </svg>
        </div>
        <div class="h5p-tile h5p-dropzone" data-answer="derivative-2">
            <svg class="h5p-graph-svg" viewBox="0 0 200 120">
            <line x1="10" y1="60" x2="190" y2="60" stroke="#bdc3c7" stroke-width="1" marker-end="url(#arrowhead1)"/>
            <line x1="100" y1="110" x2="100" y2="10" stroke="#bdc3c7" stroke-width="1" marker-end="url(#arrowhead1)"/>
            <path d="M 20,90 C 60,100 80,80 100,50 C 120,20 140,10 180,30" stroke="#9b59b6" stroke-width="3" fill="none"/>
            </svg>
        </div>
        <div class="h5p-tile h5p-dropzone" data-answer="derivative-3">
            <svg class="h5p-graph-svg" viewBox="0 0 200 120">
            <line x1="10" y1="60" x2="190" y2="60" stroke="#bdc3c7" stroke-width="1" marker-end="url(#arrowhead1)"/>
            <line x1="100" y1="110" x2="100" y2="10" stroke="#bdc3c7" stroke-width="1" marker-end="url(#arrowhead1)"/>
            <line x1="20" y1="90" x2="180" y2="30" stroke="#16a085" stroke-width="3"/>
            </svg>
        </div>
        <div class="h5p-tile h5p-dropzone" data-answer="derivative-4">
            <svg class="h5p-graph-svg" viewBox="0 0 200 120">
            <line x1="10" y1="60" x2="190" y2="60" stroke="#bdc3c7" stroke-width="1" marker-end="url(#arrowhead1)"/>
            <line x1="100" y1="110" x2="100" y2="10" stroke="#bdc3c7" stroke-width="1" marker-end="url(#arrowhead1)"/>
            <path d="M 20,20 C 50,30 70,80 100,90 C 130,100 150,95 180,80" stroke="#f39c12" stroke-width="3" fill="none"/>
            </svg>
        </div>
        </div>
        <!-- Rechte Spalte: Ableitungen (Draggables) -->
        <div class="h5p-dragquestion-column">
        <div class="h5p-section-title">Ableitungen f'(x)</div>
        <div class="h5p-tile h5p-draggable" draggable="true" data-id="derivative-1">
            <svg class="h5p-graph-svg" viewBox="0 0 200 120">
            <line x1="10" y1="60" x2="190" y2="60" stroke="#bdc3c7" stroke-width="1"/>
            <line x1="100" y1="110" x2="100" y2="10" stroke="#bdc3c7" stroke-width="1"/>
            <line x1="30" y1="90" x2="170" y2="30" stroke="#e74c3c" stroke-width="3"/>
            </svg>
        </div>
        <div class="h5p-tile h5p-draggable" draggable="true" data-id="derivative-2">
            <svg class="h5p-graph-svg" viewBox="0 0 200 120">
            <line x1="10" y1="60" x2="190" y2="60" stroke="#bdc3c7" stroke-width="1"/>
            <line x1="100" y1="110" x2="100" y2="10" stroke="#bdc3c7" stroke-width="1"/>
            <path d="M 30,30 Q 100,100 170,30" stroke="#9b59b6" stroke-width="3" fill="none"/>
            </svg>
        </div>
        <div class="h5p-tile h5p-draggable" draggable="true" data-id="derivative-3">
            <svg class="h5p-graph-svg" viewBox="0 0 200 120">
            <line x1="10" y1="60" x2="190" y2="60" stroke="#bdc3c7" stroke-width="1"/>
            <line x1="100" y1="110" x2="100" y2="10" stroke="#bdc3c7" stroke-width="1"/>
            <line x1="20" y1="60" x2="180" y2="60" stroke="#16a085" stroke-width="3"/>
            </svg>
        </div>
        <div class="h5p-tile h5p-draggable" draggable="true" data-id="derivative-4">
            <svg class="h5p-graph-svg" viewBox="0 0 200 120">
            <line x1="10" y1="60" x2="190" y2="60" stroke="#bdc3c7" stroke-width="1"/>
            <line x1="100" y1="110" x2="100" y2="10" stroke="#bdc3c7" stroke-width="1"/>
            <path d="M 30,80 Q 100,20 170,80" stroke="#f39c12" stroke-width="3" fill="none"/>
            </svg>
        </div>
        </div>
    </div>
    <div class="h5p-button-group">
        <button class="h5p-btn h5p-btn-check" id="checkAnswers">Antworten überprüfen</button>
        <button class="h5p-btn h5p-btn-reset" id="resetTask">Zurücksetzen</button>
    </div>
    <div class="h5p-feedback" id="feedback"></div>
    </div>
    <script>
        (function() {
        'use strict';
        let draggedElement = null;
        const placements = {};
        // Drag-Funktionalität
        const draggables = document.querySelectorAll('.h5p-draggable');
        const dropzones = document.querySelectorAll('.h5p-dropzone');
        draggables.forEach(draggable => {
            draggable.addEventListener('dragstart', handleDragStart);
            draggable.addEventListener('dragend', handleDragEnd);
        });
        dropzones.forEach(dropzone => {
            dropzone.addEventListener('dragover', handleDragOver);
            dropzone.addEventListener('dragleave', handleDragLeave);
            dropzone.addEventListener('drop', handleDrop);
        });
        function handleDragStart(e) {
            if (this.classList.contains('placed')) {
            e.preventDefault();
            return;
            }
            draggedElement = this;
            this.classList.add('dragging');
            e.dataTransfer.effectAllowed = 'move';
            e.dataTransfer.setData('text/html', this.innerHTML);
        }
        function handleDragEnd(e) {
            this.classList.remove('dragging');
        }
        function handleDragOver(e) {
            if (e.preventDefault) {
            e.preventDefault();
            }
            e.dataTransfer.dropEffect = 'move';
            this.classList.add('drag-over');
            return false;
        }
        function handleDragLeave(e) {
            this.classList.remove('drag-over');
        }
        function handleDrop(e) {
            if (e.stopPropagation) {
            e.stopPropagation();
            }
            e.preventDefault();
            this.classList.remove('drag-over');
            if (draggedElement) {
            // Entferne vorherige Platzierung in dieser Dropzone
            const existingItem = this.querySelector('.h5p-draggable');
            if (existingItem) {
                existingItem.classList.remove('placed');
                existingItem.style.display = 'block';
                const oldId = existingItem.getAttribute('data-id');
                delete placements[this.getAttribute('data-answer')];
            }
            // Entferne das Element aus seiner vorherigen Position
            const previousDropzone = Object.keys(placements).find(key => placements[key] === draggedElement.getAttribute('data-id'));
            if (previousDropzone) {
                delete placements[previousDropzone];
            }
            // Platziere das neue Element
            const clone = draggedElement.cloneNode(true);
            clone.style.margin = '0';
            clone.style.cursor = 'default';
            clone.removeAttribute('draggable');
            this.appendChild(clone);
            this.classList.add('filled');
            draggedElement.classList.add('placed');
            placements[this.getAttribute('data-answer')] = draggedElement.getAttribute('data-id');
            }
            return false;
        }
        // Überprüfung
        document.getElementById('checkAnswers').addEventListener('click', function() {
            const feedback = document.getElementById('feedback');
            let correct = 0;
            let total = 0;
            dropzones.forEach(dropzone => {
            total++;
            const correctAnswer = dropzone.getAttribute('data-answer');
            const userAnswer = placements[correctAnswer];
            if (userAnswer === correctAnswer) {
                correct++;
                dropzone.style.borderColor = '#27ae60';
                dropzone.style.background = '#d4edda';
            } else {
                dropzone.style.borderColor = '#e74c3c';
                dropzone.style.background = '#f8d7da';
            }
            });
            feedback.style.display = 'block';
            if (correct === total) {
            feedback.className = 'h5p-feedback success';
            feedback.innerHTML = `🎉 Ausgezeichnet! Alle ${correct} von ${total} Zuordnungen sind korrekt!`;
            } else if (correct > 0) {
            feedback.className = 'h5p-feedback partial';
            feedback.innerHTML = `👍 Gut gemacht! ${correct} von ${total} Zuordnungen sind korrekt. Versuche es noch einmal!`;
            } else {
            feedback.className = 'h5p-feedback error';
            feedback.innerHTML = `❌ Leider sind noch keine Zuordnungen korrekt. Überlege, wie sich die Steigung einer Funktion in ihrer Ableitung widerspiegelt.`;
            }
        });
        // Zurücksetzen
        document.getElementById('resetTask').addEventListener('click', function() {
            // Entferne alle Platzierungen
            dropzones.forEach(dropzone => {
            const placed = dropzone.querySelector('.h5p-draggable');
            if (placed) {
                placed.remove();
            }
            dropzone.classList.remove('filled');
            dropzone.style.borderColor = '';
            dropzone.style.background = '';
            });
            // Setze Draggables zurück
            draggables.forEach(draggable => {
            draggable.classList.remove('placed');
            draggable.style.display = 'block';
            });
            // Lösche Placements
            Object.keys(placements).forEach(key => delete placements[key]);
            // Verstecke Feedback
            const feedback = document.getElementById('feedback');
            feedback.style.display = 'none';
        });
        })();
    </script>
{{< /h5p >}}
