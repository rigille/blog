---
title: "o teorema da liberdade de associação"
date: 2021-06-09T00:55:00-03:00
slug: ""
description: "indução em expressões"
keywords: []
draft: true
tags: []
math: true
toc: false
---

quando você soma uma lista de números, ou multiplica uma lista de matrizes, não importa como você arranja os parênteses. isso é porque essas são operações associativas: $a + (b + c) = (a + b) + c$ e $A(BC) = (AB)C$. a ideia é que aplicando essas identidades do jeito certo, é possível sair de um arranjo de parênteses e chegar em qualquer outro que você desejar. mas como isso acontece?

quando as expressões são pequenas temos poucas possibilidades para explorar, é fácil. por exemplo podemos mostrar que

$$(a+(b+c))+(d+e) = a + (b + (c + (d + e)))$$

fazendo

$$(a+(b+c))+(d+e)$$
$$a+\color{blue}{(}(b+c)+(d+e)\color{blue}{)}$$
$$a+(b+\color{blue}{(}c+(d+e)\color{blue}{)})$$

mas, no caso de uma expressão com $20$ elementos, são possíveis $477638700$[^1] arranjos de parênteses. quando aumentamos a expressão para $100$ elementos, passam a existir

$$\small 227508830794229349661819540395688853956041682601541047340$$

arranjos possíveis. como provar que o resultado é sempre o mesmo pra todas elas? será que existe um algoritmo para achar essa sequência de reescritas? a primeira ideia é pensar em algum arranjo de parênteses especial que sirva como alvo. para começar precisamos considerar que para toda expressão $\alpha$ há exatamente duas possibilidades: 

 * ela é um número $\alpha = a$
 * ela é a soma de duas expressões $\alpha = \alpha_l + \alpha_r$

no primeiro caso de fato sempre vale $a = a$.

$$.$$

[^1]: é número de catalan $19$
