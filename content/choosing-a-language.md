+++
title = "Choosing a language"
weight = 1
order = 1
date = 2023-07-08
insert_anchor_links = "right"
[taxonomies]
categories = ["Software"]
+++

After setting out to do [constructed mathematics](@/constructed-mathematics.md) we have to deal with mundane details like choosing a language to implement and verify our theorems. There are many proof languages we could use to write math. There are even more programming languages to implement the algorithms. So which should we choose?

Choosing the proof language is perharps the easiest part. Agda, Kind, Lean all seem tempting and have things going for them. But the only system which I know has been used in large-scale software verification projects is [Coq](https://coq.inria.fr/). And besides it also has huge community. Some might even say its a [vibrant ecosystem](https://www.cs.princeton.edu/~appel/papers/ecosystem.pdf). Lots of projects and learning materials, which is really important since this is by far the hardest part of the project. I even found an usable [HTTP specification](https://github.com/liyishuai/coq-http) to work when I start developing a certified HTTP server/client. Not something I would expect from any other language!

Choosing a programming language is wayy harder. One aspect is that we want the software we write to be widely useful. Using a non garbage collected language like Rust, C or Zig is great for this because they can be used in basically any language via Foreign Function Interfaces. Garbage collected languages don't play nicely with each other. Unfortunately Rust and Zig are very unstable and don't have a formal semantics, but I actually plan to use C a little, if only in the cases where good performance is required. The problem with non garbage collected languages is that the size of the proofs is considerably larger.

On the other hand, the garbage collected language I choose should have:

* reasonable performance
* good interoperability with C
* a pure-functional subset
* support for imperative algorithms too
* dynamic-typing
* multithreading
* no stack overflows because of recursion
* proper tail-call optimizations
* small and clean semantics

The only language that I can think of that has all of those is [ChezScheme](https://cisco.github.io/ChezScheme/). Some other proof languages like Idris and the old Kind also compile to ChezScheme, so I could see some interoperability happening. It doesn't have a large community, but in the case of the language for execution we don't care a lot about that. Someone even started to formalize a subset of the [semantics](https://github.com/ianatol/vchez) and verified a pass of the ChezScheme compiler in Coq, which is awesome!
