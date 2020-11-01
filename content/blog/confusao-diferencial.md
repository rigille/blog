---
title: "confusão diferencial"
date: 2020-09-31T19:07:00-03:00
slug: ""
description: ""
keywords: [geometria-diferencial]
draft: false
tags: []
math: true
toc: false
---

sempre achei os materiais de geometria diferencial muito difíceis de entender por algum motivo… elusivo demais para explicar. agora acredito que sei o que é e não é o conteúdo, é a notação.

matemáticos naturalmente descartam trechos repetitivos das equações por motivos de preguiça de escrever. isso, combinando com outros acidentes históricos, produz expressões excepcionalmente concisas e ambíguas. um leitor experiente consegue solucionar as ambiguidades e completar as lacunas, como fazemos sempre que conversamos. um iniciante, por outro lado, está em tanta condição de fazer isso quanto um et está em condições de planejar uma ceia de natal.

nada disso é exclusividade da geometria diferencial. o problema piora pra ela em particular por culpa da diversidade de tipos de valores que podem aparecer nas expressões. se você avistar uma letra num livro de álgebra elementar talvez ela represente um número, talvez ela represente uma função $\mathbb{R} \rightarrow \mathbb{R}$[^1], talvez ela seja parte do texto, essas são todas as possibilidades. uma letra, num livro de geometria diferencial, pode representar um número, um dos infinitos tipos de vetores, um dos infinitos tipos de matrizes, funções que pegam um dos infinitos tipos de vetores e retornam um dos infinitos tipos de matrizes, funções que pegam um vetor e retornam uma função como a anterior, etc.

está começando a ficar confuso, que tal um exemplo?

$$s(t) = \int_0^{t} \sqrt{E\left( u' \right)^2 + 2Fu'v' + G\left( v' \right)^2}\ \mathrm{d} t$$

essa é uma equação que tirei agora do _elementos de geometria diferencial_, do manfredo. ela dá um método para calcular o comprimento de uma curva parametrizada sobre uma superfície, mas não vamos pensar muito no que os termos significam para ter a experiência autêntica do aluno que não sabe o que está acontecendo. quais são os tipos de valores que temos nessa expressão e como eles estão se combinando? no lado esquerdo é seguro assumir que estamos pegando um número $t \in \mathbb{R}$, aplicando numa função $s \in \mathbb{R} \rightarrow \mathbb{R}$ e recebendo por fim outro número $s(t) \in \mathbb{R}$, que é o comprimento da curva. se o lado esquerdo da equação é um número, o lado direito também tem que ser então já sabemos que

$$\int_0^{t} \sqrt{E\left( u' \right)^2 + 2Fu'v' + G\left( v' \right)^2}\ \mathrm{d} t \in \mathbb{R}.$$

além disso a integral pega uma função $\mathbb{R} \rightarrow \mathbb{R}$ e retorna outra função $\mathbb{R} \rightarrow \mathbb{R}$ então é necessário que

$$\sqrt{E\left( u' \right)^2 + 2Fu'v' + G\left( v' \right)^2} \in \mathbb{R} \rightarrow \mathbb{R}$$

a raiz quadrada geralmente pega um número e retorna outro número, mas nesse caso estamos tirando a raiz quadrada de uma função definindo $\sqrt{f} := (t \mapsto \sqrt{f(t)})$[^2]. a soma é definida de forma muito semelhante:

$$f + g := (t \mapsto f(t) + g(t))$$

nada de problemático até agora, já sabemos que cada uma das parcelas  $E\left( u' \right)^2$, $2Fu'v'$ e $G\left( v' \right)^2$ são funções $\mathbb{R} \rightarrow \mathbb{R}$.

aqui os problemas começam. seria muito fácil pensar que na primeira expressão estamos pegando uma função $u'$[^3] compondo com $E$ e elevando o resultado ao quadrado. ou talvez o $E$ estivesse sendo multiplicado com $(u')^2$? de fato é uma multiplicação. Mas o que é $E$? Surpresa! $E$ é uma função $\mathbb{R}^2 \rightarrow \mathbb{R}$. Mas $(u')^2$ é do tipo $\mathbb{R}\rightarrow\mathbb{R}$ como multiplicaríamos isso com uma função $\mathbb{R}^2\rightarrow\mathbb{R}$? isso não faz sentido…

os argumentos de $E$ foram omitidos.

o que o autor realmente quis dizer é mais algo como

$$E(u, v) := (t \mapsto E(u(t), v(t)))$$

isso sim é $\mathbb{R}\rightarrow\mathbb{R}$ e faz sentido de se multiplicar com $(u')^2$. de onde saíram o $u$ e o $v$? você deveria simplesmente saber. o $F$ e o $G$ também querem dizer respectivamente $F(u, v)$ e $G(u, v)$.

$$s(t) = \int_0^{t} \sqrt{E(u, v)\left( u' \right)^2 + 2F(u, v)u'v' + G(u, v)\left( v' \right)^2}\ \mathrm{d} t$$

agora que sabemos disso a expressão faz sentido, mas é o tipo de coisa que pode levar horas, principalmente se não temos uma compreensão boa dos conceitos para nos guiar.

$$.$$

[^1]: a notação $A \rightarrow B$ representa aqui o tipo de função que pega um elemento de $A$ e retorna um elemento de $B$.
[^2]: a notação $x \mapsto f(x)$ representa aqui uma função que pega $x$ e retorna $f(x)$, neste caso em particular $(x \mapsto f(x)) = f$, mas a vantagem dessa notação é que podemos colocar expressões no lado direito e definir funções sem ter que dar nomes a elas. 
[^3]: uma função $\mathbb{R} \rightarrow \mathbb{R}$ talvez?
