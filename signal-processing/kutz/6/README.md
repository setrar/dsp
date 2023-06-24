:six: [Introduction to Signal Processing: LTI Systems (Lecture 6)](https://youtu.be/x5wtnbIQ0Lk)

:round_pushpin: Discrete Time LTI Systems

- [ ] Delta Functions

:point_right: Sifting Property 

```math
    x[-1]\delta[n + 1] =
      \begin{cases}
        x[ -1 ],   & \quad n = -1 \\
        0,         & \quad n \neq -1
      \end{cases}
```
```math
    x[0]\delta[n ] =
      \begin{cases}
        x[ 0 ],   & \quad n = 0\\
        0,        & \quad n \neq 0
      \end{cases}
```
```math
    x[1]\delta[n + 1] =
      \begin{cases}
        x[ 1 ],   & \quad n = 1 \\
        0,        & \quad n \neq 1
      \end{cases}
```

> represent any function

```math
x[n] = ... + x[-3]\delta[n + 3] + x[-2]\delta[n + 2] + x[-1]\delta[n + 1] + x[0]\delta[n] + x[1]\delta[n + 1] \\
            + x[2]\delta[n - 2] + x[3]\delta[n - 3] + ...
```

> General Representation

```math
x[n] = \sum_{k=\infty}^\infty x[k]\delta[n - k]
```

> Graphically

<img src=images/delta_function_graphically.png width='30%' height='30%' > </img>

- [ ] Transform

```math
y[n] = \sum_{k=\infty}^\infty x[k]h_k[n]
```

```math
\text{Where } h_k[n] \text{ is the response to } \boldsymbol{\delta}[ n - k]
```

- [ ] Time Invariance

```math
h_k[n] = h_0[ n - k ]
```

```math
h_0[n] = h[ n ]
```


```math
\text{Unit response from } \boldsymbol{\delta}[ n ]
```

- [ ] LTI System

```math
y[n] = \sum_{k=\infty}^\infty x[k]h[ n - k ]
```

> Graphically showing the kick vs response

| Non Time Invariant System | | Time Invariant System |
|---------------------------------------------------------------------------|---------------------------------------------------------------------------|
| <img src=images/lti-system-non-time-invariant.png width='50%' height='50%' > </img> | <img src=images/lti-system-time-invariant.png width='50%' height='50%' > </img> |
 
---

```math
A_{m,n} = 
 \begin{pmatrix}
  a_{1,1} & a_{1,2} & \cdots & a_{1,n} \\
  a_{2,1} & a_{2,2} & \cdots & a_{2,n} \\
  \vdots  & \vdots  & \ddots & \vdots  \\
  a_{m,1} & a_{m,2} & \cdots & a_{m,n} 
 \end{pmatrix}
```


