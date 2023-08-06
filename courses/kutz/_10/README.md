:one::zero: [Introduction to Signal Processing: Singular Functions (Lecture 10)](https://youtu.be/niz7zIaF0fU)

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ Singularity \space Functions } } \\
    \\
   {\color{Green} \text{ Revisiting Dirac Delta } } \\
    \\
    x(t) = x(t) * \delta(t) = \int_{-\infty}^{\infty} x(\tau) \delta (t - \tau )  \mathrm{d}\tau  \\
    \\
   {\color{Green} \text{ Take } x(t) = \delta (t) } \\
    \\
    \delta(t) = \delta(t) * \delta(t)  \\
    \\
    r_{\Delta} (t) = \delta_{\Delta}(t) * \delta_{\Delta}(t)  \\
    \\
\end{gather}
```

<img src=images/singularity-function.png width=40% height=40% > </img>

```math
   {\color{Green} \mathbf{ Approximates \space short \space pulse } } \\
```

```math
   {\color{Cerulean} \mathbf{ Example : } \frac{dy}{dt} + 2y = x } \\
```


<img src=images/singularity-function-examples.png width=60% height=60% > </img>

```math
   {\color{Cerulean} h(t) = e^{-2t} u(t) \text{ Fundamental Response : }  }
```

<img src=images/singularity-function-h_t.png width=40% height=40% > </img>

```math
   {\color{Green} \text{ Limit as } \Delta \to 0 }
```

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ The \space Unit \space Doublet } } \\
    \\
   {\color{Green} \text{ Output is the derivative } } \\
    \\
    y(t) = \frac{ \mathrm{dx} }{ \mathrm{dt} }  \\
    \\
   {\color{Yellow} \text{ Unit response is the doublet } } \\
    \\
    \frac{ \mathrm{dx} }{ \mathrm{dt} } = x(t) * u_1(t) \\
    \\
   {\color{Green} u_1(t) \text{ fundamental derivative response } } \\
    \\
    \frac{ \mathrm{dx} }{ \mathrm{dt} } = x(t) * u_1(t) \\
    \\
   {\color{Green} u_2(t) \text{ second derivative response } } \\
    \\
    \frac{ \mathrm{d^2x} }{ \mathrm{dt^2} } = x(t) * u_2(t) \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ Doublets } } \\
    \\
    u_2(t) = u_1(t) * u_1(t) \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ kth \space derivative \space response  } } \\
    \\
    \left.u_k(t) = u_1(t) * \dots + u_1(t)  \right|_{k \text{ times } } \\ 
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ Constructing } \space u_1(t) } \\
   \\
   {\color{Cerulean} \text{ Unit derivator! } } \\
    \\
    \frac{ \mathrm{ d \delta_{\Delta} (t) } }{ \mathrm{dt} } = \frac{1}{\Delta} \big[ \delta(t) - \delta(t - \Delta) \big]  \\ 
    \\
   {\color{Cerulean} \text{ This gives } } \\
    \\
    x(t) * \frac{ \mathrm{ d \delta_{\Delta} (t) } }{ \mathrm{dt} } = \frac{ x(t) - x(t - \Delta }{\Delta} \approx  \frac{dx}{dt} \\ 
    \\
   {\color{Green} \text{ Derivative of delta sifts derivative } } \\
    \\
\end{gather}
```

| | |
|-|-|
| <img src=images/doublets-derivative.png width='' height='' > </img> | <img src=images/doublets-derivative-dipole.png width='' height='' > </img> |

```math
\begin{gather}
   \\
   {\color{Purple} \mathbf{ Constructing } \space u_{-1}(t) } \\
   \\
   {\color{Cerulean} \text{ Unit integrator! } } \\
    \\
    u(t) = \int_{-infty}^{t} \Delta(\tau) \mathrm{dt} \\ 
    \\
\end{gather}
```

## [:back: ](../#round_pushpin-signal-processing-an-introduction)
