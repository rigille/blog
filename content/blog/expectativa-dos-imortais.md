---
title: "a expectativa de vida dos imortais"
date: 2020-09-06T16:13:39-03:00
slug: ""
description: ""
keywords: []
draft: true
tags: []
math: true
toc: false
---

em 2019 um usuário do reddit [perguntou](https://www.reddit.com/r/AskReddit/comments/b9vnxj/youre_given_immortality_but_the_cost_is_being) pro resto do site se valia a pena se tornar imortal ao custo de voltar 2000 anos no tempo. foram 11 mil respostas, inevitavelmente você simpatiza com algumas delas.

> _Yeah, that should give me just enough time to put off all the things I should actually be doing right now._ — [WorgRider](https://www.reddit.com/r/AskReddit/comments/b9vnxj/youre_given_immortality_but_the_cost_is_being/ek7u077?utm_source=share&utm_medium=web2x&context=3)

mas falando de imortalidade sem a invulnerabilidade — assassinatos e acidentes ainda seriam possibilidades —, será que existe alguma esperança de chegar vivo a 2021? responder isso envolve muitas considerações históricas e geográficas que vamos conscientemente ignorar enquanto aproveitamos a desculpa para pensar em matemática e probabilidade.

primeiro, como poderíamos modelar o envelhecimento? como uma pessoa imortal seria diferente? uma forma é considerar a fatia dos humanos que têm uma certa idade. digamos os [≈2 milhões](https://www.ibge.gov.br/apps/populacao/projecao/) de brasileiros que têm 20 anos. depois de 1 ano, parte deles morrerá. essa proporção é a _mortalidade_ e ela reflete a probabilidade de que um brasileiro de 20 anos morrerá dentro de 1 ano. quanto mais velha a população, maior a mortalidade  e maior a probabilidade de morrer dentro de um ano.

![gráfico de mortalidade dos brasileiros](/mortalidade_brasileiros.png)
_baseado na [tábua de mortalidade de 2019](https://www.ibge.gov.br/estatisticas/sociais/populacao/9126-tabuas-completas-de-mortalidade.html?=&t=downloads)_

então imaginaremos que todo ano o universo joga uma moedinha com pesos para decidir se você vive ou não por mais um ano, e os pesos vão se voltando contra você.

por incrível que pareça, o que acontece com os humanos nem sempre acontece com os outros animais. lagostas, águas vivas, algumas tartarugas etc. têm uma mortalidade constante durante a vida, então aparentemente não envelhecem. se esse fosse o nosso caso o gráfico ficaria mais ou menos assim:

![gráfico de mortalidade dos imortais](/mortalidade_imortais.png)

vamos simplificar mais ainda e considerar que a probabilidade de morrer é constante igual a $\alpha$ desde os 0 anos de idade. qual seria a expectativa de vida? seria

$$\sum_{n=0}^\infty n \cdot \mathrm{probabilidade\ de\ viver\ exatamente}\ n\ \mathrm{anos}$$

e quanto é $\mathrm{probabilidade\ de\ viver\ exatamente}\ n\ \mathrm{anos}$? a probabilidade de viver exatamente $0$ anos é $\alpha$. a de viver exatamente 1 é a probabilidade de sobreviver o primeiro ano e morrer no segundo, então $(1-\alpha)\cdot\alpha$. no geral

$$ \mathrm{probabilidade\ de\ viver\ exatamente}\ n\ \mathrm{anos} = (1 - \alpha)^{n-1}\cdot\alpha $$

e portanto a expectativa de vida é

$$\sum_{n=0}^\infty n \cdot (1 - \alpha)^{n-1}\cdot\alpha$$
$$\alpha\cdot\sum_{n=0}^\infty n \cdot (1 - \alpha)^{n-1}$$
