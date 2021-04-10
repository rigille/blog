---
title: "prova de tópicos de álgebra linear"
date: 2021-03-06T12:00:00-03:00
slug: ""
description: ""
keywords: []
draft: true
tags: [matematica, algebra linear]
math: true
toc: false
---
<!-- bem, o problema da prova é interessante então vou deixá-lo aqui. as demonstrações serão organizadas como [demonstração estruturada](https://www.microsoft.com/en-us/research/publication/write-21st-century-proof/). -->
postando a solução da primeira prova de álgebra linear.

> Seja A uma matriz não singular com $n \times n$ entradas reais. para $x \in \mathbb{R}^n \setminus \\{ 0 \\}$, defina $f(x) := \frac{Ax}{\|| A x \||}$.
>
> a) seja $x \in \mathbb{R}^n \setminus \\{ 0 \\}$. prove que se $L := \lim_{n\rightarrow \infty} f^n(x)$ então $L$ é um autovetor de $A$.

  primeiramente definindo $\alpha(x) := Ax$ e $\beta(x) := \||Ax\||$, deduzimos que $f$ é uma função contínua, pois $\alpha$ é contínua e $\beta$ é contínua e não se anula no domínio. por conta disso, $L$ é um ponto fixo de $f$, afinal $f(L) = f(\lim_{n\rightarrow \infty} f^n(x))$ e, pela contínuidade de $f$, temos $f(\lim_{n\rightarrow \infty} f^n(x)) = \lim_{n\rightarrow \infty} f \circ f^n(x) = \lim_{n\rightarrow \infty} f^n(x) = L$. substituindo este fato na definição de $f$

  $$\frac{AL}{\|| A L \||} = L$$
  $$AL = \|| A L \|| \cdot L$$

  e concluímos que $L$ é um autovetor de $A$.

> b) dê um exemplo para $n = 2$ em que o limite do item anterior não existe.
  
  um exemplo é

  $$ A = \begin{bmatrix}0 & 1 \\\\ -1 & 0\end{bmatrix} $$

  porque para todo $v \in \mathbb{R}^n \setminus \\{ 0 \\}$ e $n \in \mathbb{N}^{*}$ temos que $\||f^{n+1}(v) - f^n(v)\|| = 1/\sqrt{2}$. sendo esse o caso, a sequência não é uma sequência de cauchy e portanto não converge.

> c) Suponha que $A > 0$ e suponha que $\lambda_1, …, \lambda_n$ sejam os autovalores de $A$, associados aos respectivos autovetores $v_1, …, v_n$ com $|\lambda_1| > … > |\lambda_n|$. Seja $x = v_1 + … + v_n$, prove que $L := \lim_{n \rightarrow \infty} f^n(x)$ existe e possui todas as coordenadas positivas. O Teorema de Perron pode ser útil para este item.

primeiramente, podemos assumir sem perda de generalidade que $\lambda_n = 1$, porque múltiplos escalares de $A$ produziriam a mesma $f$. afirmo que

$$f^n(x) = \frac{A^n x}{\|| A^n x\||}$$

de fato o caso $n = 1$ é consequência direta da definição, e, supondo que a fórmula vale para $n$,

$$f^{n+1}(x) = f\left( \frac{ Ax }{\|| Ax \||}\right)$$
$$f^{n+1}(x) = \frac{A \frac{ Ax }{\|| Ax \||} }{ \left\|\left| A\frac{Ax}{\|| Ax \||} \right\|\right| }$$
$$f^{n+1}(x) = \frac{A^{n+1} x}{\|| A^{n+1} x\||}$$

concluímos que ela vale para $n+1$. por indução, portanto, a fórmula vale para todo $n$. abrindo a definição de $x$

$$f^n(x) = \frac{A^n \sum_{i} v_i}{\|| A^n \sum_{i} v_i\||}$$
$$f^n(x) = \frac{\sum_{i} A^n v_i}{\|| \sum_{i} A^n v_i\||}$$
$$f^n(x) = \frac{\sum_{i} \lambda_i^n v_i}{\|| \sum_{i} \lambda_i^n v_i\||}$$

como $|\lambda_i| < 1$ para $i \neq n$, o limite $\lim_{n\rightarrow\infty} \lambda_i^n = 0$ para $i \neq n$. isso significa que

$$ \lim_{n\rightarrow \infty} f^n(x) = \frac{v_n}{\|| v_n\||}$$

como $v_i$ é um autovetor associado ao autovalor de maior módulo, o teorema de perron garante que ele é positivo.
