:one::two: [Introduction to Signal Processing: Convergence of Fourier Series (Lecture 12)](https://youtu.be/_RwaqlkpsyA)


```math
\begin{gather}
   \\
   {\color{Green} \mathbf{ Convergence \space of \space Fourier \space series } } \\
    \\
    \\
    x(t) = \sum_{k=-\infty}^{\infty} a_k e^{i k \omega_0 t} \\
    \\
    \\
   a_n = \frac{1}{T} \int_{0}^{T} x(t) e^{-in \omega_0 t} \mathit{dt} \\
    \\
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Green} \mathbf{ Conditions \space of \space Convergence } } \\
    \\
    \\
    \int_{T} | x(t) |^2 \mathit{dt} < \infty \\
    \\
   {\color{Yellow} \text{ Finite energy over one period } } \\
   {\color{Yellow} \text{ (Absolutely integrable ) } } \\
   \\ 
\end{gather}
```

```math
\begin{gather}
   \\
   {\color{Green} \mathbf{ Fourier \space Coefficients } } \\
    \\
    \\
    a_n = \frac{1}{T} \int_{0}^{T} x(t) e^{-in \omega_0 t} \mathit{dt}
    \\
    \\
    | a_n | \leq \frac{1}{T} \int_{T} | x(t) e^{-in \omega_0 t} | \mathit{dt} = \frac{1}{T} \int_{T} | x(t) | \mathit{dt} \\
    \\
    \\
    | a_n | \leq \infty \\
    \\
\end{gather}
```

```math
\begin{gather}
   {\color{Green} \mathbf{ Other \space Conditions } } \\
    \\
    \\
   {\color{Cerulean} \text{ Signal x(t) is of bounded variation } } \\
   \\
   {\color{Cerulean} \text{ Only finite number of discontinuities } } \\
   \\ 
\end{gather}
```

---

```math
\begin{gather}
   {\color{Purple} \mathbf{ Properties \space of \space Fourier \space series } } \\
    \\
    \\
    x(t) \leftrightarrow a_k \\
   \\ 
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Linearity } } \\
    \\
    \\
    x(t) \leftrightarrow a_k \\
    y(t) \leftrightarrow b_k \\
   \\
   {\color{Yellow} \text{ Then } } \\
   \\
   z(t) = A x(t) + B y(t) \leftrightarrow c_k = A a_k + B b_k \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Time \space Shifting } } \\
    \\
    \\
   b_k = \frac{1}{T} \int_{T} x(t - t_0) e^{-ik \omega_0 t} \mathit{dt} \\
   \\ 
   {\color{Yellow} \text{ Then } } \\
   \\
   b_k = e^{-ik \omega_0 t_0} a_k \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Time \space Reversal } } \\
    \\
    \\
   x(t) = \sum_{k=-\infty}^{\infty} a_k e^{ik \omega_0 t} \\
   \\ 
   {\color{Yellow} \text{ Then } } \\
   \\
   x(-t) = \sum_{k=-\infty}^{\infty} a_k e^{-ik \omega_0 t} \\
   \\
   x(-t) \leftrightarrow a_{-k} \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Time \space Scaling } } \\
    \\
    \\
   x(\alpha t) = \sum_{k=-\infty}^{\infty} a_k e^{ik \alpha \omega_0 t} \\
   \\ 
   {\color{Yellow} \text{ Changes fundamental frequency } } \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Multiplication } } \\
    \\
    \\
    x(t) \leftrightarrow a_k \\
    y(t) \leftrightarrow b_k \\
   \\
   {\color{Yellow} \text{ Then } } \\
   \\
   x(t)y(t) \leftrightarrow h_k = \sum_{p=-\infty}^{\infty} a_pb_{k-p} \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Conjugation } } \\
    \\
    \\
    x(t) \leftrightarrow a_k \\
    x^*(t) \leftrightarrow a_{-k}^* \\
   \\
   {\color{Yellow} \text{ Real signals } } \\
   \\
   a_{-k} = a_k^* \\
   \\
\end{gather}
```

```math
\begin{gather}
   {\color{Purple} \mathbf{ Persevals } } \\
    \\
    \\
    \frac{1}{T} \int_{T} |x(t)|^2 \mathit{dt} = \sum_{k=-\infty}^{\infty} |a_k|^2
   \\
\end{gather}
```

```math
   \color{Purple} \text{ Python }
```

```python
import numpy as np
import matplotlib.pyplot as plt

n=200
x = np.linspace(0, 2*np.pi, n)

s1 = np.sin(1*x); s1=s1
s2 = np.sin(2*x)*2.5; s2=s2
s3 = np.sin(3*x)*5; s3=s3
s4 = np.sin(4*x)*7.5; s4=s4

```

```math
   \color{Purple} \text{ Matlab }
```

```matlab
n=200;
x=linspace(0,2*pi,n);

s1=sin(1*x/2); s1=s1/norm(s1);
s2=sin(2.2*x/2); s2=s2/norm(s2);
s3=sin(3*x/2); s3=s3/norm(s3);
s4=sin(4*x/2); s4=s4/norm(s4);
```

<img src=images/sinwaves.png width=50% height=50% > </img>

```math
   \color{Purple} \text{ Python }
```

```python
f = np.exp(-2*np.square(x-np.pi+1))

a1=np.dot(f,s1); f1=a1*s1
a2=np.dot(f,s2); f2=a1*s1+a2*s2
a3=np.dot(f,s3); f3=a1*s1+a2*s2+a3*s3
a4=np.dot(f,s4); f4=a1*s1+a2*s2+a3*s3+a4*s4
```

```math
   \color{Purple} \text{ Matlab }
```

```matlab
f=exp(-2*(x-pi+1).^2);

a1=f*s1'; f1=a1*s1;
a2=f*s2'; f2=a1*s1+a2*s2;
a3=f*s3'; f3=a1*s1+a2*s2+a3*s3;
a4=f*s4'; f4=a1*s1+a2*s2+a3*s3+a4*s4;
```

```math
   \color{Purple} \text{ Python }
```

```python
approx=0*x
for k in range(9):
    ax = fig.add_subplot(4, 3, k+1)
    s=np.sin(k+1)*x/2); s=s/np.sqrt(np.dot(s,s))
    # Dot product of two arrays (inner product)
    a=np.dot(f,s)
    approx=approx+a*s
    plt.plot(x,f,x,approx)
```

```math
   \color{Purple} \text{ Matlab }
```

```matlab
approx=0*x;
for j=1:30
    s=sin(j*x/2); s=s/norm(s);
    a=f*s;
    approx=approx+a*s;
    plt.plot(x,f,'b',x,approx,'g','Linewidth',[2])
    title(num2srt(j))
    pause(1)
```

---

```math
   \color{Purple} \text{ Full Python Code }
```

```python
import numpy as np
import matplotlib.pyplot as plt

n=200
x = np.linspace(0, 2*np.pi, n)

f = np.exp(-2*np.square(x-np.pi+1))

# Create a figure with subplots
fig = plt.figure(figsize=(10, 6))

approx=0*x
for k in range(9):
    ax = fig.add_subplot(4, 3, k+1)
    s=np.sin((k+1)*x/2); s=s/np.sqrt(np.dot(s,s))
    # Dot product of two arrays (inner product)
    a=np.dot(f,s)
    approx=approx+a*s
    plt.plot(x,f,x,approx)

# Show the figure
plt.show()
```

```math
   \color{Purple} \text{ Run the Python Code }
```

```bash
python src/orthogonal.py
```

```math
   \color{Green} \text{ the result }
```


<img src=images/orthogonal.png width='' height='' > </img>


## [:back: ](../#round_pushpin-signal-processing-an-introduction)
