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
   X(t) = \sum a_k \cos \omega_k t + b_k \sin \omega_k t \\
    \\
   {\color{Yellow} \text{ Alternatively  } } \\
    \\
    X(t) = \sum c_k e^{i \omega_k t} \\
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
   {\color{YellowOrange} \mathbf{ LTI \space System  } } \\
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
   {\color{YellowOrange} \mathbf{ LTI \space Eigenfunction  } } \\
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
    \\
    \mathscr{L} e^{st} = H(s) e^{st} \\
    \\
   {\color{Cerulean} \text{ Eigenfunctions: } e^{st} } \\
   {\color{Cerulean} \text{ Eigenvalues: } H(s) } \\
    \\
\end{gather}
```

## [:back: ](../#round_pushpin-signal-processing-an-introduction)
