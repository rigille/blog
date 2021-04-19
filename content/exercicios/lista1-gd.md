---
title: "Lista 1 — Geometria Diferencial"
date: 2021-04-10T17:14:00-03:00
slug: ""
description: ""
keywords: []
draft: false
tags: [matematica, geometria-diferencial]
math: true
toc: true
---

## Capítulo 1 — Seção 3

### Questão 8 🖋️

Seja $\alpha : I \rightarrow R^3$ uma curva diferenciável e seja $\[a, b\] \subset I$ ser um intervalo fechado. Pra cada partição

$$a = t_0 < t_1 < ... < t_n = b$$

de $\[a, b\]$, considere a soma $\sum_{i=1}^n |\alpha(t_i) - \alpha(t_{i-1})| = I(\alpha, P)$ onde $P$ representa a partição. A norma $|P|$ de uma partição $|P|$ é definida como

$$|P| = \mathrm{max}(t_i - t_{i-1}),\ i = 1, …, n$$

Geometricamente, $I(\alpha, P)$ é o comprimento de um polígono inscrito em $\alpha(\[a, b\])$ com vértices em $\alpha(t_i)$. O objetivo deste exercício é mostrar que o comprimento de arco de $\alpha(\[a, b\])$ é, em certo sentido, um limite dos comprimentos dos polígonos inscritos.

Prove que, dado um $\varepsilon > 0$, existe um $\delta > 0$ tal que $|P| < \delta$ então

$$\left|\int_a^b |\alpha'(t)|\mathrm{d}t - I(\alpha, P)\right| < \varepsilon$$

#### Resolução

Primeiro consideremos que

$$I(\alpha, P) = \sum_{i=0}^{n-1} \left| \int_{t_i}^{t_{i+1}} \alpha'(t) \mathrm{d}t \right| \leq \sum_{i=0}^{n-1} \int_{t_i}^{t_{i+1}} |\alpha'(t)| \mathrm{d}t = \int_a^b |\alpha'(t)| \mathrm{d}t \tag{0}$$

Como $\alpha'$ é contínua no intervalo compacto $\[a, b\]$, ela é uniformemente contínua. Isto significa que, dado $\varepsilon > 0$, existe $\delta > 0$ tal que

$$|\alpha'(s) - \alpha'(t)| < \varepsilon$$

sempre que $|s - t| < \delta$. Em particular, se $|P| < \delta$ e $t_i < k < t_{i+1}$

$$|\alpha'(k)| \leq |\alpha'(t_{i+1})| + \varepsilon$$

daí que

$$\int_{t_i}^{t_{i+1}} |\alpha'(t)| \mathrm{d}t \leq |\alpha'(t_{i+1})|(t_{i+1} - t_i) + \varepsilon (t_{i+1} - t_i)$$

$$= \int_{t_i}^{t_{i+1}} |\alpha'(t) + \alpha'(t_{i+1}) - \alpha'(t)| \mathrm{d}t + \varepsilon (t_{i+1} - t_i)$$

$$\leq \left|\int_{t_i}^{t_{i+1}} \alpha'(t) \mathrm{d}t \right| + \int_{t_i}^{t_{i+1}} |\alpha'(t_{i+1}) - \alpha'(t)| \mathrm{d}t + \varepsilon (t_{i+1} - t_i)$$
$$\leq \left|\int_{t_i}^{t_{i+1}} \alpha'(t) \mathrm{d}t \right| + 2 \varepsilon (t_{i+1} - t_i)$$

ou seja

$$\int_{t_i}^{t_{i+1}} |\alpha'(t)| \mathrm{d}t \leq \left|\int_{t_i}^{t_{i+1}} \alpha'(t) \mathrm{d}t \right| + 2 \varepsilon (t_{i+1} - t_i)$$

$$\sum_{i=0}^{n-1} \int_{t_i}^{t_{i+1}} |\alpha'(t)| \mathrm{d}t \leq \sum_{i=0}^{n-1}\left|\int_{t_i}^{t_{i+1}} \alpha'(t) \mathrm{d}t \right| + 2 \varepsilon (t_{i+1} - t_i)$$

$$\int_a^b |\alpha'(t)| \mathrm{d}t \leq I(\alpha, P) + 2 \varepsilon (b - a)$$

por fim, juntando $(0)$ e a linha de cima

$$0 \leq \int_a^b |\alpha'(t)| \mathrm{d}t - I(\alpha, P) \leq 2 \varepsilon (b - a)$$

como o $\varepsilon$ é genérico, isso conclui a demonstração

### Questão 9 🖋️

**a)** Seja $\alpha: I \rightarrow R^3$ uma curva de classe $C^0$. Use a aproximação de polígonos descrita no Exercício 8 para dar uma definição razoável do comprimento de arco de $\alpha$.

#### Resolução

No caso $C^0$, não faz sentido falar em integrar a derivada, ela pode não existir. Mas continua fazendo todo sentido falar no comprimento da poligonal inscrita $I(\alpha, P)$. Assim seria bem razoável definir o comprimento de $\alpha$ como

$$\lim_{|P| \rightarrow 0} I(\alpha, P)$$

**b)** (Uma curva não-retificável) O exemplo a seguir mostra que, com qualquer definição razoável, o comprimento de uma curva pode ser ilimitado. Seja $\alpha: \[0, 1\] \rightarrow R^2$ dado como $\alpha(t) = (t, t \mathrm{sin}(\pi/t))$ se $t \neq 0$, e $\alpha(0) = (0, 0)$. Mostre, geometricamente que o comprimento de arco da porção da curva correspondendo a $1/(n+1) \leq t \leq 1/n$ é pelo menos $2/\left(n+\frac{1}{2}\right)$. Use isso para mostrar que o comprimento da curva no intevalo $1/N \leq t \leq 1$ é maior que $2 \sum_{n=1}^N 1/(n+1)$ e portanto que ele tende a infinito conforme $N \rightarrow \infty$.

Usaremos a poligonal que passa pelos pontos

$$P_0 = (1/(n+1), 0)$$
$$P_1 = (1/(n+1/2), 1/(n+1/2)$$
$$P_2 = (1/n, 0)$$

para conseguir a nossa cota inferior de comprimento no intervalo. Ficaria

$$ |P_1 - P_0| + |P_1 - P_2| \leq \frac{2}{n + 1/2} $$

e, de fato, usando essa estimativa

$$\int_{1/N}^1 |\alpha'(t)|\mathrm{d}t = \sum_{k = 1}^{N-1} \int_{1/(k+1)}^{1/k} |\alpha'(t)| \mathrm{d}t \leq \sum_{k = 1}^{N-1} \frac{2}{n + 1/2}$$

A série da direita pode ser comparada com a série harmônica

$$\sum_{k = 1}^{\infty} \frac{2}{n + 1/2} \geq \sum_{k = 1}^{\infty} \frac{1}{n} = +\infty$$

A curva não é retificável.

### Questão 10 🖋️

(Linhas retas como as mais curtas) Seja $\alpha: I \rightarrow R^3$ uma curva parametrizada. Seja $\[a, b\] \subset I$ e fixe $\alpha(a) = p$, $\alpha(b) = q$.

**a)** Mostre que, para qualquer vetor constante $v$, com $|v| = 1$,

$$(q - p) \cdot v = \int_a^b \alpha'(t) \cdot v \mathrm{d}t \leq \int_a^b |\alpha'(t)| \mathrm{d}t$$

#### Resolução

Pelo teorema fundamental do cálculo

$$q - p = \int_a^b \alpha'(t) \mathrm{d}t$$

tirando o produto interno de ambos os lados

$$\langle q - p, v \rangle = \left\langle \int_a^b \alpha'(t) \mathrm{d}t, v \right\rangle$$

pela linearidade da integral

$$\langle q - p, v \rangle = \int_a^b \left\langle \alpha'(t), v \right\rangle \mathrm{d}t $$

para fechar, pela desigualdade de cauchy-schwarz

$$\int_a^b \left\langle \alpha'(t), v \right\rangle \mathrm{d}t \leq \int_a^b \| \alpha'(t)\| \cdot \| v \| \mathrm{d}t = \int_a^b \| \alpha'(t)\| \mathrm{d}t$$

**b)** Fixe

$$v = \frac{q-p}{|q-p|}$$

e mostre que

$$|\alpha(b) - \alpha(a)| \leq \int_a^b |\alpha'(t)| \mathrm{d}t$$

Isto é, que a curva de menor comprimento ligando $\alpha(a)$ e $\alpha(b)$ é a linha reta ligando esses pontos.

#### Resolução

Como $v$ é unitário, vale a identidade da letra anterior. Substituindo

$$\left\langle \alpha(b) - \alpha(a), \frac{\alpha(b)-\alpha(a)}{|\alpha(b)-\alpha(a)|} \right\rangle \leq \int_a^b \| \alpha'(t)\| \mathrm{d}t$$

$$|\alpha(b)-\alpha(a)| \leq \int_a^b \| \alpha'(t)\| \mathrm{d}t$$

## Capítulo 1 — Seção 5

### Questão 4 🖋️

Assuma que todas as normais de uma curva parametrizada passam por um ponto fixado, prove que a curva está contida em um círculo.

#### Resolução

Sem perda de generalidade, vamos assumir que o ponto fixado é a origem, do contrário poderíamos aplicar um movimento rígido para movimentar o ponto para origem. Dizer que as normais passam pela origem é a mesma coisa que dizer que o vetor posição e o vetor tangente são ortogonais. Então:

$$ \langle \alpha(t), \alpha'(t) \rangle = 0$$

Sabendo dessa identidade, vamos analizar a derivada do quadrado da norma do vetor posição

$$\frac{\mathrm{d}}{\mathrm{d}t} \langle \alpha(t), \alpha(t) \rangle$$

$$\langle \alpha(t), \alpha'(t) \rangle + \langle \alpha'(t), \alpha(t) \rangle$$

$$0$$

Ahá! Então a derivada é zero. Daí concluímos que a norma é constante e que a curva está contida no círculo.

### Questão 6 🖋️

Uma translação por um vetor $v$ em $R^3$ é uma aplicação $A: R^3 \rightarrow R^3$ que é dado por $A(p) = p + v$, $p \in R^3$. Uma aplicação linear $\rho : R^3 \rightarrow R^3$ é uma _transformação ortogonal_ quando $\rho u \cdot \rho v = u \cdot v$ para todos os vetores $u,\ v \in R^3$. Um _movimento rígido_ em $R^3$ é o resultado de compor uma translação com uma transformação ortogonal com determinante positivo (esta última condição é incluída porque esperamos que movimentos rígidos preservem orientações).

**a)** Demonstre que a norma de um vetor e o ângulo $\theta$ entre dois vetores, $0 \leq \theta \leq \pi$, são invariantes sob transformações ortogonais com determinante positivo.

#### Resolução

Seja $u \in R^3$, vamos investigar $\| \rho(u) \|$:

$$\| \rho(u) \|$$

$$\sqrt{\langle \rho(u), \rho(u) \rangle}$$

$$\sqrt{\langle u, u \rangle}$$

$$\| u \|$$

Agora sejam $u,\ v \in R^3$, o ângulo $\theta$ entre $\rho(u)$ e $\rho(v)$ é:

$$\theta = \mathrm{arccos}\left(\frac{\langle \rho(u), \rho(v) \rangle}{\| \rho(u) \| \cdot \| \rho(v) \|}\right)$$

simplificando

$$\theta = \mathrm{arccos}\left(\frac{\langle u, v \rangle}{\| u \| \cdot \| v \|}\right)$$

que é o mesmo que o ângulo entre $u$ e $v$.

**b)** Mostre que o produto vetorial de dois vetores é invariante sob transformações ortogonais com determinante positivo. Essa afirmação ainda é válida se removermos a condição do determinante?

#### Resolução

Essa é mais complicada. A ortogonalidade da transformação, por si só, não é o bastante para determinar qual o sentido do produto vetorial. Para conseguir usar a hipótese do determinante efetivamente, o que me deixou surpreso, fica mais fácil considerar o caso mais geral. Primeiro considere que

$$ \langle u, v \times w \rangle = \mathrm{det}(u, v, w)$$

onde $\mathrm{det}(u, v, w)$ é o determinante da matriz que tem linhas $u$, $v$ e $w$.

$$ \mathrm{det}(A)\langle u, v \times w \rangle = \mathrm{det}(A)\mathrm{det}(u, v, w) $$

$$ \langle u, \mathrm{det}(A) (v \times w) \rangle = \mathrm{det}(A)\mathrm{det}(u, v, w) $$

$$ \langle u, \mathrm{det}(A) (v \times w) \rangle = \mathrm{det}(Au, Av, Aw) $$

$$ \langle u, \mathrm{det}(A) (v \times w) \rangle = \langle Au, Av \times Aw \rangle $$

$$ \langle u, \mathrm{det}(A) (v \times w) \rangle = \langle u, A^T (Av \times Aw) \rangle $$

como esta identidade vale para qualquer escolha de $u$, os dois fatores do produto devem ser iguais.

$$\mathrm{det}(A) (v \times w) = A^T (Av \times Aw)$$

no belíssimo caso em que $A^T$ é invertível, isso é equivalente a

$$\mathrm{det}(A) (A^T)^{-1} (v \times w) = Av \times Aw$$

especializando $A = \rho$

$$\mathrm{det}(\rho) (\rho^T)^{-1} (v \times w) = \rho(v) \times \rho(w)$$

$$ \rho (v \times w) = \rho(v) \times \rho(w) $$

**c)** Mostre que o comprimento de arco, a curvatora e a torção de uma curva parametrizada são (sempre que definidos) invariantes sob movimentos rígidos.

Usaremos as identidades que mostramos e as identidades que mostraremos no exercício 12 para demonstrar esta questão.

Comprimento de arco:

$$\int_a^b |(\rho \circ \alpha)'(t)| \mathrm{d}t$$

$$\int_a^b |\rho \cdot \alpha'(t)| \mathrm{d}t$$

$$\int_a^b |\alpha'(t)| \mathrm{d}t$$

Curvatura:

$$\frac{|(\rho \circ \alpha)' \wedge (\rho \circ \alpha)''|}{|\rho \circ \alpha'|^3}$$

$$\frac{|\rho \cdot \alpha' \wedge \rho \cdot \alpha''|}{|\rho \cdot \alpha'|^3}$$

$$\frac{|\rho \cdot (\alpha' \wedge \alpha'')|}{|\rho \cdot \alpha'|^3}$$

$$\frac{|\alpha' \wedge \alpha''|}{|\alpha'|^3}$$

Torção:

$$-\frac{((\rho \circ \alpha)' \wedge (\rho \circ \alpha)'') \cdot (\rho \circ \alpha)'''}{|(\rho \circ \alpha) \wedge (\rho \circ \alpha)''|^2}$$

$$-\frac{(\rho \cdot \alpha' \wedge \rho \cdot \alpha'') \cdot \rho \cdot \alpha'''}{|\rho \cdot \alpha \wedge \rho \cdot \alpha''|^2}$$

$$-\frac{(\rho \cdot (\alpha' \wedge \alpha'')) \cdot \rho \cdot \alpha'''}{|\rho \cdot (\alpha \wedge \alpha'')|^2}$$

$$-\frac{(\alpha' \wedge \alpha'') \cdot \alpha'''}{|\alpha \wedge \alpha''|^2}$$

### Questão 12

Seja $\alpha: I \rightarrow R^3$ uma curva regular parametrizada (não necessariamente por comprimento de arco) e seja $\beta: J \rightarrow R^3$ uma parametrização de $\alpha(I)$ pelo comprimento de arco $s = s(t)$, medida de $t_0 \in I$s. Seja $t = t(s)$ a função inversa de $s$ e fixe $\mathrm{d}\alpha/\mathrm{d}t = \alpha'$, $\mathrm{d}^2\alpha/\mathrm{d}t^2 = \alpha''$, etc. Prove que

**a)** $\mathrm{d}t/\mathrm{d}s = 1/|\alpha'|$, $\mathrm{d}^2t/\mathrm{d}s^2 = -(\alpha'\cdot \alpha''/|\alpha'|^4)$.

**b)** A curvatora de $\alpha$ em $t \in I$ é

$$k(t) = \frac{|\alpha'\wedge \alpha''|}{|\alpha'|^3}$$

**c)** A torção de $\alpha$ em $t \in I$ é

$$\tau(t) = - \frac{(\alpha' \wedge \alpha'') \cdot \alpha'''}{|\alpha \wedge \alpha''|^2}$$

**d)** Se $\alpha: I \rightarrow R^2$ é uma curva plana $\alpha(t) = (x(t), y(t))$, a curvatura com sinal de $\alpha$ no $t$ é

$$k(t) = \frac{x'y'' - x'' y'}{\left( (x')^2 + (y')^2 \right)^{3/2}}$$

## Capítulo 2 — Seção 2

### Questão 16 🖋️

Uma forma de definir um sistema de coordenadas para a esfera $S^2$, dada por $x^2 + y^2 + (z-1)^2 = 1$$ é considerar a chamada _projeção estereográfica_ $\pi: S^2 \setminus \{N\} \rightarrow R^2$ que carrega um ponto $p = (x, y, z)$ da esfera $S^2$ menos o polo norte $N = (0, 0, 2)$ na intersecção com o plano $xy$ com a linha reta que conecta $N$ a $p$. Seja $(u, v) = \pi(x, y, z)$, onde $(x, y, z) \in S^2 \setminus \{N\}$ e $(u, v)$ pertence ao plano $xy$.

**a)** Mostre que $\pi^{-1}: R^2 \rightarrow S^2$ é dada por

$$\begin{cases}
x = \frac{4u}{u^2 + v^2 + 4} \\\\
y = \frac{4v}{u^2 + v^2 + 4} \\\\
z = \frac{2(u^2 + v^2)}{u^2 + v^2 + 4} \\\\
\end{cases}$$

#### Resolução

Esta ilustração aqui ficou bonitinha, mas não vamos precisar dela

{{< rawhtml >}}

<iframe src="https://www.geogebra.org/calculator/au8rdxte?embed" width="544" height="600" allowfullscreen style="border: 1px solid #e4e4e4;border-radius: 4px;" frameborder="0"></iframe>

{{< /rawhtml >}}

Para verificar se o ponto está ou não na esfera, vamos calcular

$$x^2 + y^2 + (z - 1)^2$$

e verificar se isso dá $1$

$$\left(\frac{4u}{u^2 + v^2 + 4}\right)^2 + \left(\frac{4v}{u^2 + v^2 + 4}\right)^2 + \left(\frac{2(u^2 + v^2)}{u^2 + v^2 + 4} - 1\right)^2$$

$$\frac{16u^2 + 16v^2 + (u^2 + v^2 - 4)^2}{(u^2 + v^2 + 4)^2}$$

$$\frac{16u^2 + 16v^2 + (u^2 + v^2 - 4)^2}{(u^2 + v^2 + 4)^2}$$

$$\frac{16u^2 + 16v^2 + u^4 + v^4 + 2u^2v^2 - 8u^2 - 8v^2 + 16}{(u^2 + v^2 + 4)^2}$$

$$\frac{8u^2 + 8v^2 + u^4 + v^4 + 2u^2v^2 + 16}{(u^2 + v^2 + 4)^2}$$

$$1$$

Bacana, então o ponto está na esfera. Agora resta verificar se $D = (0, 0, 4)$, $E = (x, y, z)$ e $C = (u, v, 0)$ são colineares. Se forem não resta dúvida que essa é a expressão correta para $\pi^{-1}$. De fato

$$C - D = (u, v, -4)$$

e

$$E - D = \left(\frac{4}{u^2 + v^2 + 4}u, \frac{4}{u^2 + v^2 + 4}v, \frac{4}{u^2 + v^2 + 4}\cdot (-4)\right)$$

**b)** Mostre que é possível, usando projeção estereográfica, cobrir a esfera com duas vizinhanças coordenadas.

#### Resolução

Se você definir a transformação afim $\varphi(x, y, z) = (x, y, 2 - z)$, a composição $\varphi \circ \pi^{-1}$ também parametriza outra vizinhança da esfera. Em particular $\varphi \circ \pi^{-1} (0, 0) = (0, 0, 4)$, que era o único ponto que tinha ficado faltando na parametrização anterior.

### Questão 17 🖋️

Defina uma curva regular analogamente a uma superfície regular. Prove que

#### Resolução

Um subconjunto $C \subset R^3$ é uma _curva regular_ se, para todo $p \in C$, existir uma vizinhança $V$ em $R^3$ e uma aplicação $\mathbf{x}: I \rightarrow V \cap C$ de um _intervalo aberto_ $I \subset R$ em $V \cap C \subset R^3$ tal que

1. $\mathbf{x}$ é diferenciável
2. $\mathbf{x}$ é homeomorfismo
3. para todo $t \in I$ temos $\mathbf{x}' \neq 0$

**a)** A imagem inversa de um valor regular de uma função diferenciável

$$f: U \subset R^2 \rightarrow R$$

é uma curva plana regular. Dê um exemplo de tal curva que não é conexa.

#### Resolução

Suponha que $u \in R$ é um valor regular de $f$ e seja $p = (x_0, y_0)$ um ponto de $f^{-1}(p)$. Sabemos que $f'(u) \neq 0$, então alguma das coordenadas dessa derivada seria diferente de $0$. Sem perda de generalizada podemos assumir que é o $y$. Vamos definir uma $F : R^2 \rightarrow R^2$ tal que $F(x, y) = (x, f(x, y))$. A derivada de $F$ é dada por
$$\mathrm{d}F_p =
\begin{pmatrix}
1 & 0 \\\\
f_x & f_y \\\\
\end{pmatrix}$$

Como $f_y \neq 0$ por hipótese, esse determinante é diferente de $0$. Assim podemos aplicar o teorema da função inversa para obter uma $F^{-1}$ numa vizinhança de $p$. Em particular, em $f^{-1}(u)$ podemos definir a função $\varphi: x \mapsto F^{-1}(x, u)$ que vai parametrizar os pontos da vizinhança em função do $x$.

Um exemplo de curva regular que não é conexa é $y^2 - x^2 = -1$, dá uma hipérbole. Ela possui os pontos $(1, 0)$ e $(-1, 0)$, mas não possui nenhum ponto com $x \in (-1, 1)$

**b)** A imagem inversa de um valor regular de uma aplicação diferenciável

$$F: U \subset R^3 \rightarrow R^2$$

é uma curva regular em R^3. Mostre a relação entre esta proposição e a maneira clássica de definir a curva em $R^3$ como uma intersecção de duas superfícies.

#### Resolução

A ideia é bem parecida com a da questão anterior, mas dessa vez vamos definir a função $G(x, y, z) = (x, F_1(x, y, z), F_2(x, y, z))$ para aplicarmos o teorema da função inversa. Feito isso a função $\varphi(x) = G^{-1}(x, p_1, p_2)$ irá parametrizar os pontos da curva.

A analogia vem do fato de que, se temos $p = (p_1, p_2)$ um valor regular de $F$, definirmos $F_1 = \pi_1 \circ F$ e $F_2 = \pi_2 \circ F$, então $p_1$ é um valor regular de $F_1$ e $p_2$ é um valor regular de $F_2$. Logo $F_1^{-1}(p_1)$ e $F_2^{-1}(p_2)$ são superfícies regulares, e a intersecção delas é a curva regular $F^{-1}(p)$.

**c)** O conjunto $C = \{(x, y) \in R^2;\ x^2 = y^3\}$ não é uma curva regular.

#### Resolução

Suponha que tivéssemos uma $\varphi: (-\varepsilon, \varepsilon) \rightarrow R^2$ que parametrizasse uma vizinhança do $0$ de forma que $\varphi(0) = (0, 0)$ e

$$t^2 = \varphi(t)^3$$

derivando ambos os lados duas vezes

$$2 \cdot t = 3 \cdot \varphi(t)^2 \varphi'(t)$$

$$2 = 3 \cdot (2\varphi(t) \varphi'(t)^2 + \varphi(t)^2 \varphi''(t))$$
$$2 = 3 \varphi(t) \cdot (2\varphi'(t)^2 + \varphi(t) \varphi''(t))$$

mas $\varphi(0) = 0$, absurdo. Daí que a curva não pode ser regular.

## Capítulo 2 - Seção 3

### Questão 6

Prove que a definição de aplicação diferenciável entre superfícies não depende das parametrizações escolhidas.
