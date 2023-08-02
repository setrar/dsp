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
   \color{Green} \mathbf{ Eexample  } \\
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
