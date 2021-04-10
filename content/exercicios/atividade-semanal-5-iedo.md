---
title: "Atividade Semanal 3 de IEDO"
date: 2021-03-15T23:43:00-03:00
slug: ""
description: ""
keywords: []
draft: false
tags: [matematica, algebra linear]
math: true
toc: false
---
**i)** Pelo fato de $f : \mathbb{R}^{n+1} \rightarrow \mathbb{R}^n$, temos que $D(f) = \mathbb{R}^{n+1}$. Se para toda condição inicial $(t_0, u_0) \in \mathbb{R}^{n+1}$ a solução está definida em todo $\mathbb{R}$, então para qualquer escolha de condições iniciais $\omega_{-}(t_0, u_0) = -\infty$ e $\omega_{+}(t_0, u_0) = \infty$. Como a definição de $E$ é

$$E := \left\\{(t, r, x) \in \mathbb{R}^{n+2} : (r, x) \in D(f) \wedge\omega_{-}(t_0, u_0) < t < \omega_{+}(t_0, u_0) \right\\}$$

concluímos que $E = \mathbb{R}^{n+2}$.

**ii)** Suponha que $(s, x) \in \mathbb{R}^{n+1}$ é a condição inicial do problema de Cauchy
$$
\begin{cases}
u'(t) = f(t, u(t)) \\\\
u(s) = x
\end{cases}
$$
com $f$ nas condições do enunciado, e com $\phi_{s, x}$ como sua única solução. Neste caso $\phi_{s, x}$ também é a única solução em todas as condições iniciais $(r, \phi_{s, x}(r))$ com $r \in \mathbb{R}$. O fato de que é uma solução pode ser verificado substituindo a função no problema de Cauchy correspondente. A unicidade vem do enunciado.

Em outras palavras, estamos dizendo que

$$\phi_{r, \phi_{s, x}(r)}(t) = \phi_{s, x}(t)$$

usando a definição de $\Phi$, isso é dizer que

$$\Phi(t, r, \Phi(r, s, x)) = \Phi(t, s, x)$$

como queríamos demonstrar.

**iii)** Algo especial no caso em que $f(r, x) = g(x)$ para todo $(r, x) \in \mathbb{R}^{n+1}$ é que translações de solução também são soluções. Isso é, se $\alpha$ é uma solução para condição inicial $(t_0, u_0)$ então $\beta$ definida como $\beta(t) := \alpha(t - c)$ é uma solução para a condição inicial $(t_0 + c, u_0)$. Em outras palavras, nesse caso
$$\phi_{t_0, u_0}(t - c) := \phi_{t_0+c, u_0}(t)$$
$$\Phi(t, s, u) = \phi_{s, u}(t)$$
$$\phi_{s, u}(t) = \phi_{s+c, u}(t - c)$$

$$\Phi(t, s, u) = \Phi(t-c, s+c, u)$$
usando este fato e a identidade do item **ii)** temos
$$\Phi(t, 0, \Phi(r, 0, x)) = \Phi(t, 0, \Phi(0, r, x))$$
$$= \Phi(t, r, x) = \Phi(t+r, 0, x)$$
como queríamos demonstrar. Engraçado, lembra bastante uma estrutura de semigrupo.
