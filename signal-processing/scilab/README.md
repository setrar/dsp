

```scilab
t = [0:0.1:5];
u = t.*((t>=0)&(t<=2))-2*(t-3).*((t >2)&(t <=3));
a=gca();
a.thickness =2;
a.y_location = "middle";
xtitle=('the signal x(t)');
plot(t,u);
plot2d3('gnn',t,u);
```

<img src=images/scilab-1.png width='50%' height='50%' > </img>


- [ ] plot delta sequence

```scilab
n = 0:10;
delta_sequence = zeros(1,11);
delta_sequence(6) = 1;
plot2d3('gnn',n,delta_sequence)
```

<img src=images/scilab-delta-sequence.png width='50%' height='50%' > </img>

# References

https://iocscience.org/ejournal/index.php/mantik

- [ ] [Equivalent function like MATLAB's stem(x,y) in SCILAB.](https://www.edaboard.com/threads/equivalent-function-like-matlabs-stem-x-y-in-scilab.56138)
- [ ] [Download scilab-2023.1.0](https://www.scilab.org/download/scilab-2023.1.0)
