[Introduction to Signal Processing: Properties of Signals (Lecture 5)](https://youtu.be/Gw8eE93OyUY)

---

```math
{\color{Yellow} \text{ Transforming Signals } }
```


```mermaid
---
title: (a)
---
%%{init: {"flowchart": {"htmlLabels": false}} }%%
flowchart LR
    a("x(t)"):::someclass -->b[Continous-Time \n   System]
    b-->d("y(t)"):::someclass
    classDef someclass fill:#09f
```

```mermaid
---
title: (b)
---
%%{init: {"flowchart": {"htmlLabels": false}} }%%
flowchart LR
    e("x[n]"):::someclass -->f[Discrete-Time \n    System]
    f-->g("y[n]"):::someclass
    classDef someclass fill:#a2f
```

---

```math
{\color{Purple} \text{ System Level Processsing } }
```

```math
{\color{Yellow} \text{ Transforming Signals } }
```

```math
x(t) \to y(t)
```

```math
x[n] \to y[n]
```

---

```math
{\color{Cerulean} \text{ System Level Processsing } }
```

```mermaid
flowchart LR

` -->|Input| B(System1)
B --> C[System2]
C -->|Output| *
```

```math
{\color{Yellow} \text{ Processing in series } }
```

```mermaid
flowchart LR
    ` -->|Input| B{.}
    B --> C[System1]
    B ----> D[System2]
    C --> E{+}
    D --> E{+}
    E--> |Output| *
```

```math
{\color{Yellow} \text{ Processing in parallel } }
```

## [:back: ](../#round_pushpin-signal-processing-an-introduction)

