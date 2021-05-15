---
title: "Resolvendo um Jogo"
date: 2021-05-06T17:14:00-03:00
slug: ""
description: ""
keywords: []
draft: true
tags: [matematica, algebra-linear]
math: true
toc: true
---

Considere um jogo para duas pessoas onde o primeiro jogador tem três opções de ataque — simples, arriscado ou armadilha — e o segundo jogador tem duas opções apenas — ofensivo ou defensivo. Quando o primeiro jogador dá um ataque simples e o segundo jogador é ofensivo, o primeiro jogador tira $1$ ponto do segundo jogador. Se o segundo jogador tivesse defendido, ninguém perderia pontos. O ataque arriscado é particularmente efetivo quando o segundo jogador está na defensiva, tira $4$ pontos dele. Contra um jogador ofensivo, o ataque arriscado te faz perder $3$ pontos. Se você usa a armadilha em um jogador ofensivo, tira $3$ pontos dele. Mas um jogador na defensiva consegue detectar a armadilha, desviar dela e tirar $2$ pontos seus.

O parágrafo acima pode ser resumido na seguinte matriz

$$\begin{bmatrix}
1 & 0 \\\\
-3 & 4 \\\\
3 & -2 \\\\
\end{bmatrix} = A$$

onde as linhas correspondem de cima para baixo a simples, arriscado e armadilha, e as colunas correspondem a ofensivo e defensivo, da esquerda para a direita. Agora a pergunta é, qual a combinação racional de estratégias para os dois jogadores? Para responder isso, primeiro vamos considerar qual é o resultado esperado para cada combinação de estratégias.

Se primeiro jogador escolhe simples, arriscado e armadilha com probabilidades de respectivamente $a_1$, $a_2$ e $a_3$, e o segundo jogador escolhe ofensivo e defensivo com probabilidades de respectivamente $b_1$ e $b_2$. O resultado esperado é dado por

$$
\begin{bmatrix}
b_1 & b_2 & b_3
\end{bmatrix}
\begin{bmatrix}
1 & 0 \\\\
-3 & 4 \\\\
3 & -2 \\\\
\end{bmatrix}
\begin{bmatrix}
a_1 \\\\
a_2 \\\\
\end{bmatrix}
$$

por exemplo

$$
\begin{bmatrix}
1/3 & 1/3 & 1/3
\end{bmatrix}
\begin{bmatrix}
1 & 0 \\\\
-3 & 4 \\\\
3 & -2 \\\\
\end{bmatrix}
\begin{bmatrix}
1/2 \\\\
1/2 \\\\
\end{bmatrix} =
\frac{1}{2}
$$

espera-se que o primeiro jogador ganhe em média $1/2$ pontos a cada rodada nessa combinação de estratégias. Note que nessas condições o segundo jogador poderia melhorar as suas chances se fosse ofensivo com mais frequência.

$$
\begin{bmatrix}
1/3 & 1/3 & 1/3
\end{bmatrix}
\begin{bmatrix}
1 & 0 \\\\
-3 & 4 \\\\
3 & -2 \\\\
\end{bmatrix}
\begin{bmatrix}
2/3 \\\\
1/3 \\\\
\end{bmatrix} =
\frac{4}{9} < \frac{1}{2}
$$

mas agora o primeiro jogador pode melhorar seu desempenho usando mais armadilhas.

$$
\begin{bmatrix}
3/5 & 1/5 & 1/5
\end{bmatrix}
\begin{bmatrix}
1 & 0 \\\\
-3 & 4 \\\\
3 & -2 \\\\
\end{bmatrix}
\begin{bmatrix}
2/3 \\\\
1/3 \\\\
\end{bmatrix} =
\frac{4}{5} > \frac{1}{2}
$$

Será que essa troca de estratégias nunca acaba? Bem, existe um caso em que as estratégias se equilibram, e nenhum jogador consegue trocar de estratégia sem prejudicar. Essa combinação de estratégias é

$$
\begin{bmatrix}
0.875 & 0.125 & 0
\end{bmatrix}
\begin{bmatrix}
1 & 0 \\\\
-3 & 4 \\\\
3 & -2 \\\\
\end{bmatrix}
\begin{bmatrix}
0.5 \\\\
0.5 \\\\
\end{bmatrix} =
0.5
$$

A forma que encontramos esses valores é via dois problemas de programação linear. O primeiro é o programa que pede para maximizar

$$
\begin{bmatrix}
1 & 1
\end{bmatrix}
x$$

sujeito a

$$Ax \geq
\begin{bmatrix}
1 \\\\
1 \\\\
1 \\\\
\end{bmatrix}$$

O segundo pede para minimizar

$$
y
\begin{bmatrix}
1 \\\\
1 \\\\
1 \\\\
\end{bmatrix}$$

sujeito a

$$yA \leq
\begin{bmatrix}
1 & 1
\end{bmatrix}$$

E para garantir que é possível satisfazer essas condições, somamos $5$ em todas as entradas de $A$. Isso aumenta 5 no resultado de cada estratégia, mas não afeta o resultado da comparação de duas combinações de estratégias.

Os dois programas são duais. O teorema da dualidade da programação linear garante que existem ótimos $x^{\*}$ e $y^{\*}$ para ambos os problemas e que

$$\begin{bmatrix}
1 & 1
\end{bmatrix}
x^{\*} =
y^{\*}
\begin{bmatrix}
1 \\\\
1 \\\\
1 \\\\
\end{bmatrix} = S$$

Então se os vetores não correspondiam a distribuições de probabilidade, basta dividir ambos por $S$. Isso realmente dá a combinação ótima de estratégias pois

$$A(x^\*/S) \geq
\begin{bmatrix}
1/S \\\\
1/S \\\\
1/S \\\\
\end{bmatrix}$$

implica que pra toda estratégia $y$

$$yA(x^\*/S) \geq
y
\begin{bmatrix}
1/S \\\\
1/S \\\\
1/S \\\\
\end{bmatrix} = 1/S$$

e do outro lado

$$(y^\*/S)A \leq
\begin{bmatrix}
1/S & 1/S
\end{bmatrix}$$

implica que pra toda estratégia $x$

$$(y^\*/S)Ax \leq
\begin{bmatrix}
1/S & 1/S
\end{bmatrix}x = 1/S$$

Voltando ao problema original, foi especialmente surpreendente para mim que a estratégia ótima do primeiro jogado não incluía ataques simples, já que eles eram os menos arriscados. Realmente mostra o valor desse tipo de análise.
