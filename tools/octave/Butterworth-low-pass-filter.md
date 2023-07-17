# Filtering a time-series in Octave/Sciplot

First create some points for a time series. In this case we'll create one second of random data sampled at 44 kHz.

```octave
sampling_t = 1/44000;
t = 0:sampling_t:1;
x = rand(size(t));
```

Have a look at the time series

```octave
plot(t,x);
```

<img src=images/gnuplot_plot_1a.png width=50% height=50% > </img>


Have a look at its spectrum (it is mostly uniform, what we would expect from noise)

```octave
specgram(x)
```

<img src=images/gnuplot_plot_2a.png width=50% height=50% > </img>

Now we'll use a built-in function to create a third order Butterworth low-pass filter with cutoff frequency pi*0.1 radians

```octave
[b,a] = butter(3,0.1)
```
> Response:
```octave
b =

   2.8982e-03   8.6946e-03   8.6946e-03   2.8982e-03

a =

   1.0000  -2.3741   1.9294  -0.5321
```

Now filter the time series.

```octave
y = filter(b,a,x);
```

# References

- [ ] [Filtering a time-series in Octave/Sciplot](https://en.wikibooks.org/wiki/Digital_Signal_Processing/Digital_Filters#Filtering_a_time-series_in_Octave/Sciplot)
