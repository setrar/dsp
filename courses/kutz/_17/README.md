:one::seven: [Introduction to Signal Processing: The Fourier Transsform (Lecture 17)](https://youtu.be/W2NkY8XlWOk)

```math
{\color{Yellow} \text{ The Fourier transform } }
```

```math
\begin{gather}
x(t) = \frac{1}{2\pi} \int_{-\infty}^{\infty} X(i\omega) e^{i \omega t} \mathit{d \omega}
\\
\\
X(i\omega) = \int_{-\infty}^{\infty} x(t) e^{-i\omega t} \, dt
\\
\end{gather}
```


```math
{\color{Yellow} \text{ The Fourier transform } }
```

```math
\begin{gather}
\\
x(t) \; \underrightarrow{ \mathscr{F} } \; X(i\omega)
\\
\\
X(i\omega) \; \underrightarrow{ \mathscr{F}^{-1}}  \; x(t)
\\
\end{gather}
```

```math
{\color{Yellow} \text{ The Fourier transform } }
```

```math
\begin{gather}
\\
{\color{BlueGreen} \text{ In practice } } \qquad \qquad \qquad \qquad \qquad \qquad 
\\
X(i\omega) = \int_{-\infty}^{\infty} x(t) e^{-i\omega t} \, dt
\\
\\
X(i\omega) = \int_0^{2\pi} x(t) e^{-i\omega t} \, dt
\\
\\
{\color{Purple} \text{ Scale domain } t \in | -T, T | \text{ to } t \in | 0, 2\pi | }
\\
\end{gather}
```

```math
{\color{Yellow} \text{ Convergence } }
```

```math
\begin{gather}
\\
{\color{BlueGreen} \text{ 1. } } \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad 
\\
\int_{-\infty}^{\infty} |x(t)| \, dt < \infty
\\
\\
{\color{BlueGreen} \text{ 2. Finite number of max/min } } \qquad \qquad 
\\
\\
{\color{BlueGreen} \text{ 3. Finite number of discontinuities } } \qquad 
\\
\end{gather}
```

```math
{\color{YellowGreen} \text{ Example 1 } }
```

```math
\begin{gather}
\\
x(t) = e^{-at} u(t) \; a > 0
\\
\\
X(i\omega) = \int_{-\infty}^{\infty} x(t) e^{-i\omega t} \, dt 
\\
\\
X(i\omega) = \int_{-\infty}^{\infty} e^{-at} u(t) e^{-i\omega t} \, dt
\\
\\
\qquad \text{ but the u(t) is zero everywhere until it's 1 then }
\\
\\
X(i\omega) = \int_{0}^{\infty} e^{-at} e^{-i\omega t} \, dt \to X(i\omega) = \int_{0}^{\infty} e^{-(a+i\omega)t} \, dt 
\\
\\
\text{ This is a standard integral. }
\text{ The result is given by: } X(i\omega) = \frac{1}{a + i\omega} 
\\
\\
\text{ So, the Fourier transform of } x(t) = e^{-at} u(t) \text{ is: }  X(i\omega) = \frac{1}{a + i\omega}
\end{gather}
```

```math
{\color{YellowGreen} \text{ Example 2 } }
```


```math
\begin{gather}
\\
X(\omega) = \int_{-\infty}^{\infty} e^{-a|t|} e^{-i\omega t} \, dt 
\\
\text{ Splitting the integral into two parts: }
\\
X(\omega) = \int_{-\infty}^{0} e^{at} e^{i\omega t} \, dt + \int_{0}^{\infty} e^{-at} e^{-i\omega t} \, dt 
\\
\text{ Now, let's evaluate each part: }
\\
\text{ 1. For } \int_{-\infty}^{0} e^{at} e^{i\omega t} \, dt :
\\
 \int_{-\infty}^{0} e^{at} e^{i\omega t} \, dt = \frac{1}{a + i\omega} 
\\
\text{ 2. For } \int_{0}^{\infty} e^{-at} e^{-i\omega t} \, dt :
\\
\int_{0}^{\infty} e^{-at} e^{-i\omega t} \, dt = \frac{1}{a - i\omega} 
\\
\text{ Now, combining both parts: }
\\
X(\omega) = \frac{1}{a + i\omega} + \frac{1}{a - i\omega}
\\
\text{ To combine these fractions, we can find a common denominator: }
\\
X(\omega) = \frac{a - i\omega + a + i\omega}{(a + i\omega)(a - i\omega)}
\\
\text{ Simplifying: }
\\
X(\omega) = \frac{2a}{a^2 + \omega^2}
\end{gather}
```

## [:back: ](../#round_pushpin-signal-processing-an-introduction)
