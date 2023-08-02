:seven: [Introduction to Signal Processing: Continuous LTI Systems (Lecture 7)](https://youtu.be/lmH1UGCtvG8)


$${
\color{Yellow} \mathbf{ Linear \space Time-Invariant \space Systems } 
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
\color{Yellow} \mathbf{ Continuous \space Time \space LTI \space Systems } 
}$$

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ Delta \space Functions } }
\end{gather}
```

<img src=images/calculus-concepts.png width=40% height=40% > </img>

```math
   {\color{Cerulean} \text{ Calculus Concepts } }
```

```math
\begin{gather}
   {\color{Yellow} \text{ Sifting Property } } \\
   \\
    \delta_\Delta(t) =
      \begin{cases}
        \frac{1}{\Delta}   & \quad 0 \leq t < \Delta \\
        0         & \quad \text{ elsewhere }
      \end{cases} \\
    \\
   {\color{Purple} \text{ Then } } \\
    \\
    x(t) = \lim\limits_{\Delta \to 0 } \displaystyle\sum_{k=-\infty}^{\infty} x(k \Delta) \delta_\Delta(t - k \Delta) \Delta
    \\
\end{gather}
```

```math
\begin{gather}
   {\color{Yellow} \text{ Take limit for integral } } \\
    \\
    x(t) = \lim\limits_{\Delta \to 0 } \displaystyle\sum_{k=-\infty}^{\infty} x(k \Delta) \delta_\Delta(t - k \Delta) \Delta \\
    \\
   {\color{Purple} \text{ Then } } \\
    \\
    x(t) = \int_{-\infty}^{\infty} x(\tau) \delta(t - \tau) \mathrm{d}\tau
    \\
\end{gather}
```

| | |
|-|-|
| <img src=images/delta-function-continuous_1.png width='' height='' > </img> | <img src=images/delta-function-continuous_2.png width='' height='' > </img> |

```math
\begin{gather}
   \color{Green} \mathbf{ Discrete \space LTI  } \\
    \\
    y[n] = \displaystyle\sum_{k=-\infty}^{\infty} x[k]h[n - k] \\
    \\
   \color{Yellow} \mathbf{ Continuous \space LTI  } \\
    \\
    y(t) = \int_{-\infty}^{\infty} x(\tau) h_{\tau} (t) \mathrm{d}\tau \\
    \\
    {\color{Cerulean} \text{ Where } h_{\tau} (t) \text{ is the response to } \delta(t - \tau) } \\
\end{gather}
```

```math
\begin{gather}
   \\
   \color{Green} \mathbf{ Time \space Invariance  } \\
    \\
    h_{\tau} (t) = h_0 ( t - \tau ) \to h( t - \tau ) \\
    \\
   \color{Yellow} \mathbf{ Continuous \space LTI  } \\
    \\
    y(t) = \int_{-\infty}^{\infty} x(\tau) h{ t - \tau } \mathrm{d}\tau = x(t) * h(t) \\
\end{gather}
```

