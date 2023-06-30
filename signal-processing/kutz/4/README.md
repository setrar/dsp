[Introduction to Signal Processing: Impulses and Steps (Lecture 4)](https://youtu.be/f0DI8GHTfNI)

Lecture focuses on :
-  [ ] Impulse Function: [Dirac Delta Function](https://en.wikipedia.org/wiki/Dirac_delta_function)
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


-  [ ] [Step Function](https://en.wikipedia.org/wiki/Step_function): [Unit Step Function](https://math.mit.edu/~stoopn/18.031/stepanddelta.pdf)

and their responses (i.e. [impulse response function](https://en.wikipedia.org/wiki/Impulse_response) or IFR)


## [:back: ](../#round_pushpin-signal-processing-an-introduction)

