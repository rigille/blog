---
title: "as curvas e as quinas"
date: 2021-02-07T17:43:00-03:00
slug: "as curvas e as quinas"
description: "se é diferenciável não tem quinas, eles disseram."
keywords: [geometria-diferencial]
draft: false
tags: [matematica, geometria-diferencial]
math: true
toc: false
---

o curso de geometria diferencial abre com a definição de uma _curva diferencial parametrizada_, que é um função $f : I \rightarrow \mathbb{R}^n$ onde $I$ é um intervalo aberto, $f$ tem derivadas de todas as ordens e $f'(p) \neq 0$ para todo $p \in I$.

essa definição foi pensada visando excluir as curvas que têm quinas e outras bestas mais temíveis, deixando apenas as curvas sensuais[^1] que saem serpenteando suavemente pelo espaço. para esse fim a última condição parece desnecessária. não é possível que uma curva que tenha derivadas de todas as ordens tenha uma quina, certo? mesmo se a derivada for $0$.

é possível, o primeiro contraexemplo para isso é a função $f : \mathbb{R} \rightarrow \mathbb{R}^2$ tal que $f(t) = (-t^3, t^2)$. ela se parece mais ou menos assim:

{{< rawhtml >}}

<iframe src="https://www.geogebra.org/calculator/ytmthymx?embed" width="544" height="600" allowfullscreen style="padding:10px" frameborder="0"></iframe>

{{< /rawhtml >}}

como a derivada no ponto $(0, 0)$ é nula, a curva consegue fazer essa quina sem perder a diferenciabilidade. mas esse é um tipo especial de quina, que sai na mesma direção que entra[^2]. quando isso acontece ela é bem pontiaguda e é chamada cúspide. será que é possível conseguir uma curva diferenciável com uma quina mais angulosa? como a do gráfico do valor absoluto?

![gráfico valor absoluto](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Absolute_value.svg/800px-Absolute_value.svg.png)

a primeira parametrização que vem a mente é $f(t) = (t, |t|)$, mas ela não tem nem a primeira derivada. spoiler: existe uma parametrização que traça a mesma curva e que tem todas as derivadas, mas se eu a mostrasse agora para você ela pareceria ridiculamente tirada do chapeu. em vez disso, tentaremos chegar nela dando passos razoáveis.

a primeira ideia é a seguinte: se tivermos uma bijeção crescente $\varphi : \mathbb{R} \rightarrow \mathbb{R}$, então $f \circ \varphi$ seria uma outra parametrização da curva. poderíamos calcular a sua derivada aplicando a regra da cadeia[^3]:

$$(f \circ \varphi)' = (f' \circ \varphi) \cdot \varphi'$$

então… se déssemos um jeito de deixar $\varphi'(0) = 0$, teríamos que $f \circ \varphi$ possuiria uma primeira derivada.

um exemplo disso seria se fizéssemos $\varphi(t) = t\cdot|t|$, isso realmente faz com que $f \circ \varphi (t) = (t\cdot|t|, |t\cdot|t||) = (t\cdot|t|, t^2)$ seja uma função derivável. progresso! no entanto não acabamos. a sua derivada é $(f \circ \varphi)'(t) = \left(|t|, t\right)$, a segunda derivada não existe.

a regra da cadeia nos deu a ideia de zerar a primeira derivada, vejamos então o que ela nos diz sobre a segunda.

$$(f \circ \varphi)'' = ((f' \circ \varphi) \cdot \varphi')'$$

usando a regra do produto

$$((f' \circ \varphi) \cdot \varphi')' = (f' \circ \varphi)' \cdot \varphi' + (f' \circ \varphi) \cdot \varphi''$$
$$= f'' \circ \varphi \cdot (\varphi')^2 + (f' \circ \varphi) \cdot \varphi''$$

então precisamos que $\varphi''(0) = \varphi'(0) = 0$ para chegar em uma parametrização derivável duas vezes. pra isso $\varphi(t) = t\cdot|t|^2$ funciona. para conseguir derivar três vezes, provavelmente $\varphi(t) = t\cdot|t|^3$ funciona. além disso $\varphi(t) = t\cdot|t|^n$ deve funcionar para $n$ derivadas.

provavelmente…

talvez se $\varphi^{(i)}(0) = 0$ para todo $0 \leq i \leq n$ poderíamos garantir a existência de $(f \circ \varphi)^{(n)}$, mas a expressão da derivada está começando a ficar fora de controle. existe uma [fórmula](https://en.wikipedia.org/wiki/Fa%C3%A0_di_Bruno%27s_formula) pra $n$-ésima derivada de uma função composta dada pela regra da cadeia. sublime! profunda! dá-me pesadelos só de olhar. felizmente não precisaremos dela, mas precisaremos da [regra geral de leibnitz](https://en.wikipedia.org/wiki/General_Leibniz_rule).

# teorema 0

se $\varphi^{(i)}(0) = 0$ para todo $0 \leq i \leq n$, então $(f \circ \varphi)^{(n)}(0) = 0$.

**prova:** vamos fazer a primeira derivada pela regra da cadeia:

$$(f \circ \varphi)^{(n+1)}(0)$$

$$= ((f \circ \varphi)')^{(n)}(0)$$

$$= ((f' \circ \varphi)\cdot \varphi')^{(n)}(0)$$

agora aplicamos a regra geral de leibnitz

$$= \sum_{k=0}^{n} {n \choose k} (f' \circ \varphi)^{(n-k)}\cdot (\varphi')^{(k)}(0)$$

$$= \sum_{k=0}^{n} {n \choose k} (f' \circ \varphi)^{(n-k)}(0)\cdot (\varphi')^{(k)}(0)$$

por hipótese $(\varphi')^{(k)}(0) = 0$ sempre no somatório, então o resultado dessa soma toda é $0$. $\blacksquare$

em particular, se $\varphi^{(n)}(0)$ fosse $0$ para todo $n$ natural não-nulo, o **teorema 0** poderia ser aplicado em todo $(f \circ \varphi)^{(n)}(0)$ para mostrar que ele é $0$. a função seria infinitamente derivável. agora é só achar uma $\varphi$ adequada.

será que existe tal $\varphi$? tá, existe $\varphi(t) = 0$, mas ela não é uma bijeção crescente $\mathbb{R} \rightarrow \mathbb{R}$ e não traça a curva quando fazemos $f \circ \varphi$. pensar na expansão de taylor da $\varphi$ em torno do $0$ é outro balde de água fria, porque também resulta na função constante $0$.

não grite, não se desespere, o que o teorema de taylor diz é que os polinômios de taylor aproximam a função em torno daquele ponto com erro polinomial. isso não significa que os polinômios convergem para a função dentro de um intervalo. o que a expansão de taylor de $\varphi$ em torno de $0$ realmente está nos dizendo é que $\varphi$ precisa ir para $0$ extremamente rápido, mais rápido que qualquer polinômio. qual é a função menos exótica que cresce mais rápido que qualquer polinômio? a exponencial. além disso, se $f$ explode para $+\infty$ em torno de $0$, então $1/f$ se aproxima muito rápido de $0$. 

baseando-nos nessa ideia, se pegássemos uma função racional, digamos

$$p(x) = \frac{1}{x^2}$$

que explode perto de $0$, poderíamos compô-la com a exponencial e obter

$$\mathrm{exp} \circ p (x) = \mathrm{exp}\left( \frac{1}{x^2} \right)$$

que explode **muito rápido** perto de $0$. agora pegarímos a inversa

$$\frac{1}{\mathrm{exp} \circ p}(x) = \frac{1}{\mathrm{exp}\left(\frac{1}{x^2}\right)} = \mathrm{exp}\left(-\frac{1}{x^2}\right)$$

e temos algo que diminui ridiculamente rápido perto de $0$. será que $\varphi(x) = \mathrm{exp}\left(-\frac{1}{x^2}\right)$ funcionaria então? bem nesse caso a derivada ficaria[^4]

$$\varphi'(x) = \frac{2}{x^3}\cdot\mathrm{exp}\left(-\frac{1}{x^2}\right) = \frac{2}{x^3}\cdot\varphi(x)$$

e deve dar pra mostrar que, no limite pra $0$, isso iria pra $0$. se a gente tivesse isso, essa equação diferencial nos permitiria generalizar.

# teorema 1

para todos $n$ e $m$ naturais e todo $c$ real.

$$\lim_{x \rightarrow 0} \frac{c}{x^m}\cdot\varphi^{(n)}(x) = 0$$

**prova:** faremos a prova por [indução completa](https://en.wikipedia.org/wiki/Mathematical_induction#Complete_(strong)_induction) em $n$. lembrando que assumirei o caso em que $n = 0$ porque não sei prová-lo agora. dito isso suponha que o teorema vale pra todos os números até $n$, faremos $p(x) = \frac{c}{x^m}$ e $q(x) = \frac{2}{x^3}$ — para não carregar a notação — e analisaremos o caso $n+1$:

$$\lim_{x \rightarrow 0} p \cdot \varphi^{(n+1)}(x)$$

$$= \lim_{x \rightarrow 0} p \cdot (\varphi')^{(n)}(x)$$

$$= \lim_{x \rightarrow 0} p \cdot (q\cdot\varphi)^{(n)}(x)$$

aplicando novamente a regra geral de leibnitz e fazendo algumas simplificações.

$$= \sum_{k = 0}^n \lim_{x \rightarrow 0} {n \choose k} \cdot p \cdot q^{(n-k)}(x) \cdot\varphi^{(k)}(x)$$

pela hipótese de indução, o teorema se aplica em todas as parcelas, portanto

$$= \sum_{k = 0}^n 0 = 0$$

o que conclui o teorema. $\blacksquare$

# corolário 2[^5]

para todo $n$ natural

$$\lim_{x \rightarrow 0}\varphi^{(n)}(x) = 0$$

**prova:** aplicando o **teorema 1** com $c = 1$ e $m = 0$. $\blacksquare$

agora deve ser possível passar desse limite para a derivada em si $\varphi^{(n)}(0)$. afinal, se a função é contínua e o limite da $n$-ésima derivada existe, esse limite deve corresponder à derivada, certo? é nisso que acredito.

infelizmente a $\varphi(t) = \mathrm{exp}\left(-\frac{1}{t^2}\right)$ não serve _também_. ela não é crescente! nem bijetora! podemos abrir mão da sobrejetividade, estamos interessados mesmo é no intervalo em torno da origem. agora não dá pra abrir mão de ser crescente. consertaremos isso fazendo

$$\varphi(t) = \mathrm{sgn}(t)\cdot\mathrm{exp}\left(-\frac{1}{t^2}\right)$$

onde $\mathrm{sgn}(t) = \frac{t}{|t|}$ quando $t \neq 0$ e $\mathrm{sgn}(0) = 0$[^6]. efetivamente estamos multiplicando o lado esquerdo da função por $-1$. isso é ok porque $\varphi^{(n)}(0) = 0 \Leftrightarrow -\varphi^{(n)}(0) = 0$.

agora sim, $f \circ \varphi$ é uma curva infinitamente diferenciável que consegue ter uma quina porque a derivada é $0$.

$$.$$

[^1]: cuidado para não confundir com as [formas sensuais](https://www.amazon.com/Sensual-Quadratic-Carus-Mathematical-Monographs/dp/0883850400).

[^2]: admito, essa não é uma descrição muito precisa, talvez olhar para $\frac{f'(t)}{ \Vert f'(t) \Vert }$ seja mais esclarecedor.

[^3]: estamos sendo descuidados aqui. a regra da cadeia assume que $f$ é diferenciável. quando isso não é verdade, realmente há $f$'s tais que $(f \circ \varphi)' (0) \neq 0$ mesmo quando $\varphi'(0) = 0$. um exemplo seria $f(t) = \sqrt[3]{t}$ e $\varphi(t) = t^3$. estou supondo que, por $f$ ser [lipschitz](https://en.wikipedia.org/wiki/Lipschitz_continuity), poderíamos traduzir os raciocínios que faremos com a regra da cadeia em raciocínios com desigualdades, que dariam prova rigorosa de que a derivada é zero.

[^4]: eu totalmente não fiz essa derivada simples no wolframalpha…

[^5]: uso a mesma numeração porque, no fundo, lemas, exemplos, proposições, corolários e teoremas são todos a mesma coisa.

[^6]: é o sinal de $t$.
