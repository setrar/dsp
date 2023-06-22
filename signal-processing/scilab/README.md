

```scilab
t = [0:0.1:5]
a=gca()
plot(t,t.*((t>=0)&(t<=2))-2*(t-3).*((t >2)&(t <=3)));
a.thickness =2;
a.y_location = "middle";
xtitle=('the signal x(t)')
```

# References

https://iocscience.org/ejournal/index.php/mantik/article/download/2250/1884/7065
https://iocscience.org/ejournal/index.php/mantik

https://www.scilab.org/download/scilab-2023.1.0
