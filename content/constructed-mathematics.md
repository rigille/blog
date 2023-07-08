+++
title = "Constructed mathematics"
weight = 1
order = 1
date = 2023-06-24
insert_anchor_links = "right"
[taxonomies]
categories = ["Topology"]
+++

Some years ago I learned about the existence of a kind of mathematics called Constructive Mathematics. If you practice math using this style, every proof of existence you write will also provide an algorithm to actually find what you were seeking. And I mean a real algorithm which you can run in your computer and observe the result. Of course this isn't the only reason to appreciate constructive mathematics. Actually, if you look at most repositories of constructive mathematics online, it's generally possible to check the correctness of the proofs with a computer — a nice advance compared with pencil and paper mathematics, which requires a specialist to check — but it's hard or impossible to execute the corresponding algorithms.

Actually the only example I know of constructive math theorem that is actually intended to be ran by lay people is CompCert. It says that programs in the C programming language can be simulated by programs in various Assembly languages. Since the proof is constructive, this means that the author devised a method that, given a C program, calculates the corresponding Assembly code that simulates it. It's a compiler. It can be very useful if you're writing a program that will run in an airplane, a rocket or nuclear reactor.

Does this mean that this is so hard it's only worth it if you're building something that will kill people or lose millions of dollars in case it fails? I don't think so. It's just that doing so would be a bit inconvenient. For example, imagine that you're a programmer. Writing programs in a proof language would mean that you have to proof that your functions don't go on forever, and that's inconvenient. Because of that programmers aren't motivated to develop tooling to support proof languages. Likewise, mathematicians and computer scientists are more interested in proving theorems than developing the tooling to execute and distribute them.

But it so happens that I have a lot of experience with language tooling and build systems, and I think it would be awesome if my theorems could be executed by lay people who just want to get something done. 

Actually I would like to do a little bit more than that. The book where I learned about constructive mathematics is called [Software Foundations](https://softwarefoundations.cis.upenn.edu/). It is at the same time a text that teaches you about Coq and a Coq library. I know some other cases where people turn a codebase into a learning resource, for example [chibicc](https://github.com/rui314/chibicc), and I think it would be very neat if I could turn my libraries in learning resources as well.

Basically I want to be at the intersection of programming, math and teaching. Let's see if I can get there.
