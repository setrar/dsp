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

---

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
    y(t) \leftrightarrow b_k \\
   \\
   {\color{Yellow} \text{ Then } } \\
   \\
   z(t) = A x(t) + B y(t) \leftrightarrow c_k = A a_k + B b_k \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Time \space Shifting } } \\
    \\
    \\
   b_k = \frac{1}{T} \int_{T} x(t - t_0) e^{-ik \omega_0 t} \mathit{dt} \\
   \\ 
   {\color{Yellow} \text{ Then } } \\
   \\
   b_k = e^{-ik \omega_0 t_0} a_k \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Time \space Reversal } } \\
    \\
    \\
   x(t) = \sum_{k=-\infty}^{\infty} a_k e^{ik \omega_0 t} \\
   \\ 
   {\color{Yellow} \text{ Then } } \\
   \\
   x(-t) = \sum_{k=-\infty}^{\infty} a_k e^{-ik \omega_0 t} \\
   \\
   x(-t) \leftrightarrow a_{-k} \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Time \space Scaling } } \\
    \\
    \\
   x(\alpha t) = \sum_{k=-\infty}^{\infty} a_k e^{ik \alpha \omega_0 t} \\
   \\ 
   {\color{Yellow} \text{ Changes fundamental frequency } } \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Multiplication } } \\
    \\
    \\
    x(t) \leftrightarrow a_k \\
    y(t) \leftrightarrow b_k \\
   \\
   {\color{Yellow} \text{ Then } } \\
   \\
   x(t)y(t) \leftrightarrow h_k = \sum_{p=-\infty}^{\infty} a_pb_{k-p} \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Conjugation } } \\
    \\
    \\
    x(t) \leftrightarrow a_k \\
    x^*(t) \leftrightarrow a_{-k}^* \\
   \\
   {\color{Yellow} \text{ Real signals } } \\
   \\
   a_{-k} = a_k^* \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Persevals } } \\
    \\
    \\
    \frac{1}{T} \int_{T} |x(t)|^2 \mathit{dt} = \sum_{k=-\infty}^{\infty} |a_k|^2
   \\
\end{gather}
```


## [:back: ](../#round_pushpin-signal-processing-an-introduction)
