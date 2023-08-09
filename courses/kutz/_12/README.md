:one::two: [Introduction to Signal Processing: Convergence of Fourier Series (Lecture 12)](https://youtu.be/_RwaqlkpsyA)


```math
\begin{gather}
   \\
   {\color{Green} \mathbf{ Convergence \space of \space Fourier \space series } } \\
    \\
    \\
    x(t) = \sum_{k=-\infty}^{\infty} a_k e^{i k \omega_0 t} \\
    \\
    \\
   a_n = \frac{1}{T} \int_{0}^{T} x(t) e^{-in \omega_0 t} \mathit{dt} \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Green} \mathbf{ Conditions \space of \space Convergence } } \\
    \\
    \\
    \int_{T} | x(t) |^2 \mathit{dt} < \infty \\
    \\
   {\color{Yellow} \text{ Finite energy over one period } } \\
   {\color{Yellow} \text{ (Absolutely integrable ) } } \\
   \\ 
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Green} \mathbf{ Fourier \space Coefficients } } \\
    \\
    \\
    a_n = \frac{1}{T} \int_{0}^{T} x(t) e^{-in \omega_0 t} \mathit{dt}
    \\
    \\
    | a_n | \leq \frac{1}{T} \int_{T} | x(t) e^{-in \omega_0 t} | \mathit{dt} = \frac{1}{T} \int_{T} | x(t) | \mathit{dt} \\
    \\
    \\
    | a_n | \leq \infty \\
    \\
\end{gather}
```

```math
\begin{gather}
   {\color{Green} \mathbf{ Other \space Conditions } } \\
    \\
    \\
   {\color{Cerulean} \text{ Signal x(t) is of bounded variation } } \\
   \\
   {\color{Cerulean} \text{ Only finite number of discontinuities } } \\
   \\ 
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Properties \space of \space Fourier \space series } } \\
    \\
    \\
    x(t) \leftrightarrow a_k \\
   \\ 
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Linearity } } \\
    \\
    \\
    x(t) \leftrightarrow a_k \\
    x(t) \leftrightarrow a_k \\
   \\
   {\color{Yellow} \text{ Then } } \\
   \\
   z(t) = A x(t) + B y(y) \leftrightarrow c_k = A a_k + B b_k
\end{gather}
```


## [:back: ](../#round_pushpin-signal-processing-an-introduction)
