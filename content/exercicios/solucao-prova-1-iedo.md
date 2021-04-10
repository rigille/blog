---
title: "Solução da Prova de IEDO"
date: 2021-04-04T21:50:00-03:00
slug: ""
description: ""
keywords: []
draft: false
tags: [matematica, algebra linear]
math: true
toc: false
---
# Enunciado

**E. 4. b)** Seja

$$B =
\begin{bmatrix}
-1 &  1 & 0 & 0 &  0 \\\\
 0 & -1 & 0 & 0 &  0 \\\\
 0 &  0 & 2 & 0 &  0 \\\\
 0 &  0 & 0 & 0 & -3 \\\\
 0 &  0 & 0 & 3 &  0 \\\\
\end{bmatrix}
$$

Encontre a solução $\varphi$ para o PVI

$$
\begin{cases}
x' = Bx \\\\
x(0) = (a_1, a_2, a_3, a_4, a_5) \in \mathbb{R}^5
\end{cases}
$$

E prove que $|\varphi(t)|$ é limitada se, e somente se, $a_1 = a_2 = a_3 = 0$.

# Solução

Sabemos, pelo **Teorema 2.63** (pág. 198) que a solução é da forma $x(t) = e^{Bt}x(0)$. Então para encontrar a solução é suficiente calcular $e^{Bt}$. Para isso, vamos aproveitar que a matriz está na forma canônica de Jordan. Nomeadamente, $B = \mathrm{diag}(J_1, J_2,J_3)$ onde.

$$J_1 =
\begin{bmatrix}
-1 &  1\\\\
 0 & -1\\\\
\end{bmatrix}
$$

$$
J_2 =
\begin{bmatrix}
2\\\\
\end{bmatrix}
$$

$$
J_3 =
\begin{bmatrix}
0 & -3 \\\\
3 &  0 \\\\
\end{bmatrix}
$$

Isso ajuda porque a identidade $B^n = \mathrm{diag}(J_1^n, J_2^n, J_3^n)$ garante que $e^{Bt} = \mathrm{diag}(e^{J_1 t}, e^{J_2 t}, e^{J_3 t})$.

Primeiramente
$$e^{J_2 t} = 
\begin{bmatrix}
e^{2t}\\\\
\end{bmatrix}$$

igual no caso escalar. Por outro lado, no caso de $J_1$

$$
e^{J_1 t} = 
\begin{bmatrix}
 e^{-t} &  te^t\\\\
 0 & e^{-t}\\\\
\end{bmatrix}
$$

que é parecido com o caso anterior, tomando a exponencial da diagonal mas com esse termo a mais na parte superior direita. podemos agradecer ao $1$ na superdiagonal por eles. Por último no caso do $J_3$

$$
e^{J_3 t} =
\begin{bmatrix}
\mathrm{cos}(3t) & \mathrm{sin}(3t)\\\\
-\mathrm{sin}(3t) & \mathrm{cos}(3t)\\\\
\end{bmatrix}
$$

tem pelo menos duas formas de ver isso, a primeira e fazendo as contas e reparando as séries de taylor que aparecem. a segunda é fazendo um isomorfismo entre a álgebra de matrizes da forma 
$
\begin{bmatrix}
a & b\\\\
-b & a\\\\
\end{bmatrix}
$
e os números complexos. Juntando tudo temos que a solução é

$$x(t) = e^{Bt}x(0) =
\begin{bmatrix}
e^{-t} & te^t & 0 & 0 & 0\\\\
0 & e^{-t} & 0 & 0 & 0\\\\
0 & 0 & e^{2t} & 0 & 0\\\\
0 & 0 & 0 & \mathrm{cos}(3t) & \mathrm{sin}(3t)\\\\
0 & 0 & 0 & -\mathrm{sin}(3t) & \mathrm{cos}(3t)\\\\
\end{bmatrix}
\begin{bmatrix}
a_1\\\\
a_2\\\\
a_3\\\\
a_4\\\\
a_5\\\\
\end{bmatrix}
$$

Se $a_1 = a_2 = a_3 = 0$ então as coordenadas da solução são todas combinações lineares de senos e cossenos, o que é limitado.
Vamos mostrar que caso contrário a solução é ilimitada. Como a norma de um vetor é sempre maior ou igual ao valor absoluto de qualquer uma das coordenadas, basta mostrar que uma das coordenadas é ilimitada.

## Caso $a_1 > 0$

Neste caso a primeira coordenada da solução é dada por $x_1(t) = a_1 e^{-t} + a_2 t e^{t}$. Queremos mostrar que, para todo $M > 0$ suficientemente grande, existe $t_M$ tal que $|x_1(t_M)| \geq M$. Neste caso podemos pegar $t_M = -\frac{1}{a_1} (M - a_1 + a_2)$. De fato, considerando que, quando $x < 0$, valem as desigualdades $e^{x} \geq x + 1$ e $xe^{x} \geq -1$
$$a_1 e^{t_M} + a_2 t_M e^{t_M}$$
$$\geq a_1 (t_M + 1) - a_2$$
$$\geq a_1 \left(\frac{1}{a_1} (M - a_1 + a_2) + 1\right) - a_2$$
$$\geq M$$

## Casos $a_2 > 0$ e $a_3 > 0$

Esses casos são mais fáceis porque $x_2(t) = a_2 e^{-t}$ e $x_3(t) = a_3 e^{2t}$. Como são funções exponenciais nós já sabemos que são ilimitadas.
