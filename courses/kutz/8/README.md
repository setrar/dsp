:eight: [Introduction to Signal Processing: LTI System Properties (Lecture 8)](https://youtu.be/V2mz6R4yrwc)


```math
   \color{Green} \mathbf{ LTI \space Summary  } \\
```

---

```math
\begin{gather}
    \\
    y[n] = \displaystyle\sum_{k=-\infty}^{+\infty} x[k]h[n - k] = x[n] * h[n] \quad \mbox  {\color{Green} (a)} \\
    \\
    y(t) = \int_{-\infty}^{+\infty} x(\tau) h( t - \tau) \mathrm{d}\tau = x(t) * h(t) \quad \mbox  {\color{Green} (b)} \\
    \\
\end{gather}
```
---
```math
\begin{gather}
    \\
    {\color{Cerulean} \mbox{ Must know response to delta function } } \\
    \\
    {\color{Green} \text{ Short hand notation of (a.k.a the convolution operation) of : } } \\
    \\
    {\color{Green} \text{ (a) the summation  } \to  } \quad x[n] * h[n]   \\
    \\
    {\color{Green} \text{ (b) the integral  } \to  } \quad x(t) * h(t)  \\
    \\
\end{gather}        
```

```math
\begin{gather}
   \\
   \color{Green} \mathbf{ Example  } \\
    \\
     h[n] =
      \begin{cases}
        1   & \quad n = 0,1 \\
        0   & \quad \text{ otherwise }
      \end{cases} \\
    \\
   \color{Yellow} \mathbf{ Solution  } \\
    \\
    y[n] = x[n] + x[n - 1] \\
\end{gather}
```

---

```math
   \color{Orange} \mathbf{ Properties  } \\
```

```math
\begin{gather}
   \color{Purple} \mathbf{ Commutative  } \\
    \\
    x[n] * h[n] = h[n] * x[n] = \displaystyle\sum_{k=-\infty}^{\infty} h[k]x[n - k] \\
    \\
    x(t) * h(t) = h(t) * x(t) = \int_{-\infty}^{\infty} h(\tau) x( t - \tau) \mathrm{d}\tau  \\
    \\
\end{gather}
```

```math
\begin{gather}
   \color{Purple} \text{ Derivation  } \\
    \\
    x(t) * h(t) = h(t) * x(t) = \int_{-\infty}^{\infty} h(\tau) x( t - \tau) \mathrm{d}\tau  \\
    \\
   \color{Purple} \mathbf{ Let } \quad  \xi = t - \tau, \quad \mathrm{ d } \xi = - \mathrm{ d }\tau \\
    \\
    - \int_{\infty}^{-\infty} h( t - \xi) x (\xi) \mathrm{d}\xi = \int_{-\infty}^{\infty}  x (\xi) h( t - \xi) \mathrm{d}\xi \\
    \\
    = x(t) * h(t) \\
     \\
\end{gather}
```

```math
\begin{gather}
   \color{Purple} \mathbf{ Distributive  } \\
    \\
    x[n] * (h_1[n] + h_2[n]) = x[n] * h_1[n] + x[n] * h_2[n] \\
    \\
    x(t) * (h_1(t) + h_2(t)  = x(t) * h_1(t) + x(t) * h_2(t)  \\
    \\
   \color{Green} \text{ Graphically  }
\end{gather}
```

<img src=images/distributive-property.png width=40% height=40% > </img>

```math
\begin{gather}
   \color{Purple} \mathbf{ Commutative \space and \space Distributive  } \\
    \\
    (x_1[n] + x_2[n]) * h[n] = x_1[n] * h[n] + x_2[n] * h[n] \\
    \\
    (x_1(t) + x_2(t)) * h(t)  = x_1(t) * h(t) + x_2(t) * h(t)  \\
    \\
\end{gather}
```

```math
\begin{gather}
   \color{Purple} \mathbf{ Associative  } \\
    \\
    x[n] * (h_1[n] * h_2[n]) = (x[n] * h_1[n]) * h_2[n] \\
    \\
    x(t) * ((h_1(t) * h_2(t))  = (x(t) * h_1(t)) * h_2(t)  \\
    \\
   \color{Green} \text{ Graphically  }
\end{gather}
```

<img src=images/associative-property.png width=40% height=40% > </img>

```math
\begin{gather}
   \color{Purple} \mathbf{ Memory(less)  } \\
    \\
    h[n] = 0, n \neq 0 \\
    \\
   \color{Green} \text{ This gives  }
    \\
    h[n] = K\delta[n] = h[0]\delta[n]

\end{gather}
```

