# DSP



# References

[Engineering Classes abbreviated as EnggClasses is to provide the quality education at free of cost, through short length videos, for Engineering Students](https://www.youtube.com/@EnggClasses)

  The main objective of Engineering Classes abbreviated as EnggClasses is to provide the quality education at free of cost, through short length videos, for Engineering Students.
  The different courses covered are:
  Signals and Systems
  Digital Signal Processing
  Microcontroller 8051
  Digital Electronics
  Number Systems
  and many more to come in near future..

- [ ] [:tv: Delta-Sigma Modulator Basics](https://www.youtube.com/watch?v=NrkFd7h6R2Y)
- [ ] [:tv: A lecture on the z Transform](https://www.youtube.com/watch?v=dq7-Bqu8HRA)
- [ ] [Signals: Complex Exponentials](https://www.youtube.com/watch?v=UxR2CMgvtLk&t=53s)

```math
e^{j\omega_0t} \to j = \sqrt{- 1}
``` 

> Difference between a mathematician and an engineer, i represents current then j is used instead

- [ ] [You're viewing icons for v5.15.4](https://fontawesome.com/v5/search?o=r&m=free)
- [ ] [Mermaid JS](https://mermaid.js.org/intro/)
- [ ] [Mermaid Live](https://mermaid.live/)

```mermaid
---
title: Example Git diagram
---
gitGraph
   commit
   commit
   branch develop
   checkout develop
   commit
   commit
   checkout main
   merge develop
   commit
   commit
```

```mermaid
requirementDiagram

    requirement test_req {
    id: 1
    text: the test text.
    risk: high
    verifymethod: test
    }

    functionalRequirement test_req2 {
    id: 1.1
    text: the second test text.
    risk: low
    verifymethod: inspection
    }

    performanceRequirement test_req3 {
    id: 1.2
    text: the third test text.
    risk: medium
    verifymethod: demonstration
    }

    interfaceRequirement test_req4 {
    id: 1.2.1
    text: the fourth test text.
    risk: medium
    verifymethod: analysis
    }

    physicalRequirement test_req5 {
    id: 1.2.2
    text: the fifth test text.
    risk: medium
    verifymethod: analysis
    }

    designConstraint test_req6 {
    id: 1.2.3
    text: the sixth test text.
    risk: medium
    verifymethod: analysis
    }

    element test_entity {
    type: simulation
    }

    element test_entity2 {
    type: word doc
    docRef: reqs/test_entity
    }

    element test_entity3 {
    type: "test suite"
    docRef: github.com/all_the_tests
    }


    test_entity - satisfies -> test_req2
    test_req - traces -> test_req2
    test_req - contains -> test_req3
    test_req3 - contains -> test_req4
    test_req4 - derives -> test_req5
    test_req5 - refines -> test_req6
    test_entity3 - verifies -> test_req5
    test_req <- copies - test_entity2
```
