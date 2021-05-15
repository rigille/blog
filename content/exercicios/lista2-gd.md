---
title: "Lista 2 — Geometria Diferencial"
date: 2021-05-14T13:14:00-03:00
slug: ""
description: ""
keywords: []
draft: false
tags: [matematica, geometria-diferencial]
math: true
toc: true
---

## Exercício 1

### Enunciado

Considere o Toro com parametrização

$$X(u, v) = \left((a + r \cos u) \cos v, (a + r \cos u) \sin v, r \sin u\right)$$

onde

$$0 < u < 2\pi \wedge 0 < v < 2\pi$$

Mostre que os meridianos ($v$ constante e $u$ variando) e os equadores interno e externo ($u = 0$ e $u = \pi$, respectivamente, com $v$ variando) são geodésicas do Toro.

### Resolução

Para começar vamos calcular os campos coordenados de $X(u, v)$.

$$X_u(u, v) = (-r \sin u \cos v, -r \sin u \sin v, r \cos u)$$
$$X_v(u, v) = (-(a + r \cos u)\sin v, (a + r\cos u)\cos v, 0)$$

agora olha só o que é legal, temos vários cilindros tangentes a essa superfície. Quando $u = 0$ ou $u = \pi$ o $\cos u = 1$ e $\sin u = 0$ e a $X_v$ vira

$$X_v(0, v) = (-(a + r)\sin v, (a + r)\cos v, 0)$$

em ambos os casos, e $X_u$ vira

$$X_u(0, v) = (0, 0, r)$$

no caso $u = 0$ e

$$X_u(0, v) = (0, 0, -r)$$

no caso $u = \pi$. Coincidindo exatemente com o campo coordenado do cilindro parametrizado por

$$(u, v) \rightarrow ((a+r)\cos v, (a+r)\sin v, ru)$$

no caso $u = 0$ e 

$$(u, v) \rightarrow ((a-r)\cos v, (a-r)\sin v, -ru)$$

no caso $u = \pi$. Como os equadores externo e interno são geodésicas desses cilindros, também o são do toro. Outros cilindros menos aparentes que merecem a nossa atenção são os parametrizados por

$$(u, v) \rightarrow ((a + r\cos u)\cos \theta - (v-\theta)(a + r\cos u)\sin \theta,\\\\
(a + r\cos u)\sin \theta + (v-\theta)(a + r\cos u)\cos \theta,\\\\
r \sin u)$$

apesar da expressão ser grande, vários termos morrem rapidinho na hora de verificar que esses cilindros de fato coincidem com o toro quando $v = \theta$ e que os campos coordenados são os mesmos nessa mesma região. E isso é o bastante para verificar que os meridianos são geodésicas.



## Exercício 2

### Enunciado

Considere a "sela de macaco", $S$, com parametrização

$$X(u, v) = (u, v, u^3 - 3v^2u),\ u \in \mathbb{R},\ v \in \mathbb{R}$$

Mostre que a aplicação $\varphi_\theta : S \rightarrow S$, dada por $\varphi_{\theta(X(u, v))} = X(r_\theta(u, v))$ com

$$r_\theta(u, v) = (u \cos \theta - v \sin \theta, u \sin \theta + v \cos \theta),\ \theta \in (0, 2\pi]$$

é um difeomorfismo.

Calcule a curvatura Gaussiana em um ponto $p \in S, K(p)$. Mostre que $K(p) = K(\varphi_\theta(p))$. Conclua que não vale a volta do Teorema Egregium de Gauss, ou seja, que existem difeomorfismos entre superfícies que preservam a curvatura Gaussiana, mas que não são isometrias.

### Resolução

Primeiramente, $r_\theta(u, v)$ é um difeomorfismo pois é uma rotação no domínio. Também vale que $X$ é um difeomorfismo do plano na superfície, porque é o gráfico de uma função. Daí que a composição também é um difeomorfismo. Para calcular a curvatura da sela de macaco vamos usar a fórmula para a curvatura gaussiana de uma superfície que é o gráfico de uma função.

$$K = \frac{F_{uu} \cdot F_{vv} - F_{uv}^2}{(1+F_u^2+F_v^2)^2}$$

onde $F(u, v) = u^3 - 3v^2u$. Calculemos as derivadas parciais

$$F_u = 3(u^2 - v^2)$$
$$F_v = -6uv$$
$$F_{uu} = 6u$$
$$F_{uv} = -6v$$
$$F_{vv} = -6u$$

substituindo

$$K = \frac{6u \cdot (-6u) - (-6v)^2}{(1+(3(u^2-v^2))^2+(-6uv)^2)^2}$$

$$K = - \frac{36(u^2 + v^2)}{(9(u^2+v^2)^2 + 1)^2}$$

a curvatura é uma função da norma! e a rotação preserva a norma, daí que o difeomorfismo preserva a curvatura.

## Exercício 3

### Enunciado

Seja

$$X(u,v) = (f(u)\cos v, f(u) \sin v, g(u))$$

uma parametrização para uma superfície regular de revolução $S$.

1. Calcule os coeficientes da primeira forma fundamental para esta parametrização. Obtenha uma fórmuala para a área de $S$ em função de $f(u)$, $g(u)$ e suas derivadas.

1. Calcule a área de uma esfera de raio $r > 0$

### Resolução

**1.** Para calcular os coeficientes da primeira forma fundamental. Primeiro vamos calcular o campo coordenado

$$X_u(u, v) = (f'(u)\cos v, f'(u)\sin v, g'(u))$$

$$X_v(u, v) = (-f(u)\sin v, f(u)\cos v, 0)$$

Daí

$$E(u, v) = \langle X_u, X_u \rangle = f'(u)^2 + g'(u)^2$$

$$F(u, v) = \langle X_u, X_v \rangle = 0$$

$$G(u, v) = \langle X_v, X_v \rangle = f(u)^2$$

E a área da região $R$ é

$$\int \int_R |X_u \wedge X_v| \mathrm{d}u\mathrm{d}v$$

$$\int \int_R \sqrt{EG - F^2} \mathrm{d}u\mathrm{d}v$$

$$\int \int_R \sqrt{(f'(u)^2 + g'(u)^2)f(u)^2} \mathrm{d}u\mathrm{d}v$$

$$\int \int_R |f(u)|\sqrt{f'(u)^2 + g'(u)^2} \mathrm{d}u\mathrm{d}v$$

que acho que está numa forma legal para calcular. No caso da esfera especificamente podemos fazer $g(u) = \sin u$ e $f(u) = \cos u$ e $R = [-\pi/2, \pi/2]\times[0, 2\pi]$.

$$\int_0^{2\pi} \int_{-\pi/2}^{\pi/2} |f(u)|\sqrt{f'(u)^2 + g'(u)^2} \mathrm{d}u\mathrm{d}v$$

$$\int_0^{2\pi} \int_{-\pi/2}^{\pi/2} \cos u \mathrm{d}u\mathrm{d}v$$

$$2\pi \int_{-\pi/2}^{\pi/2} \cos u \mathrm{d}u$$

$$2\pi (\sin(\pi/2) - \sin(\pi/2))$$

$$4\pi$$

que é o valor que conhecemos e amamos.

## Exercício 4

### Enunciado

Seja $\phi: S_1 \rightarrow S_2$ um difeomorfismo entre superfícies regulares

**a)** Mostre que $S_1$ será orientável se, e somente se, $S_2$ o for

**b)** Conclua que uma superfície regular $S$ que contenha um aberto difeomorfo a uma faixa de Möbius não pode ser orientada.

### Resolução

**a)** sem perda de generalidade, podemos considerar superfícies conexas, do contrário olhamos cada componente conexa separadamente. Considere o diferencial $\mathrm{d}\phi_p : T_p(S_1) \rightarrow T_{\phi(p)}(S_2)$, se o seu determinante for positivo, ele precisa ser positivo em toda superfície, do contrário teríamos uma aplicação contínua de um conjunto conexo — nomeadamente $S_1$ — para um conjunto desconexo — nomeadamente $\mathbb{R}\setminus\\{0\\}$ (lembrando que o determinante precisa ser diferente de $0$ para termos um difeomorfismo). Se for negativo precisa ser negativo em toda superfície. Tendo o sinal constante, podemos traduzir a orientação de uma superfície para uma orientação na outra.

**b)** Nesse caso poderíamos considerar a aplicação identidade, que seria um difeomorfismo local da faixa de möbius para a superfície.

## Exercício 5

### Enunciado

Mostre que a definição de diferenciabilidade de uma função $f : V \subset S \rightarrow \mathbb{R}$ dada em sala de aula (utilizando sistemas de coordenadas), é equivalente à seguinte: $f$ é diferenciável em $p \in V$ se for a restrição em $V$ de uma função diferenciável definida em um aberto de $\mathbb{R}^3$ contendo $p$.

### Resolução

Se $f$ for a restrição de uma função diferenciável a equivalência é imediata usando a regra da cadeia na parametrização. A volta é mais delicada. Podemos definir a função

$$g: S \times (-\varepsilon, \varepsilon) \rightarrow R \\\\
g(p, u) \mapsto f(p)$$

que seria diferenciável também. Mas o domínio não seria um aberto do $\mathbb{R}^3$.

## Exercício 6

### Enunciado

Prove que não existe superfície mínima compacta.

### Resolução

Seja $P$ um ponto qualquer do espaço. Pela compacidade da superfície, existe nela um ponto $Q$, que está tão ou mais distante de $P$ do que qualquer outro ponto da superfície. As curvaturas principais nesse ponto precisam ser maiores ou iguais à curvatura da esfera, do contrário a superfície sairia pra fora dela contrariando nossas hipóteses.

Assim a curvatura média é positiva, e a superfície não é mínima.
