---
title: "Lista 1 — Tópicos de Álgebra Linear — Questão 23"
date: 2021-03-25T17:34:00-03:00
slug: ""
description: ""
keywords: []
draft: true
tags: [matematica, algebra linear]
math: true
toc: false
---

# Enunciado

Seja $u$ um vetor unitário num espaço real com produto interno $V$. Defina $T(x) = x - 2\langle x, u \rangle u$.

**a)** Mostre que $T$ é um operador linear e uma isometria.

**b)** Encontre $\mathrm{det}(T)$ no caso em que $\mathrm{dim}(V) < \infty$.

# Resolução

**a)** Para mostrar que é um operador linear vamos mostrar que para todo $u$, vale $T(x + \alpha y) = T(x) + \alpha T(y)$.

De fato
$$T(x + \alpha y) = x + \alpha y - 2\langle x + \alpha y, u \rangle u$$
$$= x + \alpha y - 2\langle x, u \rangle u - 2\langle \alpha y, u \rangle u$$
$$= x - 2\langle x, u \rangle u + \alpha y - 2\langle \alpha y, u \rangle u$$
$$= x - 2\langle x, u \rangle u + \alpha \left(y - 2\langle y, u \rangle u\right)$$
$$= T(x) + \alpha T(y)$$

Para mostrar que é uma isometria vamos mostrar que, para todo $y$ $\in V$, vale que $\langle T(y), T(y) \rangle = \langle y, y \rangle$

$$ \langle T(y), T(y) \rangle = \langle y - 2\langle y, u \rangle u, y - 2\langle y, u \rangle u \rangle$$
$$ = \langle y, y\rangle + \langle y, - 2\langle y, u \rangle u \rangle + \langle - 2\langle y, u \rangle u, y\rangle + \langle - 2\langle y, u \rangle u, - 2\langle y, u \rangle u \rangle$$

$$ = \langle y, y\rangle - 2\langle y, u \rangle \langle y, u \rangle - 2\langle y, u \rangle \langle u, y\rangle + \langle - 2\langle y, u \rangle u, - 2\langle y, u \rangle u \rangle$$

$$ = \langle y, y\rangle - 2\langle y, u \rangle \langle y, u \rangle - 2\langle y, u \rangle \langle u, y\rangle + 4\langle y, u \rangle^2 \langle  u, u \rangle$$

como $ \langle u, u \rangle = 1$, todos os termos além do primeiro se cancelam, e chegamos em

$$= \langle y, y \rangle$$

como queríamos demonstrar.

**b)** o determinante é invariante em relação a escolha de base, então vamos escolher uma base conveniente para calculá-lo. Primeiro observamos que, restrito ao espaço ortogonal de $u$, o operador $T$ é a função identidade. então, se definíssemos $n := \mathrm{dim}(V)$, e escolhêssemos uma base $\\{e_1, e_2, …, e_{n-1}\\}$ do espaço ortogonal de $u$, teríamos que $\\{e_1, e_2, …, e_{n-1}, u\\}$ seria umba base de $V$.

Nessa base, a matriz de $T$ seria.
$$ A = \begin{bmatrix}1 & 0 & \dots \\\\ 0 & 1 \\\\ \vdots & & \ddots  \\\\ & & & 1 & 0 \\\\ & & & 0 & -1\end{bmatrix} $$

portanto $\mathrm{det}(T) = -1$.
