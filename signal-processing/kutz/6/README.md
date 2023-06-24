:six: [Introduction to Signal Processing: LTI Systems (Lecture 6)](https://youtu.be/x5wtnbIQ0Lk)

:round_pushpin: Discrete Time LTI Systems

- [ ] Delta Functions

```math
  \begin{cases}
    x[-1]\delta[n + 1] =
      \begin{cases}
        x[ -1 ],   & \quad n = -1 \\
        0,         & \quad n \neq -1
      \end{cases}
  \end{cases}
  \begin{cases}
    x[0]\delta[n ] =
      \begin{cases}
        x[ 0 ],   & \quad \text{if } n \text{ is even}\\
        0,        & \quad \text{if } n \text{ is odd}
      \end{cases}
  \end{cases}
```


- [ ] Transform

```math
y[n] = \sum_{k=\infty}^\infty x[k]h_k[n]
```



```math
\text{Where } h_k[n] \text{ is the response to } \boldsymbol{\delta}[ n - k]
```


