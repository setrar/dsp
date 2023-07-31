:six: [Introduction to Signal Processing: LTI Systems (Lecture 6)](https://youtu.be/x5wtnbIQ0Lk)


$${
\color{Yellow} \mathbf{ Linear Time-Invariant Systems } 
}$$

```math
\begin{gather}
   {\color{Green} \text{ Linearity  } } \\
   {\color{Green} \text{ Time-Invariance } } \\
   \text{   } \\
   {\color{Purple} \text{ Linear Superposition (holds) } }
\end{gather}
```

$${
\color{Yellow} \mathbf{ Discrete \space Time \space LTI \space Systems } 
}$$

```math
\begin{gather}
   \\
   {\color{Purple} \text{ Delta Functions } }
\end{gather}
```

```math
\begin{gather}
    x[-1]\delta[n + 1] =
      \begin{cases}
        x[ -1 ],   & \quad n = -1 \\
        0,         & \quad n \neq -1
      \end{cases} \\
    \\
    x[0]\delta[n ] =
      \begin{cases}
        x[ 0 ],   & \quad n = 0\\
        0,        & \quad n \neq 0
      \end{cases} \\
    \\
    x[1]\delta[n + 1] =
      \begin{cases}
        x[ 1 ],   & \quad n = 1 \\
        0,        & \quad n \neq 1
      \end{cases} \\
    \\
   {\color{Cerulean} \text{ Sifting Property } }
\end{gather}
```

```math
\begin{gather}
    x[n] = ... + x[-3]\delta[n + 3] + x[-2]\delta[n + 2] + x[-1]\delta[n + 1] + x[0]\delta[n] \\
              + x[1]\delta[n + 1] + x[2]\delta[n - 2] + x[3]\delta[n - 3] + ... \\
   \\
   {\color{Cerulean} \text{ Represent any function } }
\end{gather}
```

```math
\begin{gather}
    x[n] = \sum_{k=-\infty}^\infty x[k]\delta[n - k] \\
   \\
   {\color{Cerulean} \text{ General Representation } }
\end{gather}
```

<img src=images/delta_function_graphically.png width='30%' height='30%' > </img>

```math
{\color{Cerulean} \text{ Graphically } }
```

```math
\begin{gather}
   {\color{Cerulean} \text{ Transform } } \\
   \\ 
   y[n] = \sum_{k=\infty}^\infty x[k]h_k[n] \\
   {\color{Cerulean} \text{Where } h_k[n] \text{ is the response to } \boldsymbol{\delta}[ n - k] }
\end{gather}
```

```math

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
y[n] = \sum_{k=-\infty}^\infty x[k]h[ n - k ]
```

:green_book: Eq. (2.39) is commonly called the _[convolution](https://en.wikipedia.org/wiki/Convolution) sum_ of any two sequences


> Graphically showing the kick vs response

```math
h[ n ] \text{ being the Fundamental Response } 
```


| :x: Non Time-Invariant System | :white_check_mark: Time-Invariant System |
|-------------------------------|------------------------------------------------|
| <img src=images/lti-system-non-time-invariant.png width='' height='' > </img> | <img src=images/lti-system-time-invariant.png width='' height='' > </img> |
 
## [:back: ](../#round_pushpin-signal-processing-an-introduction)


