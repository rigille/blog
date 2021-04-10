---
title: "Lista 1 — Tópicos de Álgebra Linear"
date: 2021-04-10T17:14:00-03:00
slug: ""
description: ""
keywords: []
draft: false
tags: [matematica, algebra-linear]
math: true
toc: true
---

<!--
5 - guilherme (aula 2, 2:12)
9 - joão medeiros (aula 2, 18:35)
10 - rígille (fórum)
12 - joão medeiros (aula 2, 39:54)
14 - guilherme (aula 2, 7:51)
-->

# Questão 3

## Enunciado

Seja $A$ uma matriz real simétrica, $k$ um número inteiro positivo. Mostre que se $A^k \cdot v = 0$ para $v \in \mathbb{R}^k$. Então $A \cdot v = 0$.

## Resolução

A questão nos pede para mostrar que

$$\forall k \in \mathbb{N}^*\ \forall v \in \mathbb{R}^k\ \forall A \in M_{k\times k}(A^k \cdot v = 0 \rightarrow A \cdot v = 0) \tag{P0}$$

Provarei a versão mais forte

$$\forall  \color{teal}{k, n} \in \mathbb{N}^*\ \forall v \in \mathbb{R}^{\color{teal}{n}}\ \forall A \in M_{\color{teal}{n\times n}}(A^{\color{teal}{k}} \cdot v = 0 \rightarrow A \cdot v = 0) \tag{P1}$$

que vale pra qualquer expoente da matriz, não só a dimensão do espaço.
Quando chegarmos a $(P1)$ podemos provar $(P0)$ especializando $k$ como $n$. Mas antes de chegar lá passaremos pelo caso específico em que o expoente é $2$:

$$\forall n \in \mathbb{N} \ \forall v \in \mathbb{R}^n\ \forall A \in M_{n\times n}(A^{\color{teal}{2}} \cdot v = 0 \rightarrow A \cdot v = 0) \tag{P2}$$

De fato suponha que

$$A^2 \cdot v = 0$$

fazendo o produto interno com $v$

$$\langle A^2  \cdot v,\ v \rangle = 0$$

mas a matriz $A$ é simétrica, então podemos passar um desses $A$s para o outro fator do produto.

$$\langle A  \cdot v,\  A \cdot v \rangle = 0$$

como o produto interno é positivo definido, isso implica que

$$A \cdot v = 0$$

isso conclui a demonstração de $P2$. Falta dar um jeito de usar $P2$ para provar $P1$. Para isso, podemos fazer uma indução em $k$.

* **Caso base $P1(1)$**

Hmmm, de fato a conclusão segue da premissa

$$A \cdot v = 0 \rightarrow A \cdot v = 0$$

* **Passo indutivo $P1(n) \rightarrow P1(n+1)$**

Vamos fixar $n$ e supor que

$A^n \cdot v = 0 \rightarrow A \cdot v = 0 \tag{P1.0}$

Queremos mostrar que

$$A^{n+1} \cdot v = 0 \rightarrow A \cdot v = 0$$

Suponhamos então que

$$A^{n+1} \cdot v = 0$$

Pode ser que $n+1 = 1$ ou $n+1 = 2$, esses são os casos que já analisamos no caso base e em $P2$. Também pode ser que $n+1 > 2$, nesse caso podemos escrever

$$A^2 \left(A^{n-1} \cdot v\right) = 0$$

agora podemos aplicar $P2$ para concluir que

$$A \left(A^{n-1} \cdot v\right) = 0$$
$$A^n \cdot v = 0$$

Por fim, aplicamos a hipótese de indução $P1.0$ para concluir

$$A \cdot v = 0$$

o que conclui a demonstração de $P1$. $\blacksquare$
