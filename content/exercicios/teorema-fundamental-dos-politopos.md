---
title: "o fecho convexo de um conjunto finito é um politopo"
date: 2021-05-13T10:01:00-03:00
slug: ""
description: ""
keywords: []
draft: false
tags: [matematica, algebra-linear]
math: true
toc: true
---

este post foi criado porque me animei na resolução da [lista de tópicos de álgebra linear](/exercicios/lista1-tal).

## Questão 46 ⭐⭐⭐⭐⭐

### Enunciado

Um poliedro é o conjunto solução de um sistema do tipo

$$a_{11} + \cdots + a_{1n}x_n \leq b_1\\\\
\vdots \\\\
a_{m1}x_1 + \cdots + a_{mn}x_n \leq b_m$$

com variáveis reais. Um **polítopo** é um poliedro limitado. Prove que o fecho convexo de um conjunto finito é um polítopo.

### Resolução

Para resolver essa questão primeiro vamos considerar o **cone gerado** por um conjunto de pontos. No caso, se temos um conjunto de vetores $\mathbf{v}_1, …, \mathbf{v}_d \in \mathbb{R}^n$, o cone gerado é o conjunto dos pontos

$$ \mathbf{Y}\mathbf{z},\ \mathbf{z} \geq 0$$

onde $\mathbf{Y} = [ v_1, …, v_n ] \in M_{d \times n}$ e $\mathbf{z} \in \mathbb{R}^n$. A ideia é mostrar que o cone gerado pode ser visto como o conjunto de pontos $\mathbf{x} \in \mathbb{R}^d$ tais que, para algum $m$ e alguma matriz $\mathbf{B} \in M_{m \times d}$

$$ \mathbf{Bx} \leq 0 $$

expressar o conjunto como um sistema de desigualdades. A princípio podemos expressar o conjunto do vetores $[\mathbf{x}\ \mathbf{t}]^T \in \mathbb{R}^{n+d}$ tais que $\mathbf{x} = \mathbf{Yt}$ e $t \geq 0$ como um sistema de desigualdades.
$$
\begin{bmatrix} I & -\mathbf{Y} \\\\ -I & \mathbf{Y} \\\\ 0 & -I \end{bmatrix}
\begin{bmatrix}\mathbf{x} \\\\ \mathbf{t} \end{bmatrix}
\leq
0
$$

onde vamos escrever

$$ \begin{bmatrix} I & -\mathbf{Y} \\\\ -I & \mathbf{Y} \\\\ 0 & -I \end{bmatrix} = \mathbf{A}
\tag{⭐}$$

e a i-ésima linha de $\mathbf{A}$ como $\mathbf{a}_i$ onde $\mathbf{a}_i^T \in \mathbb{R^{n+d}}$ para não carregar a notação.

agora a ideia é eliminar essas $d$ últimas variáveis do sistema de inequações — que correspondem ao $\mathbf{v}$ — enquanto mantemos a equivalência com o sistema original para as variáveis restantes. Isso nos trará a matriz $\mathbf{B}$ que desejamos. Então vamos falar um pouco de

#### Eliminação de Fourier-Motzkin

imagine que estamos considerando o sistema

$$\begin{cases}
x + 3y \leq 0 \\\\
x - 2y \leq 0
\end{cases} \tag{Sisteminha}$$

podemos eliminar a segunda variável multiplicando a primeira equação por $2$, a segunda por $3$ e somando os resultados. Daí ficaríamos apenas com

$$5x \leq 0 \tag{SisteminhaEliminado}$$

essa é a chamada eliminação de Fourier-Motzkin. Por outro lado se, em vez de $(\mathrm{Sisteminha})$, tivéssemos

$$\begin{cases}
x + 3y \leq 0 \\\\
x + 2y \leq 0
\end{cases} \tag{SisteminhaRuim}$$

a nossa estratégia não eliminaria o $y$. A multiplicação por número negativo, necessária para o cancelamento, invertiria o sentido da desigualdade e impediria que somássemos os resultados.

Voltando a $\mathrm{Sisteminha}$ e $\mathrm{SisteminhaEliminado}$, será que são equivalentes? Certamente qualquer solução de $\mathrm{Sisteminha}$, também solucionará $\mathrm{SisteminhaEliminado}$, por construção. Por outro lado, nem toda solução de $\mathrm{SisteminhaEliminado}$ solucionaria $\mathrm{Sisteminha}$. Isso é exemplificado pelo par $(x, y) = (0, 1)$. Não vale a recíproca, mas vale algo tão bom quanto: para todo $x$ que satisfaz $\mathrm{SisteminhaEliminado}$ existe $y$ tal que $(x, y)$ é solução de $\mathrm{Sisteminha}$. Essa é a chamada _eliminação_ do conjunto. Denotaremos ela por $\mathrm{elim}_2(C)$, onde $C$ é o conjunto e $2$ é o índice da variável eliminada. A definição mais conveniente para fazer as contas é a seguinte

$$\mathrm{elim}_k(C) := \\{\mathbf{v} + ye_k;\ \mathbf{v} \in C \wedge y \in \mathbb{R}\\}$$

Considere agora o sistema maior de inequações

$$\begin{bmatrix}
1 & 3 & 0 \\\\
2 & 3 & -2\\\\
3 & 1 & 4 \\\\
2 & 5 & -4 \\\\
1 & 2 & 2 \\\\
\end{bmatrix}
\begin{bmatrix}
x_1 \\\\
x_2 \\\\
x_3 \\\\
\end{bmatrix}
\leq 0 \tag{Sistemão}$$

Como eliminar a terceira variável? Nesse caso não precisamos eliminar da primeira linha porque o coeficiente já é $0$. Além disso temos quatro pares de linhas que podemos combinar: linhas $2$ e $3$, ou $2$ e $5$, ou $4$ e $3$, ou $4$ e $5$. Faremos todas as combinações possíveis. O resultado é:

$$\begin{bmatrix}
1 & 3 & 0 \\\\
7 & 7 & 0 \\\\
3 & 5 & 0 \\\\
5 & 6 & 0 \\\\
4 & 9 & 0 \\\\
\end{bmatrix}
\begin{bmatrix}
x_1 \\\\
x_2 \\\\
x_3 \\\\
\end{bmatrix}
\leq 0 \tag{SistemãoEliminado}$$

onde a segunda linha combina $2$ e $3$ e a terceira linha combina $2$ e $5$, a quarta linha combina $4$ e $3$ e a quinta combina $4$ e $5$. Será que o conjunto solução de $\mathrm{SistemãoEliminado}$ também é a eliminação do conjunto solução de $\mathrm{Sistemão}$? Isso exige uma demonstração.

#### Teorema

Seja $\mathbf{A}$ uma matriz. Queremos calcular a eliminação de $\mathbf{A}$ na $k$-ésima variável. Para isso, primeiro separe as linhas de $\mathbf{A}$ em três matrizes de acordo com o valor de $a_{ik}$. Em $\mathbf{A}_0$ ficarão as linhas em que $a_{ik} = 0$, em $\mathbf{B}$ as que $a_{ik} > 0$, em $\mathbf{C}$ as que $a_{ik} < 0$. Defina a eliminação de $A$ como

$$A^{/k} :=
\begin{bmatrix}
A_0 \\\\
D
\end{bmatrix}$$

onde as linhas de $D$ são $c_j b_{ik} + b_i (-c_{jk})$ para todas as linhas $b_i$ e $c_j$ de $\mathbf{B}$ e $\mathbf{C}$ respectivamente. Afirmo que

$$\\{\mathbf{x};\ A^{/k}\mathbf{x} \leq 0 \\} = \mathrm{elim}_k\left(\\{\mathbf{x};\ A\mathbf{x} \leq 0\\}\right)$$

#### Prova

A primeira inclusão é que $\\{\mathbf{x};\ A^{/k}\mathbf{x} \leq 0 \\} \supset \\{\mathbf{x};\ A\mathbf{x} \leq 0\\}$, novamente pela nossa construção de $A^{/k}$. Além disso

$$\mathrm{elim}_k(\\{\mathbf{x};\ A^{/k}\mathbf{x} \leq 0 \\}) \supset \mathrm{elim}_k(\\{\mathbf{x};\ A\mathbf{x} \leq 0\\})$$

mas a $k$-ésima coluna de $A^{/k}$ é $0$ então

$$\\{\mathbf{x};\ A^{/k}\mathbf{x} \leq 0 \\} \supset \mathrm{elim}_k(\\{\mathbf{x};\ A\mathbf{x} \leq 0\\})$$

Para mostrar a outra continência, vamos assumir que $A^{/k}\mathbf{v} \leq 0$ e mostraremos que existe $y \in \mathbb{R}$ tal que

$$\mathbf{v} - ye_k \in \\{\mathbf{x};\ A\mathbf{x} \leq 0\\}$$

De fato

$$A(\mathbf{v} - ye_k) \leq 0$$

$$A\mathbf{v} - yAe_k \leq 0$$

$$\begin{cases}
a_1\mathbf{v} - ya_{1k} \leq 0 \\\\
... \\\\
a_n\mathbf{v} - ya_{nk} \leq 0 \\\\
\end{cases}$$

o que é equivalente a dizer que 

$$b_i\mathbf{v}/b_{ik} \leq  y \leq -c_j\mathbf{v}/(-c_{jk})$$

$$(b_{ik}c_j + (-c_{jk})b_i)\mathbf{v} \leq 0$$

o que é válido, porque supusemos que $A^{/k}\mathbf{v} \leq 0$. $\blacksquare$

Retomando o problema do cone e considerando a matriz $\mathbf{A}$ definida em $(⭐)$. Podemos escrever a matriz $\mathbf{B}$, que procurávamos, como

$$(((A^{/n+d})^{/n+d-1})…)^{/n+1} = \mathbf{B}$$

se excluirmos as últimas $d$ colunas da direita.

Isso tudo foi para cones, mas todo fecho convexo no $\mathbb{R}^n$ pode ser relacionado com um cone no $\mathbb{R}^{n+1}$, colocando $1$ no final dos vetores e gerando o cone a partir disso. Daí fazer todo o processo de eliminação que descrevemos e substituir o $1$ na variável $n+1$ do sistema de inequações depois de acabar.
