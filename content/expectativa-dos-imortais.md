---
title: "A expectativa de vida dos imortais"
date: 2021-01-22T21:50:00-03:00
slug: "expectativa-dos-imortais"
description: "menor do que você imagina"
keywords: []
draft: false
tags: [matematica, probabilidade]
math: true
toc: false
---

Em 2019 um usuário do reddit [perguntou](https://www.reddit.com/r/AskReddit/comments/b9vnxj/youre_given_immortality_but_the_cost_is_being) pro resto do site se valia a pena se tornar imortal ao custo de voltar 2000 anos no tempo. Foram 11 mil respostas, inevitavelmente você simpatiza com algumas delas.

> _Yeah, that should give me just enough time to put off all the things I should actually be doing right now._ — [WorgRider](https://www.reddit.com/r/AskReddit/comments/b9vnxj/youre_given_immortality_but_the_cost_is_being/ek7u077?utm_source=share&utm_medium=web2x&context=3)[^1]

Mas falando de imortalidade sem a invulnerabilidade — assassinatos e acidentes ainda seriam possibilidades —, será que existiria alguma esperança de chegar vivo a 2021? responder isso envolve muitas considerações históricas e geográficas que vamos conscientemente ignorar enquanto aproveitamos a desculpa para pensar em matemática e probabilidade.

Primeiro, como poderíamos modelar o envelhecimento? como uma pessoa imortal seria diferente? uma forma é considerar a fatia dos humanos que têm uma certa idade. Digamos os [≈2 milhões](https://www.ibge.gov.br/apps/populacao/projecao/) de brasileiros que têm 20 anos. Depois de 1 ano, parte deles morrerá. Essa proporção é a _mortalidade_ e ela reflete a probabilidade de que um brasileiro de 20 anos morrerá dentro de 1 ano. Quanto mais velha a população, maior a mortalidade  e maior a probabilidade de morrer dentro de um ano.

![gráfico de mortalidade dos brasileiros](/mortalidade_brasileiros.png)
Baseado na [tábua de mortalidade de 2019](https://www.ibge.gov.br/estatisticas/sociais/populacao/9126-tabuas-completas-de-mortalidade.html?=&t=downloads)_

Então imaginaremos que todo ano o universo joga uma moedinha com pesos para decidir se você vive ou não por mais um ano, e os pesos vão se voltando contra você.

Surpreendentemente, o que acontece com os humanos nem sempre acontece com os outros animais. Lagostas, águas vivas, algumas tartarugas etc. Têm uma mortalidade constante durante a vida. Aparentemente eles não envelhecem. Se esse fosse o nosso caso o gráfico ficaria mais ou menos assim:

![gráfico de mortalidade dos imortais](/mortalidade_imortais.png)

Vamos simplificar mais ainda e considerar que a probabilidade de morrer é constante igual a \\( \alpha \\) desde os 0 anos de idade. Qual seria a expectativa de vida? seria

$$\sum_{n=0}^\infty n \cdot \mathrm{probabilidade\ de\ viver\ exatamente}\ n\ \mathrm{anos}$$

E quanto é \\(\mathrm{probabilidade\ de\ viver\ exatamente}\ n\ \mathrm{anos}\\)? a probabilidade de viver exatamente \\(0\\) anos é \\(\alpha\\). A de viver exatamente 1 é a probabilidade de sobreviver o primeiro ano e morrer no segundo, então \\((1-\alpha)\cdot\alpha\\).

No geral

$$ \mathrm{probabilidade\ de\ viver\ exatamente}\ n\ \mathrm{anos} = (1 - \alpha)^{n}\cdot\alpha$$

E portanto a expectativa de vida é

$$\sum_{n=0}^\infty n \cdot (1 - \alpha)^{n}\cdot\alpha$$
$$\alpha\cdot\sum_{n=1}^\infty n \cdot (1 - \alpha)^{n} \tag{0}$$

Pelo teste da razão essa série converge, então estamos liberados para fazer o truquezinho.

$$\sum_{n=1}^\infty n \cdot (1 - \alpha)^{n} $$
$$= 1 \cdot (1 - \alpha)^{1} + 2 \cdot (1 - \alpha)^{2} + 3 \cdot (1 - \alpha)^{3} + … $$
$$= (1 - \alpha)$$
$$+\ (1 - \alpha)^{2} + (1 - \alpha)^{2}$$
$$+\ (1 - \alpha)^{3} + (1 - \alpha)^{3}+ (1 - \alpha)^{3}$$
$$+\ … $$
Começando na parte de cima e descendo pela diagonal
$$= (1 - \alpha) + (1 - \alpha)^2  + (1 - \alpha)^3  + …$$
$$+\ (1 - \alpha)^2 +  (1 - \alpha)^3 + (1-\alpha)^4 + …$$
$$+\ (1 - \alpha)^3 +  (1 - \alpha)^4 + (1-\alpha)^5 + …$$
$$= \sum_{n=1}^\infty(1 - \alpha)^n +\ \sum_{n=2}^\infty(1 - \alpha)^n+\ \sum_{n=3}^\infty(1 - \alpha)^n + …$$
$$= (1-\alpha)\cdot\sum_{n=0}^\infty(1 - \alpha)^n + (1-\alpha)^2\cdot\sum_{n=0}^\infty(1 - \alpha)^n + …$$
$$= ((1-\alpha) + (1-\alpha)^2 + …)\cdot\sum_{n=0}^\infty(1 - \alpha)^n$$
$$= (1-\alpha)\cdot\left(\sum_{n=0}^\infty(1 - \alpha)^n\right)^2$$
$$= (1-\alpha)\cdot\left(\frac{1}{\alpha}\right)^2$$
$$= \frac{1-\alpha}{\alpha^2}$$

Substituindo esse resultado em \\((0)\\) concluímos que a expectativa de vida é

$$\frac{1-\alpha}{\alpha}$$

Para \\(\alpha = 0.0013\\), como está na tábua de mortalidade, o resultado é uma expectativa de \\(768.23\\) anos. Nada promissor, ainda mais pensando que consideramos a sua mortalidade no mundo moderno, com infraestrutura e pessoas que falam a sua língua. Eventos históricos pontuais também podem reduzir drasticamente suas chances. Claro que isso não significa que é impossível voltar para \\(2021\\), só que o tempo médio de vida seria esse. Adianto que a probabilidade de sobreviver isso tudo seria \\(7.41\\%\\), mas não vou te entediar com as contas.

A mortalidade constante tem algumas consequências engraçadas. Por exemplo, calculamos que a expectativa é \\(768.23\\), mas depois que você sobreviveu o primeiro ano qual a expectativa pros próximos anos? \\(768.23\\). E se você sobreviveu \\(1000\\) anos? \\(768.23\\). Você encontrou uma outra imortal de \\(2000\\) anos e agora estão juntos? se ela tiver a mesma mortalidade, vocês têm a mesma expectativa de vida.

Existe algo na natureza que tem essa característica, mas não é nenhum animal: átomos radioativos. Eles têm a mesma chance de decaírem em qualquer dado momento. Nesse caso o que dissemos no parágrafo anterior não parece mais tão estranho. Um átomo urânio tem a mesma chance de decair, não importa se tem \\(1000\\) anos ou \\(2000\\) anos ou bilhões de anos.


[^1]: sim, isso deve me dar exatamente o tempo que preciso para adiar todas as coisas que deveria estar fazendo agora.
