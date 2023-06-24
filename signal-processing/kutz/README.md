
- [ ] [Open-Source Lectures](http://faculty.washington.edu/kutz/page5/page23)
- [ ] [Pr. Nathan Kutz](http://faculty.washington.edu/kutz/page4)

`Short Biography`

Professor Kutz was awarded the B.S. in Physics and Mathematics from the University of Washington in 1990 and the PhD in Applied Mathematics from Northwestern University in 1994. Following postdoctoral fellowships at the Institute for Mathematics and its Applications (University of Minnesota, 1994-1995) and Princeton University (1995-1997), he joined the faculty of applied mathematics and served as Chair from 2007-2015.

`Research Interests`

Numerical methods and scientific computing, data analysis and dimensionality reduction (PCA, POD, etc) methods, dynamical systems, bifurcation theory, linear and nonlinear wave propagation, perturbation and asymptotic methods, nonlinear analysis, variational methods, soliton theory, nonlinear optics, mode-locked lasers, fluid dynamics, Bose-Einstein condensation, neuroscience, gesture recognition and video & image processing



:round_pushpin: [Signal Processing: An Introduction](https://www.youtube.com/playlist?list=PL6Vi_EcJpt8E96_JTKoOKY3HYWVGjf6b4) (Youtube Playlist)

The lectures are from the textbook Oppenheim, Willsky and Nawab, "Systems and Signals".


:one: [Introduction to Signal Processing: An Overview (Lecture 1)](https://www.youtube.com/watch?v=kjw6W0SZe04&t=0s) 


[Electromagnetic Spectrum](https://www.britannica.com/science/electromagnetic-spectrum)

<img src=images/electromagnetic-spectrum-britannica.png width='50%' height='50%' > </img>

<img src=images/electromagnetic-spectrum2-britannica.png width='50%' height='50%' > </img>

[Frequency and Wavelength of 5G and electromagnetic spectrum](https://nasafes.com/facts-about-5g-and-the-electromagnetic-spectrum)

<img src=images/5g-electromagnetic-spectrum-nasafes.png width='50%' height='50%' > </img>

<img src=images/sound-spectrum.png width='50%' height='50%' > </img>

[Rivals get Rogered in Canadian 600 MHz spectrum auction](https://telecoms.com/496888/rivals-get-rogered-in-canadian-600-mhz-spectrum-auction)

<img src=images/canada-5G-600MHZ.png width='50%' height='50%' > </img>

- [ ] Mathematical Representation
> Continuous - Time
```math
x(t)
```
> Discrete - Index
```math
x[n]
```

- [ ] Transforming Signals

```mermaid
---
title: (a)
---
%%{init: {"flowchart": {"htmlLabels": false}} }%%
flowchart LR
    a("x(t)"):::someclass -->b[Continous-Time \n   System]
    b-->d("y(t)"):::someclass
    classDef someclass fill:#09f
```

```mermaid
---
title: (b)
---
%%{init: {"flowchart": {"htmlLabels": false}} }%%
flowchart LR
    e("x[n]"):::someclass -->f[Discrete-Time \n    System]
    f-->g("y[n]"):::someclass
    classDef someclass fill:#a2f
```

- [ ] Signal Energy

```math
E = \int_{t1}^{t2} | x(t) |^2 \mathrm{d}t
```

```math
E = \sum_{n=n1}^{n2} | x[t] |^2
```

- [ ] Total Signal Energy

```math
E_\infty = \int_{-\infty}^{\infty} | x(t) |^2 \mathrm{d}t
```

```math
E_\infty = \sum_{n=-\infty}^{\infty} | x[t] |^2
```


- [ ] Time-Averaged Signal Power

```math
P_\infty = \lim\limits_{T \to \infty} \frac{1}{2T} \int_{-T}^{T} | x(t) |^2 \mathrm{d}t
```

```math
P_\infty = \lim\limits_{N \to \infty} \frac{1}{2N + 1} \sum_{n=-N}^{N} | x[t] |^2
```

- [ ] Three Important Classes of Signals

I. Finite Energy, Zero Average Power 

```math
E_\infty < \infty, P_\infty = \lim\limits_{T \to \infty} \frac{E_\infty}{2T} = 0
```

II. Finite Average Power, Zero Energy

```math
P_\infty > 0, E_\infty = \infty
```



:two: [Introduction to Signal Processing: Basic Signals (Lecture 2)](https://youtu.be/ILek2_KoUmw&t=0)

# References

- [ ] [Writing mathematical expressions](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/writing-mathematical-expressions)
- [ ] [LaTeX/Mathematics](https://en.wikibooks.org/wiki/LaTeX/Mathematics)




