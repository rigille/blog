---
title: "expressões regulares do ponto de vista matemático"
date: 2020-09-06T16:13:39-03:00
slug: ""
description: ""
keywords: []
draft: true
tags: []
math: true
toc: false
---

quando precisamos encontrar uma palavra ou contar quantas vezes ela ocorre, digitar `ctrl+f` basta para livrar nosso cérebro desse trabalho. mas e se precisássemos consultar quais os números dentro de um texto? nesse caso, a única ajuda que o `ctrl+f` parece nos oferecer é rodar uma busca para cada número possível, método de praticidade duvidosa dado que levaria praticamente o mesmo tempo que ler "em busca do tempo perdido".

felizmente existem as **expressões regulares**. elas dão descrições práticas de alguns conjuntos — por exemplo o conjunto de todos os números decimais — e foram desenvolvidas em meados do século passado com grande contribuição do matemático stephen cole kleene. não são muito conhecidas, nem entre os matemáticos, nem entre o público geral, talvez porque a notação tradicional é especialmente complicada. isso é uma pena considerando que o conceito em si é bem simples. então vamos primeiro começar pelos conceitos do ponto de vista mais matemático e depois que já soubermos do que estamos falando passamos para a abordagem tradicional.

## caracteres, alfabetos, strings e linguagens

a parte mais básica da nossa discussão são os **caracteres**. não vamos dar uma definição muito precisa, seria inútil, mas já espalhamos vários exemplos pelo texto. tudo pode ser um caractere se você tiver a bravura necessária.

um **alfabeto** é um conjunto finito de caracteres. por exemplo o verso "Vozes veladas veludosas vozes" usa o alfabeto

$$\left\\{\mathrm{\`a\`,\`d\`,\`e\`,\`l\`, \`o\`, \`s\`,\`u\`,\`V\`,\`v\`,\`z\`, \`\ \`}  \right\\}$$

onde delimitamos os caracteres com aspas simples e levamos em conta letras maiúsculas e espaços. a memória do seu computador essencialmente usa o alfabeto $\left\\{ \` 0 \`, \` 1 \` \right\\}$.

uma **string** é uma lista de caracteres. por exemplo

$$\mathrm{"string"}$$

nossas strings são sempre finitas, sempre ordenadas. se não está precisamente definido qual caractere vem depois de qual, não é uma string. também existe a string vazia, sem caracteres, que chamaremos de $\varepsilon$.

uma **linguagem** é um conjunto de strings que usam um certo alfabeto. três exemplos de linguagens sobre o alfabeto $\left\\{ \` 0 \`, \` 1 \` \right\\}$ são:

$$L_0 = \left\\{ \` \` 00", \` \` 00000" \right\\}$$
$$L_1 = \left\\{ \` \` 1", \` \` 01", \` \` 001" \right\\}$$
$$L_2 = \left\\{ \` \` 00", \` \` 010", \` \` 0110", \ldots, \` \` 0111110", \ldots \right\\}$$

onde $L_2$ é o conjunto das strings que têm $0$ nas extremidades e $1$ no interior. diferente de tudo que definimos até agora, linguagens não precisam ser finitas: $L_2$ é uma **linguagem infinita**, enquanto $L_0$ e $L_1$ são **linguagens finitas**.

## concatenação de strings

você pode **concatenar** duas strings colocando uma no final da outra.

$$\mathrm{ \` \`para" \cdot \` \` quedas" = \` \` paraquedas"}$$

a ordem interfere no resultado, afinal

$$\mathrm{ \` \`te" \cdot \` \` mor" = \` \` temor"}$$

$$\mathrm{ \` \`mor" \cdot \` \` te" = \` \` morte"}$$

mas os parênteses não

$$\mathrm{ \left( \` \`in" \cdot \` \`feliz" \right) \cdot \` \`mente" = \` \`in" \cdot \left( \` \`feliz" \cdot \` \`mente" \right) }$$

$$\mathrm{ \left( \` \`infeliz" \right) \cdot \` \`mente" = \` \`in" \cdot \left( \` \`felizmente" \right) }$$

$$\mathrm{  \` \`infelizmente" = \` \`infelizmente" }$$

(ermo moer
brado dobra
dever verde
cota taco
temor morte
louco colou)
