---
title: "Prova 5 — Tópicos de Álgebra Linear"
date: 2021-05-08T08:14:00-03:00
slug: ""
description: ""
keywords: []
draft: false
tags: [matematica, algebra-linear]
math: true
toc: true
---

# Enunciado

Seja $X \subset \mathbb{R}^2$ um conjunto finito. Prove que o fecho convexo de $X$, $\mathrm{conv}(X)$, é a intersecção de todos os semi-planos fechados contendo $X$.

# Resolução

Antes de mais nada precisamos estabelecer que $\mathrm{conv}(X)$ é um conjunto compacto. Ele é, afinal, a imagem de um conjunto compacto — nomeadamente $[0, 1]^{|X|} \subset \mathbb{R}^{|X|}$ — sob uma aplicação contínua — nomeadamente a combinação linear dos elementos de $X$. A partir daqui mostraremos o resultado mais geral: todo compacto convexo do espaço $\mathbb{R}^n$ é a intersecção de todos os semi-planos fechados contendo $X$. Chamemos tal intersecção de $Y$. Precisamos mostrar que $Y \subset X$ e $X \subset Y$.

A continência $X \subset Y$ não usa nossas hipóteses, apenas a definição de $Y$. Se $X$ está contido em cada elemento da intersecção, ele também está contido na intersecção.

Para $Y \subset X$, vamos mostrar a contrapositiva: se $x \not\in X$ então $x \not\in Y$. Para mostrar que $x \not\in Y$, vamos exibir um hiperplano $P \subset \mathbb{R}^n$ tal que $X \subset P$ e $x \not\in P$. De fato, pelo fato de $X$ ser compacto, existe um $m \in X$ que minimiza a distância $||m - x||$. O $m$ nos permite definir um $P$

$$P = \\{ v \in \mathbb{R}^n;\ \langle v-x, m - x \rangle \geq \langle m - x, m - x \rangle \\} \tag{0}$$

Que você pode pensar como o plano tangente a $X$ que passa por $m$. Será que realmente $x \not\in P$? Sim, porque qualquer ponto fora de um conjunto fechado está a uma distância maior que $0$ do conjunto. Será que $X \subset P$? Esta é a parte crucial da demonstração, em que usaremos a convexidade.

Suponha que exista $p$ tal que $p \in X$, mas $p \not\in P$:

$$\langle p-x, m - x \rangle < \langle m - x, m - x \rangle \tag{1}$$

Pela convexidade de $X$, para todo $1 \geq \varepsilon > 0$, também temos $k := \varepsilon(p-m) + m \in X$. Mas dá uma olhada na distância que esse vetor está de $x$, ou melhor, no quadrado dela:

$$\langle \varepsilon(p-m) + m - x,\ \varepsilon(p-m) + m - x\rangle$$

$$\langle m - x,\ m - x \rangle + \left(2 \varepsilon \langle p - m, m - x \rangle + \varepsilon^2\langle p - m, p - m \rangle \right)$$

pra valores pequenos de $\varepsilon$ a segunda parcela é negativa e $k$ estaria mais perto de $x$ do que $m$. De fato, reorganizando $(1)$, vemos que $\langle p - m, m - x \rangle < 0$ e podemos pegar $\varepsilon < \frac{-\langle p - m, m - x \rangle}{\langle p - m, p - m \rangle}$. Isso é um absurdo! Então é necessário que $X \subset P$, o que conclui a demonstração.
