:nine: [Introduction to Signal Processing: LTI Differential Equations (Lecture 9)](https://youtu.be/DEXuVeMfJl8)

```math
   \color{Green} \mathbf{ LTI \space Systems  } \\
```

```math
\begin{gather}
   {\color{Yellow} \mathbf{ Differential \space Equations } } \\
    \\
    \frac{ \mathrm{d}y }{ \mathrm{d}t} = f(y,t) \\
    \\
   {\color{Cerulean} \text{ Describes calculus based physics } } \\
    \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Solution \space Techniques } } \\
    \\
    \frac{ \mathrm{d}y }{ \mathrm{d}t} = f(y,t) \\
    \\
   {\color{Cerulean} \text{ LTI differential equations } } \\
    \\
    \frac{ \mathrm{d}y }{ \mathrm{d}t} = ay \to \frac{ \mathrm{d}y }{ \mathrm{d}t} = \mathcal{A} y \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Linear \space ODEs } } \\
    \\
    \frac{ \mathrm{d}y }{ \mathrm{d}t} = ay \quad \frac{ \mathrm{d}y }{ \mathrm{d}t} = \mathcal{A}y \\
    \\
   {\color{Cerulean} \text{ Exponential solutions } } \\
    \\
    y = \mathcal{ C } e^{\lambda t} \quad \mathcal{ y } = \mathcal{ v } e^{\lambda t} \\
    \\
   {\color{Purple} \text{ Exponential solutions } } \\
    \\
    \lambda = a \quad \mathcal{ A }v = \lambda v \quad {\color{Green} \dots \mathrm{ Eigenvalue \space Problem } }
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \dots \quad \mathbf{ Second \space Order \space LTI } } \\
    \\
    a \frac{ \mathrm{d^2} y }{ \mathrm{dt^2}} + b \frac{ \mathrm{d}y }{ \mathrm{dt} } + cy = f(t) \\
    \\
   {\color{Cerulean} \text{ Solutions } } \\
    \\
    y(t) = y_h(t) + y_p(t) \\
    \\
   {\color{Green} \text{ Homogeneous + particular } } \\
\end{gather}
```

```math
\begin{gather}
   {\color{Orange} \dots \mathrm{ Homogeneous } } \\
    \\
    a \frac{ \mathrm{d^2} y_h }{ \mathrm{dt^2}} + b \frac{ \mathrm{d} y_h }{ \mathrm{dt} } + cy_h = 0 \\
    \\
   {\color{Cerulean} \text{ Solutions } y(t) = exp( \lambda t ) } \\
    \\
    a \lambda^2 + b \lambda + c = 0 \\
    \\
   {\color{Green} \text{ Solve quadratic equation } } \\
\end{gather}
```

```math
\begin{gather}
   {\color{Orange} \dots \mathrm{ Particular } } \\
    \\
    a \frac{ \mathrm{d^2} y_p }{ \mathrm{dt^2}} + b \frac{ \mathrm{d} y_p }{ \mathrm{dt} } + cy_p = f(t) \\
    \\
   {\color{Cerulean} \text{ Guess solutions like } f(t) } \\
    \\
    y = y_h + y_p \\
    \\
   {\color{Green} \text{ Linearly super-impose } } \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \dots \quad \mathbf{ Second \space Order \space LTI } } \\
    \\
    a \frac{ \mathrm{d^2} y }{ \mathrm{dt^2}} + b \frac{ \mathrm{d}y }{ \mathrm{dt} } + cy = f(t) \\
    \\
   {\color{Cerulean} \text{ Solutions } \to \text{ System ODEs : } }\\
   \\
    \dots \text{ System form } y_1 = y, \quad y_2 =  \frac{ \mathrm{d} y }{ \mathrm{dt}}  \\
    \\
    \dots \text{ System form } \frac{ \mathrm{d} y }{ \mathrm{dt}} = \mathcal{ A } y , \quad \dot{ x } = \mathcal{ A }x \\
    \\
   {\color{Green} \text{ turn into TWO first-order equations } } \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \text{ System ODEs } } \\
    \\
   {\color{Cerulean} \text{ System form } y_1 = y, \quad y_2 =  \frac{ \mathrm{d} y }{ \mathrm{dt}} } \\
    \\
    \frac{ \mathrm{d} y_1 }{ \mathrm{dt}} = y_2\\
    \frac{ \mathrm{d} y_1 }{ \mathrm{dt}} = - \frac{ b }{ a } y_2 - \frac{ c }{ a } y_1 + - \frac{ f(t) }{ a } \\  
    \\
   {\color{Cerulean} \text{ System form } \frac{ \mathrm{d} y }{ \mathrm{dt}} = \mathcal{ A } y } \\
    \\
   {\color{Blue} \text{ with }  } \\
    \\
   \mathcal{ A } = \begin{bmatrix}
                        1             & 0             \\[0.3em] 
                        - \frac{c}{a} & - \frac{b}{a} \\[0.3em]
                     \end{bmatrix} \\
   \\
   {\color{Blue} \text{ Eigenvalues }  } \\
   \\
a \lambda^2 + b \lambda + c = 0 \\
    \\
   {\color{Green} \text{ Solve quadratic equattion } } \\

\end{gather}
```


# References

:bulb: An ordinary differential equation (or `ODE`) has a discrete (`finite`) set of variables. 
