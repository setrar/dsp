
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


```mermaid
%%{init: {"flowchart": {"htmlLabels": false}} }%%
flowchart LR
subgraph "(a)"
    a("x(t)"):::someclass -->b[Continous-Time \n\t System]
    b-->id("y(t)"):::someclass
    classDef someclass fill:#fff
end
subgraph "(b)"
    c("x(t)"):::someclass -->d[Discrete-Time \n\t System]
    d-->id1("y(t)"):::someclass
    classDef someclass fill:#fff
end
```

```mermaid
%%{init: {"flowchart": {"htmlLabels": false}} }%%
flowchart LR
subgraph "One"
  a("`The **cat**
  in the hat`") -- "edge label" --> b{{"`The **dog** in the hog`"}}
end
subgraph "`**Two**`"
  c("`The **cat**
  in the hat`") -- "`Bold **edge label**`" --> d("The dog in the hog")
end
```

```math
\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)
```

:two: [Introduction to Signal Processing: Basic Signals (Lecture 2)](https://youtu.be/ILek2_KoUmw&t=0)

