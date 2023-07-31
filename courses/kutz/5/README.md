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
{\color{Purple} \text{ Processing in series } }
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
{\color{Green} \text{ + (Addition of Signals) } }
```


```math
{\color{Purple} \text{ Processing in parallel } }
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
{\color{Purple} \text{ Series and parallel } }
```

---

- [ ] System Properties

$${
\color{Yellow} \mathbf{ Memory } 
}$$

```math
\begin{gather}
    
    y[n] = (2x[n] + x^2[n]) \\
    {\color{Purple} \text{ Memoryless system } } \\
    {\color{Green} \text{ Future only depends on current time } }
\end{gather}
```

```math
\begin{gather}
   y[n] = x[n - 1] \\
   {\color{Purple} \text{ Memory system } } \\
   {\color{Green} \text{ Delay Encodes Memory } }
\end{gather}
```

```math
\begin{gather}
   y[n] = \sum_{k=-\infty}^{n} x[k] \\
   {\color{Purple} \text{ Memory system } } \\
   {\color{Green} \text{ Accumulator/Summer } }
\end{gather}
```


```math
\begin{gather}
   y(t) = \int_{-\infty}^{t} x(\tau)d\tau \\
   {\color{Purple} \text{ Memory system } } \\
   {\color{Green} \text{ Accumulator/Summer } }
\end{gather}
```

$${
\color{Yellow} \mathbf{ Invertible } 
}$$


```math
{\color{Purple} \text{ Distinct Inputs - Distinct Outputs } }
```

```math
\begin{gather}
   {\color{Purple} \text{ Transform } } \quad y(t) = 2x(t) \\
   {\color{Purple} \text{ Invert } } \quad w(t) = \frac{1}{2} y(t)
\end{gather}
```

```math
{\color{Purple} \text{ Invertible Function Examples } }
```

<img src=images/invertible.png width='50%' height='50%' > </img>

```math
{\color{Green} \text{ Non Invertible } }
```

```math
y(t) = 0
```

```math
y(t) = x^2(t)
```

$${
\color{Yellow} \mathbf{ Causality } 
}$$

```math
\begin{gather}
   {\color{Purple} \text{ Signal only depends upon } } \\
   {\color{Purple} \text{ current past past times } }
\end{gather}
```

```math
\begin{gather}
    {\color{Purple} \text{ Memoryless systems } } \\
    {\color{Green} \text{ are causal } }
\end{gather}
```



## [:back: ](../#round_pushpin-signal-processing-an-introduction)

