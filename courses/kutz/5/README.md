[Introduction to Signal Processing: Properties of Signals (Lecture 5)](https://youtu.be/Gw8eE93OyUY)

---

$${\color{Yellow} \text{ Transforming Signals} }$$

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
stateDiagram-v2
    direction LR
    [*] --> System1 : Input
    System1 --> System2
    System2 --> [*] : Output
```

```math
{\color{Yellow} \text{ Processing in series } }
```

```mermaid
stateDiagram-v2
    direction LR
    [*] --> . : Input
    . --> System1
    . --> System2
    System1 --> +
    System2 --> +
    + --> [*] : Output
```

```math
{\color{Yellow} \text{ Processing in parallel } }
```

```mermaid
stateDiagram-v2
    direction LR
    [*] --> . : Input
    . --> System1
    . --> System3
    System1 --> System2
    System2 --> +
    System3 --> +
    + --> System4
    System4 --> [*] : Output
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
{\color{Purple} \dots \text{ Distinct Inputs - Distinct Outputs } \dots }
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

```math
{\color{Yellow} \text{ Non Invertible } }
```

```math
y(t) = 0
```

```math
y(t) = x^2(t)
```

$${
\color{Green} \mathbf{ 
CAUSALITY \space IS \space SO \space TIRING \space
BUT \space WE \space WILL \space SEE
} 
}$$

```math
{\color{Yellow} \text{ Memoryless systems are causal } }
```



## [:back: ](../#round_pushpin-signal-processing-an-introduction)
