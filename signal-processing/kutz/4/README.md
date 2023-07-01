[Introduction to Signal Processing: Impulses and Steps (Lecture 4)](https://youtu.be/f0DI8GHTfNI)

Lecture focuses on :
* Impulse Function: [Dirac Delta Function](https://en.wikipedia.org/wiki/Dirac_delta_function)
* [Step Function](https://en.wikipedia.org/wiki/Step_function): [Unit Step Function](https://math.mit.edu/~stoopn/18.031/stepanddelta.pdf)


- [ ] Delta Function (Discrete)

Want to learn something about a system? `Kick it`

```math
\delta[n] =
  \begin{cases}
    0 \quad n \neq 0 \\
    1 \quad n = 0
  \end{cases}
```

<img src=images/dirac-delta-function.png width='50%' height='50%' > </img>

```scilab
n = -5:5;
delta_sequence = zeros(1,11);
delta_sequence(6) = 1;
ha=gca();
ha.thickness = 2;
ha.x_location = "origin";
ha.y_location = "origin";
plot2d3('gnn',n,delta_sequence)
xtitle('δ[n]','n','');
```

- [ ] Unit Function (Discrete)

```math
\mathit{u}[n] =
  \begin{cases}
    0 \quad n < 0 \\
    1 \quad n \geq 0
  \end{cases}
```


and their responses (i.e. [impulse response function](https://en.wikipedia.org/wiki/Impulse_response) or IFR)

<img src=images/unit-step-function.png width='50%' height='50%' > </img>  

```math
{\color{Cerulean} \text{ {Relation between} } \delta[n] \text { and } \mathit{u}[n] }
```

```math
\text { {\color{green}But it integrates to unity} }
```

```math
{\color{Yellow} \text{ Integration and Differentiation} }
```

<img src=images/relation-delta-unit-function.png width='50%' height='50%' > </img>  

```math
\delta[n] = \mathit{u}[n] - \mathit{u}[n - 1]
```

And

```math
 \mathit{u}[n] = \sum_{m=-\infty}^{\infty} \delta[m]
```

Alternatively

```math
 \mathit{u}[n] = \sum_{k=0}^{\infty} \delta[n - k]
```

<img src=images/interval-of-summation.png width='50%' height='50%' > </img>

- [ ] Sifting property (of the delta function)

```math
\mathit{x}[n]\delta[n] = \mathit{x}[0]\delta[n]
```

Or 

```math
\mathit{x}[n]\delta[n - n_0] = \mathit{x}[n_0]\delta[n - n_0]
```

```math
\text { {\color{green}Critical property} }
```

- [ ] The Delta Function (continuous)

```math
\delta(t) =
  \begin{cases}
    0 \quad t \neq 0 \\
    \infty \quad t = 0
  \end{cases}
```

```math
\text { {\color{green}But it integrates to unity} }
```

- [ ] The Unit Step Function (continuous)

```math
\mathit{u(t)} =
  \begin{cases}
    0 \quad t < 0 \\
    1 \quad t \geq 0
  \end{cases}
```

```math
\text { {\color{green}Discontinuous at t=0} }
```

<img src=images/unit-step-continuous.png width='50%' height='50%' > </img>

---

```math
{\color{Cerulean} \text{ {Relation between} } \delta(t) \text { and } \mathit{u}(t) }
```

```math
\mathit{u(t)} = \int_{-\infty}^{t} \delta(\tau)\mathit{d\tau}
```

```math
\mathit{\delta(t)} = \frac{\mathit{u(t)}}{\mathit{dt}}
```


```math
{\color{Yellow} \text{ Integration and Differentiation} }
```

---

```math
{\color{Purple} \text{ Consider the forcing } }
```

```math
f(x) =
  \begin{cases}
    f_0(x) \quad x_0 - \xi < x < x_0 + \xi \\
    0 \quad \text { elsewhere }
  \end{cases}

```

```math
{\color{Yellow} \text{ Interval of interest } }
```

```math
x \in [ x_0 - \xi, x_0 + \xi ]
```

```math
{\color{Purple} \text{ Define an impulse } }
```

```math
I(\xi) = \int_{0}^{l} f(x)dx = \int_{x_0 - \xi}^{x_0 + \xi} f_0(x)dx
```

```math
{\color{Purple} \text{ Specific impulse } }
```

```math
f(x) =
  \begin{cases}
    1/(2 \xi) \quad x_0 - \xi < x < x_0 + \xi \\
    0 \quad \text { elsewhere }
  \end{cases}
```

```math
{\color{Purple} \text{ Impulse is unity } }
```

```math
I(\xi) = \int_{x_0 - \xi}^{x_0 + \xi} \frac{1}{2 \xi}dx = \frac{1}{2 \xi} \int_{x_0 - \xi}^{x_0 + \xi} dx = 1
```

```math
{\color{Purple} \text{ Dirac delta function } }
```

```math
\delta(x - x_0) = \lim\limits_{\xi \to 0}
  \begin{cases}
    1/(2 \xi) \quad x_0 - \xi < x < x_0 + \xi \\
    0 \quad \text { elsewhere }
  \end{cases}
```

```math
{\color{Yellow} \text{ One possible definition } }
```




## [:back: ](../#round_pushpin-signal-processing-an-introduction)

