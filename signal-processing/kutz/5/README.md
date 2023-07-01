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
    B --> D[System2]
    C --> E{+}
    D --> E{+}
    E--> |Output| *
```

```math
{\color{Yellow} \text{ Processing in parallel } }
```

```mermaid
flowchart LR
    ` -->|Input| B{.}
    B --> F[System1]
    F --> C[System2]
    B --> D[System3]
    C --> E{+}
    D --> E{+}
    E --> G[System4]
    G --> |Output| *
```

```math
{\color{Yellow} \text{ Series and parallel } }
```

---

- [ ] System Properties

```math
{\color{Yellow} \text{ Memory } }
```

```math
{\color{Purple} \text{ Memory system } }
```

```math
y[n] = x[n - 1]
```

```math
{\color{Green} \text{ Accumulator/Summer } }
```


```math
y[n] = \sum_{k=-\infty}^{n} x[k]
```

```math
y(t) = \int_{-\infty}^{t} x(\tau)d\tau
```

```math
{\color{Yellow} \text{ Invertible } }
```

```math
{\color{Purple} \text{ Distinct Inputs - Distinct Outputs } }
```

```math
{\color{Purple} \text{ Transform } }
```

```math
y(t) = 2x(t)
```

```math
{\color{Purple} \text{ Invert } }
```

```math
w(t) = \frac{1}{2} y(t)
```

<img src=images/invertible.png width='50%' height='50%' > </img>

## [:back: ](../#round_pushpin-signal-processing-an-introduction)

