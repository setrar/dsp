:two: [Introduction to Signal Processing: Basic Signals (Lecture 2)](https://youtu.be/ILek2_KoUmw&t=0)

- [ ] Transformations

> Basic Signal Properties and operations

- [ ] Transforming Signals

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

- [ ] Time Shifts

> Continuous - Time
```math
x(t) \to x(t - t_0)
```
> Discrete - Index
```math
x[n] \to x[n - n_0]
```

| Continuous Time Shift | Discrete Time Shift  |
|-------------------------------|------------------------------------------------|
| <img src=images/time-shift-continuous-graphically.png width='' height='' > </img> | <img src=images/time-shift-discrete-graphically.png width='' height='' > </img>  |

> Scaling
```math
x(t) \to x(\alpha t + \beta)
```

```math
| \alpha | < 1 \text { Stretching}
```

```math
| \alpha | > 1 \text { Compressing}
```

|  |  |
|-------------------------------|------------------------------------------------|
| <img src=images/time-shift-scaling-graph.phg width='' height='' > </img> | <img src=images/time-shift-scaling-example-graphically.png width='' height='' > </img>  |

- [ ] Reflection

> Continuous - Time
```math
x(t) \to x(-t)
```
> Discrete - Index
```math
x[n] \to x[-n]
```

| Continuous Reflection | Discrete Reflection  |
|-------------------------------|------------------------------------------------|
| <img src=images/reflection-continuous-graphically.png width='' height='' > </img> | <img src=images/reflection-discrete-graphically.png width='' height='' > </img>  |

<img src=images/compositional-operations-graphically.png width='30%' height='30%' > </img>

- [ ] Periodic Signals

> Continuous - Time
```math
x(t) \to x(t + P)
```
> Discrete - Index
```math
x[n] \to x[n + N]
```

| Continuous Periodic Signal | Discrete Periodic Signal  |
|-------------------------------|------------------------------------------------|
| <img src=images/periodic-continuous-graphically.png width='' height='' > </img> | <img src=images/periodic-discrete-graphically.png width='' height='' > </img>  |

- [ ] Even and Odd Signals and decomposition

* Signals

> Even cos(t)

```math
x(t) = x( -t )
```

```math
x[n] = x[ -n]
```
> Odd sin(t)

```math
x(t) = - x( -t )
```

```math
x[n] = - x[ -n]
```

* Decomposition

> Even cos(t)

```math
\varepsilon v \{ x(t) \} = \frac{1}{2} [ x( t ) + x( -t ) ] 
```

```math
\varepsilon v \{ x[n] \} =
  \begin{cases}
    \frac{1}{2}, n < 0 \\
    1, n = 0 \\
    \frac{1}{2}, n > 0
  \end{cases}
```

> Odd sin(t)

```math
\vartheta d \{ x(t) \} = \frac{1}{2} [ x( t ) - x( -t ) ] 
```

```math
\vartheta d \{ x[n] \} =
  \begin{cases}
    - \frac{1}{2}, n < 0 \\
    0, n = 0 \\
    \frac{1}{2}, n > 0
  \end{cases}
```

| Continuous Decomposition | Discrete Decomposition  |
|-------------------------------|------------------------------------------------|
| <img src=images/even-odd-signal-graphically.png width='' height='' > </img> | <img src=images/even-odd-signal-decomposition-graphically.png width='' height='' > </img>  |


## [:back: ](../#round_pushpin-signal-processing-an-introduction)



