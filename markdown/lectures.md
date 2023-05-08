---
title: Lectures
toc: false
---

## Schedule

---

- Week 1: 1/10 - 1/12
  - T: Introduction to the course
  - R: Class was canceled.

---

- Week 2: 1/17 - 1/19
  - T: [It Begins!](https://youtu.be/vs1iQWPDWJ0)
    - Topics: Basic design of PLs.
    - Read: Chapter 1
  - R: [Names, Functions, Types](https://youtu.be/3Dc-RZU_keQ) 
    - Read: Chapter 2
    - Topics: Syntax design of PLs, basic functions and types in OCaml.
    
---

- Week 3: 1/24 - 1/26
  - T: [Recursive Functions and their Evaluation](https://youtu.be/BgpwGi_NsPo)
    - Topics: Evaluation of recursive functions using activation records.
    - Read: Chapter 2
  - R: [Performance and Optimization of Recursive Functions](https://youtu.be/pPyWuVuyOO8)
    - Topics: tail call optimization, which PLs support it, and which don't.
    - Read: Chapter 2
  - Homework 1
  
---

- Week 4: 1/23 - 2/2
  - T: [Algebraic Datatypes: A PL Modern Marvel](https://youtu.be/__00uF4tjHI)
    - Topics: ADTs, pattern matching
    - Read: Chapter 10
  - R: [Functional Programming: A Brief Introduction](https://youtu.be/r1sEN-Mi5Yc)
    - Topics: lambda-abstractions, higher-order functions, combinators
  
---

- Week 5: 2/7 - 2/9
  - T: [Functional Programming: A Brief Introduction](https://youtu.be/r1sEN-Mi5Yc)
    - Topics: lambda-abstractions, higher-order functions, combinators
  - R: [Concrete Syntax: The UI for PLs](https://youtu.be/lsGGa0XTzKc)
    - Topics: concrete syntax, abstract syntax, parsing, context-free grammars, ambiguity, parse trees
  
---

- Week 6: 2/14 - 2/16
  - T: [Inductive Definitions: Inference Rules, Deductions, Logic Programming](https://youtu.be/FPJlV0jNFmQ)
    - Topics: The tool we use to specify algorithms used by a PL, and we also introduce Logic Programming.
  - R: [Abstract Syntax](https://youtu.be/tdmBzqixuNk)
    - Topics: Internal representation of a PL by a compiler.    
  
---

- Week 7: 2/21 - 2/23
  - T: [Static and Dynamic Semantics: Analysis and Evaluation of Programs](https://youtu.be/u9pHbxNvzrQ)
    - Topics: Type checking and running programs.
  - R: Introducing a small PL: miniOCaml
    - Topics: miniOCaml is a small PL we will define and implement together.
  - Homework 2: [PDF](includes/hwk/2/hwk2.pdf)
    
---

- Week 8: Midterm: 2/28 - 3/2
  - T: Midterm Exam.
  - R: Midterm Exam.
  - Midterm: [PDF](includes/hwk/midterm.pdf)
  
---

- Week 9: 3/7 - 3/9
  - T: Introducing a small PL: miniOCaml
    - Topics: miniOCaml is a small PL we will define and implement together.
  - R: Spring Pause (no class)  

---

- Week 10: 3/14 - 3/16
  - T: Type Safety: Well Typed Programs Don't Go Wrong!
    - Topics: A very important property of a PL.
  - R: Abstract Machines
    - Topics: Specifying and implementing the evaluation programs.  We will define an abstract machine for miniOCaml.
    
  
---

- Week 11: 3/21 - 3/23
  - T: Adding new structure to a PL.
    - Topics: We will discuss how adding new structures to a PL is
      done and how it ripples through the design.  As an example we
      will add some new types to miniOCaml.
  - R: Progress: Characterizing the values of a PL
    - Topics: An important property regarding evaluation of programs.
    
---

- Week 12: 3/28 - 3/30
  - T: Parametric Polymorphism (Generics)
    - Topics: The definition of polymorphism or commonly called
      generics will be discussed. We will add polymorphism to
      miniOCaml as an example. 
  - R: Data Abstraction: The first step to object orientation.
    - Topics: The use of existential types to hide data in a type safe
      way is discussed.  We will add existential types to miniOCaml as
      an example.
    
---

- Week 13: 4/4 - 4/6
  - T: Spring Break (no class)
  - T: Spring Break (no class)
  
---

- Week 14: 4/11 - 4/13
  - T: Organizing Programs using Records: The second step to object orientation.
    - Topics: We move a bit closer to OOP by introducing records.  A
      simple way to organize the structure of programs and data.  We
      will add records to miniOCaml as an example.       
  - R: Mutable Storage: State is the third step to object orientation.
    - Topics: Two types of mutable storage designs are discussed: the
      imperative style where types do not track effects, but the
      evaluation rules have to track storage, and the type-based
      design were types track all effects, but the evaluation remains
      pure.  We add imperative style effects to miniOCaml as an
      example, and show that the other style can also be used in
      miniOCaml.
  - Homework 3: [PDF](includes/hwk/3/hwk.pdf ) 

---

- Week 15: 4/18 - 4/20
  - T: Object Orientation: Part I
    - Topics: We show that the combination of data abstract, records,
      and mutable storage results in the ability to define classes and
      objects.            
  - R: Object Orientation: Part II
    - Topics: We add subtyping to the mix to gain a surprising amount
      of power and expressivity for object-oriented programming.  We
      add subtyping to MiniOCaml as an example.

---

- Week 16: 4/25 - 4/27
  - T: Storage Management and Garbage Collection
    - Topics: We discuss two important parts of many modern
      programming languages: storage management and garbage
collection.

  - R: Evaluation Orders and Futures
    - Topics: We discuss the various evaluation orders, introduce
      call-by-need, and then futures.  We show how we would modify
miniOCaml to support call-by-need.

---

- Week 17: 5/2 - 5/4
  - T: Resource Typing: A new approach for catching common bugs.
    - Topics: We talk about how advances in type systems can be used
      to catch some of the most common programmer mistakes. These have
      lead to new languages like Rust, Swift, and new additions to
      Java Script. We add resource typing to miniOCaml as an example. 
  - R: Reading Day (no class)
  
---

- Final Exam: Take Home Exam
  - 5/4: Final Exam Released
  - 5/9: Final Exam Due
  - Final: [PDF](includes/hwk/final.pdf)

