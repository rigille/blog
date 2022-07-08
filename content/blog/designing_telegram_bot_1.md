---
title: "Designing a Telegram Bot - Part 1"
date: 2022-06-08T12:00:00-03:00
slug: ""
description: "The splitting algorithm"
keywords: [programming]
draft: false
tags: []
math: true
toc: false
---

# Splitting the bill

In the previous post, I said I would like to split the bill proportionally to what each person ordered. What does this mean exactly? I mean that we're going to represent the order as a vector in $\mathbb{Q}^n$ where $n$ is the number of items ordered.

First we want to money, and money is represented by a natural number. Being more precise, the valid amounts of a certain currency are the multiples of the smallest denomination of that currency. For US Dollars and Brazillian Reals, the smallest denomination is 1 cent. For Colombian Pesos, on the other hand, the smallest denomination is 50 Pesos.

