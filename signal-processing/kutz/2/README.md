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

<img src=images/compositional-operations-graphically.png width='50%' height='50%' > </img>
