---
layout: post
title: "Go: Concurrency & Scheduler Affinity"
category: Golang
tags: Go进阶 
keywords: "Go: Concurrency & Scheduler Affinity"
description: "Go: Concurrency & Scheduler Affinity"
coverage: golang_concurrency.png
permalink: /go/:title
date: 2020-01-03T16:11:45+08:00
author: "Eric Zhou"
---

Switching a goroutine from an OS thread to another one has a cost and can slow down the application if it occurs too often. However, through time, the Go scheduler has addressed this issue. It now provides affinities between the goroutines and the thread when working concurrently. 
Let’s go back years ago to understand this improvement.

## Original Issue


During the early days of Go, Go 1.0 & 1.1, the language faces degraded performances when running concurrent code with more OS thread, i.e., a higher value of GOMAXPROCS. Let’s start with an example used in the documentation that calculates the prime numbers:

## Affinity in concurrency

Go 1.1 came with the implementation of a new scheduler and the creation of local goroutine queues. This improvement avoids locking the entire scheduler if there are local goroutines and allows them to work on the same OS thread.
Since threads can block on system calls and the number of blocked threads is not limited, Go introduced the notion of processors. A processor P represents a running OS thread and will manage the local goroutines queues. Here is the new schema: