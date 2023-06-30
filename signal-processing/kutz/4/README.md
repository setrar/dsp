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

```scilab
a=0.5;
n=0:10;
x=(a)^n;
a=gca();
a.thickness = 2;
a.x_location = "origin";
a.y_location = "origin";
plot2d3('gnn',n,x);
xtitle('','n','D[n]');
```


-  [ ] [Step Function](https://en.wikipedia.org/wiki/Step_function): [Unit Step Function](https://math.mit.edu/~stoopn/18.031/stepanddelta.pdf)

and their responses (i.e. [impulse response function](https://en.wikipedia.org/wiki/Impulse_response) or IFR)


## [:back: ](../#round_pushpin-signal-processing-an-introduction)

