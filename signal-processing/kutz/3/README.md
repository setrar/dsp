:three: [Introduction to Signal Processing: Exponential Signals (Lecture 3)](https://youtu.be/B6GPKiRHnsk)


# Exponential Signals


Basic of Linear Signals

## :wavy_dash: Continuous Signal


```math
\dot{x} = A x
```

Assume

```math
x = v exp(\lambda t)
```

Gives

```math
A v = \lambda v
```

```math
\text{ eigenvalue problem }
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

* Euler Formula

```math
\mathrm{e}^{\pm i \omega t} = \cos ( \omega t ) \pm i \sin ( \omega t )
```

```math
\text { Defines signals in terms of frequencies }
```

* Imaginary Exponentials are Periodic

```math
\mathrm{e}^{ i \omega t} = \mathrm{e}^{ i \omega ( t + T ) }
```

- Period T

```math
\mathrm{e}^{ i \omega t} = \mathrm{e}^{ i \omega ( t + T ) } \to
  \begin{cases}
    \mathrm{e}^{ i \omega t} = \mathrm{e}^{ i \omega t } \mathrm{e}^{ i \omega T }  & \quad \text { * Period T }  \\
    \mathrm{e}^{ i \omega t} = 1                                                    & \quad \text { * Period requirement }  \\
    \mathrm{e}^{ i 2 \alpha } = 1                                                   & \quad \text { Note }  \\
    2 \pi = \omega T \to T = \frac{ 2 \pi }{ | \omega | }                           & \quad \text { Period }
  \end{cases}
```


- [ ] Period requirement

```math
\mathrm{e}^{ i \omega t} = 1
```

- Note 

```math
\mathrm{e}^{ i 2 \alpha } = 1
```

- Period

```math
2 \pi = \omega T \to T = \frac{ 2 \pi }{ | \omega | }
```


## :signal_strength: Discrete Time Signal

