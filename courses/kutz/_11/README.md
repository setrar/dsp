:one::one: [Introduction to Signal Processing: Fourier Series (Lecture 11)](https://youtu.be/eXC-_ny9J-Y)

```math
\begin{gather}
   \\
   {\color{YellowGreen} \mathbf{ Fourrier \space series  } } \\
    \\
   {\color{YellowOrange} \mathbf{ Signal \space Representation  } } \\
    \\
\end{gather}
```
|  March 21, 1768 - May 16, 1830 |
|-|
| <img src=images/fourrier.jpeg width='' height='' > </img> |

```math
\begin{gather}
   \\
   {\color{YellowGreen} \mathbf{ Fourrier \space series  } } \\
    \\
    \\
   x(t) = \sum a_k \cos \omega_k t + b_k \sin \omega_k t \\
    \\
   {\color{Yellow} \text{ Alternatively  } } \\
    \\
    x(t) = \sum c_k e^{i \omega_k t} \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ Fourrier \space and \space LTI  } } \\
    \\
    \\
   {\color{Yellow} \text{ Continuous  } } \\
    \\
   e^{st} \to H(s)e^{st} \\
    \\
   {\color{Yellow} \text{ Discrete  } } \\
    \\
   z^n \to H(z)z^n \\
    \\
   {\color{Cerulean} \text{ Exponentials are eigenfunctions of LTI  } } \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{YellowOrange} \mathbf{ LTI \space System: \space Continuous } } \\
    \\
    \\
   y(t) = \int_{-\infty}^{\infty} h(\tau)x(t - \tau) \mathrm{d \tau} \\
    \\
   {\color{Cerulean} \text{ Exponentials  } } \\
    \\
   y(t) = \int_{-\infty}^{\infty} h(\tau)e^{s(t - \tau)} \mathrm{d \tau} \\
    \\
   {\color{Cerulean} \text{ Pull out time  } } \\
    \\
   y(t) = e^{st} \int_{-\infty}^{\infty} h(\tau)e^{st} \mathrm{d \tau} = H(s)e^{st} \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{YellowOrange} \mathbf{ LTI \space Eigenfunction: \space Continuous  } } \\
    \\
    \\
   y(t) = \mathscr{L} x(t) \\
    \\
   {\color{Cerulean} \text{ Operator  } \mathscr{L} } \\
    \\
    y(t) = \mathscr{L} e^{st} \\
    \\
    y(t) = H(s) e^{st} \\
    \\
    \mathscr{L} e^{st} = H(s) e^{st} \\
    \\
   {\color{Cerulean} \text{ Eigenfunctions: } e^{st} } \\
   {\color{Cerulean} \text{ Eigenvalues: } H(s) } \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{YellowOrange} \mathbf{ LTI \space System: \space Discrete  } } \\
    \\
    \\
   x[n] = z^n \\
    \\
   {\color{Cerulean} \text{ Output response  } } \\
    \\
   y[n] = \sum_{k=-\infty}^{\infty} h[k]x[n - k] \\
    \\
   y[n] = \sum_{k=-\infty}^{\infty} h[k]z^{n - k} = z^n \sum_{k=-\infty}^{\infty} h[k]z^{ - k} \\
    \\ 
   \to \quad y[n] = z^n \sum_{k=-\infty}^{\infty} h[k]z^{ - k} \\
    \\ 
   {\color{Cerulean} \text{ Simplify  } } \\
    \\
    y[n] = H(z)z^n \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{YellowOrange} \mathbf{ LTI \space Eigenfunction: \space Discrete  } } \\
    \\
    \\
    \mathscr{L} z^n = H(s) z^n \\
    \\
   {\color{Cerulean} \text{ Eigenfunctions: } z^n } \\
   {\color{Cerulean} \text{ Eigenvalues: } H(s) } \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{YellowGreen} \mathbf{ LTI \space Eigenvalue \space Problem  } } \\
    \\
    \\
   {\color{Yellow} \text{ Multiple signals } } \\
   \\
    x(t) = a_1e^{s_1t} + a_2e^{s_2t} + a_3e^{s_3t} \\
    \\
   {\color{Yellow} \text{ Input-Output } } \\
   \\
    a_1e^{s_1t} \to a_1H(s_1)e^{S_1t} \\
    \\
    a_2e^{s_2t} \to a_2H(s_2)e^{S_2t} \\
    \\
    a_3e^{s_3t} \to a_3H(s_3)e^{S_3t} \\
    \\
   {\color{Yellow} \text{ Input - linear superposition } } \\
   \\
    x(t) = a_1e^{s_1t} + a_2e^{s_2t} + a_3e^{s_3t} \\
    \\
   {\color{Yellow} \text{ Output  } } \\
   \\
   y(t) = a_1H(s_1)e^{S_1t} + a_2H(s_2)e^{S_2t} + a_3H(s_3)e^{S_3t}
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{YellowGreen} \mathbf{ General \space solution: \space Continuous  } } \\
    \\
    \\
   {\color{Yellow} \text{ Input } } \\
   \\
    x(t) = \sum_{k} a_ke^{s_kt} \\
    \\
   {\color{Yellow} \text{ Output  } } \\
   \\
   y(t) = \sum_{k} a_kH(s_k)e^{S_kt}
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{YellowGreen} \mathbf{ General \space solution: \space Discrete  } } \\
    \\
    \\
   {\color{Yellow} \text{ Input } } \\
   \\
    x[n] = \sum_{k} a_kz_k^n \\
    \\
   {\color{Yellow} \text{ Output  } } \\
   \\
   y[n] = \sum_{k} a_kH(z_k)z_k^n
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Cerulean} \mathbf{ Fourier \space and \space Periodicity  } } \\
    \\
    \\
    x(t) = x(t + T) \\
    \\
   {\color{Yellow} \text{ Sinusoids and imaginary exponentials } } \\
   \\
   x(t) = \cos{ (\omega_0 t) } \\
   \\
   x(t) = e^{i \omega_0 t} \\
    \\
   {\color{Purple} \text{ Fundamental period } T = \frac{2\pi}{\omega_0} } \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Cerulean} \mathbf{ Harmonics  } } \\
    \\
    \\
    \phi_k(t) = e^{i k \omega_0 t} = e^{i k (\frac{2\pi}{T}) t}\\
    \\
   {\color{Yellow} \text{ Where } k = 0, \pm 1, \pm 2, \dots } \\
   \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Cerulean} \mathbf{ Fourier \space series  } } \\
    \\
    \\
    x(t) = \sum_{k=-\infty}^{\infty} a_k e^{i k \omega_0 t}\\
    \\
   {\color{Yellow} \text{ All exponentials have period T }  } \\
   \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Cerulean} \mathbf{ Fourier \space series  } } \\
    \\
    \\
    x(t) = \sum_{k=-\infty}^{\infty} a_k e^{i k \omega_0 t}\\
    \\
   {\color{Yellow} \text{ All exponentials have period T }  } \\
   \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ Example } } \\
    \\
    \\
    x(t) = \sum_{k=-3}^{3} a_k e^{i 2 \pi k t} \\
    \\
   {\color{Yellow} \text{ Coefficients }  } \\
   \\
   a_0 = 1, a_{\pm 1} = \frac{1}{4}, a_{\pm 2} = \frac{1}{2}, a_{\pm 3} = \frac{1}{3} \\
   \\
   {\color{Green} \text{ Expansion }  } \\
   \\
   x(t) = 1 + \frac{1}{4} ( e ^{j 2 \pi t} + e ^{- j 2 \pi t}) 

\end{gather}
```


## [:back: ](../#round_pushpin-signal-processing-an-introduction)
