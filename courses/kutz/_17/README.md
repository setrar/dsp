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
\end{gather}
```


```math
{\color{Yellow} \text{ The Fourier transform } }
```

```math
\begin{gather}
x(t) \; \underrightarrow{ \mathscr{F} } \; X(i\omega)
\\
\\
X(i\omega) \; \underrightarrow{ \mathscr{F}^{-1}}  \; x(t)
\end{gather}
```



To find the Fourier transform of \(x(t) = e^{-at} u(t)\), where \(a > 0\), we can use the definition of the Fourier transform:

$$ X(\omega) = \int_{-\infty}^{\infty} x(t) \cdot e^{-i\omega t} \, dt $$

Let's calculate the Fourier transform step by step:

\[ X(\omega) = \int_{0}^{\infty} e^{-at} \cdot e^{-i\omega t} \, dt \]

Now, combine the exponents:

\[ X(\omega) = \int_{0}^{\infty} e^{-(a+i\omega)t} \, dt \]

This is a standard integral. The result is given by:

\[ X(\omega) = \frac{1}{a + i\omega} \]

So, the Fourier transform of \(x(t) = e^{-at} u(t)\) is:

\[ X(\omega) = \frac{1}{a + i\omega} \]

This is the frequency-domain representation of the given time-domain signal. If you have further questions or if there's anything else I can help you with, feel free to ask!
