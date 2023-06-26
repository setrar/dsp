:three: [Introduction to Signal Processing: Exponential Signals (Lecture 3)](https://youtu.be/B6GPKiRHnsk)


# Exponential Signals


Basic of Linear Signals

## :wavy_dash: Continuous Signal

```math
\dot{x} = A x \to
  \begin{cases}
    \text { Assume }  & \quad x = v exp(\lambda t) \\
    \text { Gives  }  & \quad A v = \lambda v \\
    \to               & \quad \text { eigenvalue problem  }
  \end{cases}
```


* Continuous Time Exponentials

```math
x(t) = C exp(\alpha t)
```

> Constants can be [complex](https://en.wikipedia.org/wiki/Complex_number)


| What if Alpha | is real ?  |
|-------------------------------|------------------------------------------------|
| <img src=images/exponential-sequence.png width='' height='' > </img> | <img src=images/exponential-sequence-blow.png width='' height='' > </img>  |

- [ ] Imaginary Exponential Signals

```math
x(t) = \mathrm{e}^{i \omega t}
```

```math
\text { Euler Formula } \to
  \begin{cases}
    & \quad \mathrm{e}^{\pm i \omega t} = \cos ( \omega t ) \pm i \sin ( \omega t ) \\
    & \quad \text { which defines signals in terms of frequencies }
  \end{cases}
```

- [ ] Imaginary Exponentials are Periodic

```math
\mathrm{e}^{ i \omega t} = \mathrm{e}^{ i \omega ( t + T ) } \to
  \begin{cases}
    \text { extract the Period T }         & \quad \mathrm{e}^{ i \omega t} = \mathrm{e}^{ i \omega t } \mathrm{e}^{ i \omega T }  \\
    \text { with Periodicty requirement }  & \quad \mathrm{e}^{ i \omega t} = 1                                                    \\
    \text { also Note that }               & \quad \mathrm{e}^{ i 2 \pi } = 1                                                      \\
    \text { so the Period T is }           & \quad 2 \pi = \omega T \to T = \frac{ 2 \pi }{ | \omega | }                           
  \end{cases}
```

- [ ] Fundamental Period

```math
\mathrm{e}^{ i 2 \pi } = 1 \to
  \begin{cases}
   & \quad \text { Smallest T for which this holds } \\
   & \quad 2 \pi = \omega T \to T = \frac{ 2 \pi }{ | \omega | }
  \end{cases}
```

- [ ] General Sinusoidal

```math
x(t) = A \cos( \omega t + \phi ) \to
  \begin{cases}
    A      & \quad \text { Amplitude ( Energy ) } \\
    \omega & \quad \text { Frequency ( based on your electromagnetique spectrum ) } \\
    \theta & \quad \text { Phase ( Center of Time )}
  \end{cases}
```

<img src=images/general-sinusoidal-graph.png width='50%' height='50%' > </img>

- [ ] Exponentials and sinusoids

```math
x(t) = A \cos( \omega t + \phi ) \to
  \begin{cases}
     \text { In exponential form } & \quad A \cos( \omega t + \phi ) = \frac{A}{2} e^{i \phi} e^{i \omega t} + \frac{A}{2} e^{-i \phi} e^{-i \omega t}\\
     \text { Alternatively }  \\
                                   & \quad A \cos( \omega t + \phi ) = A \mathfrak{R} \{ e^{i( \omega t + \phi)} \} \\
                                   & \quad A \sin( \omega t + \phi ) = A \mathfrak{I} \{ e^{i( \omega t + \phi)} \}
  \end{cases}
```

- [ ] Power and Energy

```math
E_T = \int_{0}^{T} | e^{i \omega t} | \mathrm{d}t = \int_{0}^{T} 1 \mathrm{d}t = T
```
> Energy is related to period

```math
P_T = \frac{1}{T} E_T = 1
```
> Average power in period

- [ ] Harmonics

```math
e^{i2\pi} = 1 \to e^{i2\pi n} = 1
```

> Many signals with the same period

```math
2 \pi n = \omega T \quad n = 0, \pm 1, \pm 2, \dots 
```

<img src=images/fundamental-period.png width='50%' height='50%' > </img>





## :signal_strength: Discrete Time Signal

```math
\text { two forms of representation } \, ( \alpha = e^{\beta} ) \to
  \begin{cases}
     \quad x[n] = C \alpha ^ n \\
     \quad x[n] = C e ^ {\beta n}
  \end{cases}
```

|  |   |
|-------------------------------|------------------------------------------------|
| <img src=images/r_and_i-parts.png width='' height='' > </img>  |  <img src=images/r_and_i-blowing-parts.png width='' height='' > </img> |


- [ ] Discrete Sinusoidal Signals

```math
x[n] = e^{ i \omega n }
  \begin{cases}
     \text { Alternatively } & \quad A \cos( \omega n + \phi ) \\
     \text { Note }  & \quad x[n] = C \alpha ^ n \to | \alpha \ = 1
  \end{cases}
```


|  |   |
|-------------------------------|------------------------------------------------|
| <img src=images/real-coefficients.png width='' height='' > </img>  |  <img src=images/real-coefficients-blows.png width='' height='' > </img> |


