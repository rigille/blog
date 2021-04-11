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

## Questão 3

### Enunciado

Seja $A$ uma matriz real simétrica, $k$ um número inteiro positivo. Mostre que se $A^k \cdot v = 0$ para $v \in \mathbb{R}^k$. Então $A \cdot v = 0$.

### Resolução

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

## Questão 29

### Enunciado

Encontre um espaço vetorial $V$ com produto interno e um subespaço $W$ tais que $W^{\perp \perp} \neq W$

### Resolução

No caso em que $V$ tem finitas dimensões $W^{\perp \perp} = W$. No geral suspeito que, infelizmente, não seja possível construir um vetor $v$ tal que $v \in W^{\perp \perp}$ e $v \not\in W$. Mas podemos mostrar que ele existe.

Vamos fazer de $V$ o espaço de sequências de números reais com quadrado somável. Nosso subespaço $W$ será o conjunto das sequências com apenas finitos termos não-nulos. Pra todo vetor $v \in V$, podemos definir o funcional linear $v^* : W \rightarrow \mathbb{R}$ tal que  $v^*(u) = \langle v, u \rangle$. Além disso sempre que $u \neq v$ vale $u^* \neq v^*$. Afinal se $u \neq v$ então existe um termo das sequências que discorda, e se considerarmos $w \in W$ a sequência que é $1$ neste termo e zero no resto, teremos $v^*(w) \neq u^*(w)$.

Existe uma transformação linear injetiva $v \mapsto v^*$ de $V$ para $W^{\perp}$. Assumindo o axioma da escolha, existe uma base para $V$. Qual a cardinalidade dessa base? Por um lado os subespaços de $V$ com base enumerável são uma união enumerável de conjuntos fechados com o interior vazio, nomeadamente a união dos espaços gerados pelos $n$ primeiros vetores da base. Por outro, $V$ é um espaço métrico completo, então o Teorema da Categoria de Baire nos diz que ele não pode ser a união enumerável de conjuntos fechados com interior vazio. Não resta outra opção para a base de $V$, ela deverá ser não-enumerável.

Em $W^{\perp \perp}$, o isomorfismo $v \mapsto v^*$ nos dá um conjunto LD de $W^{\perp \perp}$ a partir da base de $V$. Daí que a dimensão de $W^{\perp \perp}$ é não-enumerável, e portanto não existe bijeção nem muito menos isomorfismo entre $W^{\perp \perp}$ e $W$.

## Questão 33

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
