
### Rules of derivatives

- [ ] Constant Rule

```math
\begin{gather}
\\
y = k       & \quad \to & \quad y^{'} = 0 \\
y = x^{n}  & \quad \to & \quad y^{'} = nx^{n - 1} \\
y = kx^{n} & \quad  \to & \quad y^{'} = knx^{n - 1} \\

\end{gather}
```  

- [ ] Power Rule

```math
y = uv  \quad \to  \quad y^{'} = u^{'}v + uv^{'}
```

- [ ] Quotient Rule

```math
y = \frac{u}{v} \quad \to \quad y^{'} = \frac{u^{'}v - uv^{'}}{v^2}
```

- [ ] Chain Rule

```math
y = u^{n} \quad \to \quad y^{'} = nu^{n - 1} . u^{'}
```

- [ ] Square Root Rule

```math
y = \sqrt{u} \quad \to \quad y^{'} = \frac{u^{'}}{2\sqrt{u}}
```

- [ ] Logarithm Rule

```math
y = \ln(u) \quad \to \quad y^{'} = \frac{u^{'}}{u}
```

- [ ] Exponential Rule

```math
y = e^u \quad \to \quad y^{'} = e^{u} . u^{'}
```

### Graphing

- [ ]  Continuity

```math
\begin{gather}
1) \quad f(a) \text{ exists } \
\\
2) \quad \lim\limits_{x \to a-} = \lim\limits_{x \to a+}
\\
3) \quad f(a) = \lim\limits_{x \to a}
\end{gather}
```

### Rules of Integration

- [ ] Indefinite Integral Formulas

```math
\begin{gather}
\\
\int k \mathit{dx}             \quad = \quad kx + C \\
\\
\int x^n \mathit{dx}           \quad = \quad \frac{x^{n + 1}}{n + 1} + C, & \quad n \neq -1 \\
\\
\int k f(x) \mathit{dx}        \quad = \quad k \int f(x) \mathit{dx} \\
\\
\int f(x) \pm g(x) \mathit{dx} \quad = \quad \int f(x) dx \pm \int g(x) dx \\
\\
\int e^x \mathit{dx}           \quad = \quad  e^x \mathit{dx} \\
\\
\int \frac{1}{x} \mathit{dx}   \quad = \quad ln(x) + C, & \quad x \neq 0
\end{gather}
```

- [ ] General indefinite integral Formulas

```math
\begin{gather}
\color{Cerulean} . \text{ Logarithm Rule } \\
\\
\int \frac{u^{'}}{u}  \quad = \quad ln(u) + C \\
\\
\color{Cerulean} . \text{ Chain Rule } \\
\\
\int u^n . u^{'} \mathit{dx}  \quad = \quad \frac{u^{n + 1}}{n + 1} + C \\
\\
\color{Cerulean} . \text{ Square Root Rule } \\
\\
\int \frac{u^{'}}{2\sqrt{u}} \mathit{dx}  \quad = \quad \sqrt{u} + C \\
\\
\color{Cerulean} . \text{ Exponential Rule } \\
\\
\int e^u . u^{'} \mathit{dx}  \quad = \quad e^u + C \\
\\
\color{Cerulean} . \text{ Integration by substitution } \\
\\
\begin{cases}
  \\
  \quad 1) \quad u = ax \pm b & \qquad \implies substitute \quad ax \pm b = t \\
  \\
  \quad 2) \quad \text{ solve x from t } & \qquad \implies \text{i.e.} \quad x = \frac{t - b}{a} \\
  \\
  \quad 3) \quad \text{ derive step } 2) & \qquad \implies \text{i.e.} \quad \mathit{dx} = \frac{\mathit{dt}}{a} \quad ( \text{solved from previous step} ) \\
  \\

\end{cases}
\end{gather}
```
