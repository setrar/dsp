

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


- [ ] plot delta sequence

```scilab
n = 0:10;
delta_sequence = zeros(1,11);
delta_sequence(6) = 1;
plot2d3('gnn',n,delta_sequence)
```


# References

https://iocscience.org/ejournal/index.php/mantik/article/download/2250/1884/7065
https://iocscience.org/ejournal/index.php/mantik

https://www.scilab.org/download/scilab-2023.1.0
