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


# References

- [ ] [Filtering a time-series in Octave/Sciplot](https://en.wikibooks.org/wiki/Digital_Signal_Processing/Digital_Filters#Filtering_a_time-series_in_Octave/Sciplot)
