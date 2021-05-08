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

## Questão 3 ⭐

### Enunciado

Seja $A$ uma matriz real simétrica, $k$ um número inteiro positivo. Mostre que se $A^k \cdot v = 0$ para $v \in \mathbb{R}^k$. Então $A \cdot v = 0$.

### Resolução

A questão nos pede para mostrar que

$$\forall k \in \mathbb{N}^*\ \forall v \in \mathbb{R}^k\ \forall A \in M_{k\times k}(A^k \cdot v = 0 \rightarrow A \cdot v = 0) \tag{3.P0}$$

Provarei a versão mais forte

$$\forall  \color{teal}{k, n} \in \mathbb{N}^*\ \forall v \in \mathbb{R}^{\color{teal}{n}}\ \forall A \in M_{\color{teal}{n\times n}}(A^{\color{teal}{k}} \cdot v = 0 \rightarrow A \cdot v = 0) \tag{3.P1}$$

que vale pra qualquer expoente da matriz, não só a dimensão do espaço.
Quando chegarmos a $(3.P1)$ podemos provar $(3.P0)$ especializando $k$ como $n$. Mas antes de chegar lá passaremos pelo caso específico em que o expoente é $2$:

$$\forall n \in \mathbb{N} \ \forall v \in \mathbb{R}^n\ \forall A \in M_{n\times n}(A^{\color{teal}{2}} \cdot v = 0 \rightarrow A \cdot v = 0) \tag{3.P2}$$

De fato suponha que

$$A^2 \cdot v = 0$$

fazendo o produto interno com $v$

$$\langle A^2  \cdot v,\ v \rangle = 0$$

mas a matriz $A$ é simétrica, então podemos passar um desses $A$s para o outro fator do produto.

$$\langle A  \cdot v,\  A \cdot v \rangle = 0$$

como o produto interno é positivo definido, isso implica que

$$A \cdot v = 0$$

isso conclui a demonstração de $3.P2$. Falta dar um jeito de usar $3.P2$ para provar $3.P1$. Para isso, podemos fazer uma indução em $k$.

* **Caso base $3.P1(1)$**

Hmmm, de fato a conclusão segue da premissa

$$A \cdot v = 0 \rightarrow A \cdot v = 0$$

* **Passo indutivo $3.P1(n) \rightarrow 3.P1(n+1)$**

Vamos fixar $n$ e supor que

$A^n \cdot v = 0 \rightarrow A \cdot v = 0 \tag{3.P1.0}$

Queremos mostrar que

$$A^{n+1} \cdot v = 0 \rightarrow A \cdot v = 0$$

Suponhamos então que

$$A^{n+1} \cdot v = 0$$

Pode ser que $n+1 = 1$ ou $n+1 = 2$, esses são os casos que já analisamos no caso base e em $3.P2$. Também pode ser que $n+1 > 2$, nesse caso podemos escrever

$$A^2 \left(A^{n-1} \cdot v\right) = 0$$

agora podemos aplicar $3.P2$ para concluir que

$$A \left(A^{n-1} \cdot v\right) = 0$$
$$A^n \cdot v = 0$$

Por fim, aplicamos a hipótese de indução $3.P1.0$ para concluir

$$A \cdot v = 0$$

o que conclui a demonstração de $3.P1$. $\blacksquare$

## Questão 29 ⭐⭐⭐

### Enunciado

Encontre um espaço vetorial $V$ com produto interno e um subespaço $W$ tais que $W^{\perp \perp} \neq W$

### Resolução

No caso em que $V$ tem finitas dimensões $W^{\perp \perp} = W$. No geral suspeito que, infelizmente, não seja possível construir um vetor $v$ tal que $v \in W^{\perp \perp}$ e $v \not\in W$. Mas podemos mostrar que ele existe.

Vamos fazer de $V$ o espaço de sequências de números reais com quadrado somável. Nosso subespaço $W$ será o conjunto das sequências com apenas finitos termos não-nulos. Pra todo vetor $v \in V$, podemos definir o funcional linear $v^* : W \rightarrow \mathbb{R}$ tal que  $v^*(u) = \langle v, u \rangle$. Além disso sempre que $u \neq v$ vale $u^* \neq v^*$. Afinal se $u \neq v$ então existe um termo das sequências que discorda, e se considerarmos $w \in W$ a sequência que é $1$ neste termo e zero no resto, teremos $v^*(w) \neq u^*(w)$.

Existe uma transformação linear injetiva $v \mapsto v^*$ de $V$ para $W^{\perp}$. Assumindo o axioma da escolha, existe uma base para $V$. Qual a cardinalidade dessa base? Por um lado os subespaços de $V$ com base enumerável são uma união enumerável de conjuntos fechados com o interior vazio, nomeadamente a união dos espaços gerados pelos $n$ primeiros vetores da base. Por outro, $V$ é um espaço métrico completo, então o Teorema da Categoria de Baire nos diz que ele não pode ser a união enumerável de conjuntos fechados com interior vazio. Não resta outra opção para a base de $V$, ela deverá ser não-enumerável.

Em $W^{\perp \perp}$, o isomorfismo $v \mapsto v^*$ nos dá um conjunto LI de $W^{\perp \perp}$ a partir da base de $V$. Daí que a dimensão de $W^{\perp \perp}$ é não-enumerável, e portanto não existe bijeção nem muito menos isomorfismo entre $W^{\perp \perp}$ e $W$.

## Questão 33 ⭐⭐⭐

### Enunciado

Quais são os possíveis autovalores reais de um operador linear $T$ atuando num espaço de dimensão finita tal que $T$ e $T^2$ possuem os mesmos autovalores reais? Dê um exemplo mostrando que a mesma resposta não vale em espaços de dimensão infinita.

### Resolução

Pode ser que tanto $T$ quanto $T^2$ não tenham autovalores reais. Como no caso de $T: \mathbb{R}^2 \rightarrow \mathbb{R}^2$ dado pela matriz

$$
\begin{bmatrix}
1 & -1 \\\\
1 &  1 \\\\
\end{bmatrix}
$$

Porêm se $T$ tem um autovalor $\lambda$ associado a um autovetor $v$, então $T^2$ tem o autovalor $\lambda^2$ pois

$$T^2 v = \lambda T v = \lambda^2 v$$

Mas os autovalores de $T^2$ são autovalores de $T$, então $\lambda^2$ é autovalor de $T$. Fazendo indução nesse raciocínio, concluímos que a existência de $\lambda$ como autovalor implica na existência de $\lambda^{2^k}$ para todo $k\in\mathbb{N}$. Quando $|\lambda| = 1$ não tem medo não, esse conjunto tem tamanho no máximo $2$. De fato segue abaixo um exemplo em que o conjunto tem tamanho exatamente $2$.

$$
\begin{bmatrix}
-1 & 0 & 0 \\\\
0 &  0 & -1 \\\\
0 &  1 & 0 \\\\
\end{bmatrix}
$$

Quando $|\lambda| \neq 1$ o conjunto é infinito. Considerando que um operador linear num espaço vetorial finito tem finitos autovalores, temos um absurdo.

No caso de espaços com infinitas dimensões isso pode acontecer. Por exemplo, a derivada é um operador linear no espaço das funções $C^\infty$. O conjunto dos autovalores é todo $\mathbb{R}$, podemos agradecer às funções exponenciais por isso. O conjunto dos autovalores da segunda derivada é $\mathbb{R}$ da mesma forma.

## Questão 43 ⭐⭐⭐⭐⭐

### Enunciado

Seja $N$ um conjunto finito com $n$ elementos e $X_1, …, X_m,$ $Y_1, …, Y_m \subset N$ tais que, para quaisquer índices $1 \leq i, j \leq m$, vale $|X_i \cap Y_j| =\ \mathrm{if}\ j = i\ \mathrm{then}\ 0\ \mathrm{else}\ 1$. Prove que $m \leq n$.

### Resolução

Podemos supor, sem perda de generalidade, que $N$ é o consjunto dos números de $1$ a $n$, inclusive. Sabendo disso, e usando a notação $\mathbf{v}^i$ para a $i$-ésima coordenada de $\mathbf{v}$, vamos definir os vetores $\mathbf{x}_1, …, \mathbf{x}_m,$ $\mathbf{y}_1, …, \mathbf{y}_m \in \mathbb{R}^n$ de forma que $\mathbf{x}_i^j =\ \mathrm{if}\ j \in X_i\ \mathrm{then}\ 1\ \mathrm{else}\ 0$ e $\mathbf{y}_i^j =\ \mathrm{if}\ j \in Y_i\ \mathrm{then}\ 1\ \mathrm{else}\ 0$. Isso nos permitirá traduzir as propriedades dos conjuntos em propriedades lineares e, a partir daí, aproveitarmos as ferramentas da álgebra linear para tirar conclusões.

Por exemplo, o que o enunciado diz

$|X_i \cap Y_j| =\ \mathrm{if}\ j = i\ \mathrm{then}\ 0\ \mathrm{else}\ 1$

se traduz como

$\langle \mathbf{x}_i, \mathbf{y}_j \rangle =\ \mathrm{if}\ j = i\ \mathrm{then}\ 0\ \mathrm{else}\ 1$

De fato podemos tirar algumas conclusões disso, por exemplo, se considerarmos $\mathbf{X} = [\mathbf{x}_1, …, \mathbf{x}_m]$ e $\mathbf{Y} = [\mathbf{y}_1, …, \mathbf{y}_m]$ temos que:

$$\mathbf{X}^{T}\mathbf{Y} =
\begin{bmatrix} 0 & 1 & \dots \\\\ 1 & 0 \\\\ \vdots & & \ddots  \\\\ & & & 0 & 1 \\\\ & & & 1 & 0\end{bmatrix} = [\mathrm{if}\ i = j\ \mathrm{then}\ 0\ \mathrm{else}\ 1]_{ij}$$

Seria muito conveniente para nós concluir que essas matrizes não são singulares, que os conjuntos $\\{\mathbf{x}_1, …, \mathbf{x}_m\\}$ e $\\{\mathbf{y}_1, …, \mathbf{y}_m\\}$ são LI, porque a dimensão do espaço limita oria o tamanho do conjunto da forma que gostaríamos. E podemos obter isso concluindo que $\mathbf{X}^T\mathbf{Y}$ é não-singular! Afinal uma matriz é não-singular sse é o produto de matrizes não-singulares. Felizmente esse é o caso, porque se definirmos

$$\mathbf{s} := \sum_{i=1}^m e_i$$

como o vetor que tem todas as entradas iguais a $1$, o produto de matrizes se torna.

$$\mathbf{X}^{T}\mathbf{Y} = [\mathbf{s} - e_j]_j$$

agora é suficiente demonstrar que o conjunto desses vetorers é linearmente independente. suponha que existam coeficientes $\alpha_j \in \mathbb{R}$ tais que

$$\sum_{j = 1}^m \alpha_j(s - e_j) = 0$$

queremos concluir que, para todo $j$, $\alpha_j = 0$. Reorganizando a equação

$$\left(\sum_{j = 1}^m \alpha_j\right) s = \sum_{j = 1}^m \alpha_j e_j $$

o lado esquerdo da equação tem todas as coordenadas iguais, logo isso também valerá para o lado direito e, para todo $i$ e $j$, $\alpha_i = \alpha_j := \alpha$. Assim a equação se simplifica mais, para

$$m \alpha s = \alpha\mathbf{s} $$

o que só é verdade para $\alpha = 0$ quando $m > 1$, como queríamos demonstrar.

<!--
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

$$ \begin{bmatrix} I & -\mathbf{Y} \\\\ -I & \mathbf{Y} \\\\ 0 & -I \end{bmatrix} = \mathbf{A}$$

e a i-ésima linha de $\mathbf{A}$ como $\mathbf{a}_i$ onde $\mathbf{a}_i^T \in \mathbb{R^{n+d}}$ para não carregar a notação.

agora a ideia é eliminar essas $d$ últimas variáveis do sistema de inequações, que correspondem ao $\mathbf{v}$, enquanto mantemos a equivalência com o sistema original para as variáveis restantes. Isso nos trará a matriz $\mathbf{B}$ que desejamos. Então vamos falar um pouco de

#### Eliminação de Fourier-Motzkin

imagine que estamos considerando o sistema

$$\begin{cases}
x + 3y \leq 0 \\\\
x - 2y \leq 0
\end{cases} \tag{0}$$

podemos eliminar a segunda variável multiplicando a primeira equação por $2$, a segunda por $3$ e somando os resultados. Daí ficaríamos apenas com

$$x \leq 0 \tag{1}$$

essa é a chamada eliminação de Fourier-Motzkin. Por outro lado se, em vez de $(0)$, tivéssemos

$$\begin{cases}
x + 3y \leq 0 \\\\
x + 2y \leq 0
\end{cases} \tag{2}$$

a nossa estratégia não eliminaria o $y$. A multiplicação por número negativo, necessária para o cancelamento, invertiria o sentido da desigualdade e impediria que somássemos os resultados.

Voltando a $(0)$ e $(1)$, será que eles são equivalentes? Certamente qualquer solução de $(0)$, também solucionará $(1)$. Por outro lado, nem toda solução de $(1)$ soluciona $(0)$. Isso é exemplificado pelo par $(0, 1)$. Não vale a recíproca, mas vale algo quase tão bom quanto: para todo $x$ que satisfaz $(1)$ existe $y$ tal que $(x, y)$ é solução de $(0)$
-->

## Questão 45 ⭐⭐⭐⭐⭐

### Enunciado

Seja $V$ um espaço vetorial sobre um corpo $K$ com $n$ elementos. Suponha que $V_1, …, V_n$ são subespaços de $V$. Mostre que se $V_1 \cup … \cup V_n$ é um subespaço de $V$, então existe um índice $k$ para o qual $V_i \subset V_k$ para todo $i = 1, …, n$.

### Resolução

Vamos mostrar a contrapositiva: assumindo que não existe $k$ tal que $V_i \subset V_k$ para todo $i = 1, …, n$ e mostrando que existe um ponto de $V$ que não está na união. Faremos isso estimando por cima a quantidade de elementos de $V_1 \cup … \cup V_n$ e mostrando que nossa estimativa tem menos elementos que $V$. Nossa primeira observação é que

$$|V_1 \cup … \cup V_n| \leq |V_1| + … + |V_n| \tag{0}$$

Então podemos focar a nossa atenção no tamanho cada subespaço $|V_i|$. A dimensão de $V_i$ é no máximo $q-1$ onde $q := \mathrm{dim}(V)$. Ou seja

$$|V_i| \leq n^{q-1} \tag{1}$$

e

$$|V_1| + … + |V_n| \leq n \cdot n^{q-1} = n^q = |V|$$

quase conseguimos! Se conseguíssemos subtrair $1$ da nossa cota superior, teríamos resolvido a questão. Com certeza dá pra fazer isso. Só vale a igualdade em $(0)$ se os conjuntos forem todos disjuntos! E os espaços vão se intersectar bastante… Em particular, eles vão se intersectar no ponto $0$. Seguindo esse espírito, vamos refinar a nossa estimativa com

$$|V_1 \cup … \cup V_n| \leq 1 + |V_1 \setminus \\{ 0 \\}| + … + |V_n \setminus \\{ 0 \\}| \tag{2}$$

e com

$$|V_i \setminus \\{ 0 \\}| \leq n^{q-1} - 1 \tag{3}$$

obtendo

$$1 + |V_1 \setminus \\{ 0 \\}| + … + |V_n \setminus \\{ 0 \\}| \leq 1 + n \cdot (n^{q-1} - 1) < n^q = |V|$$

o que conclui a demonstração.
