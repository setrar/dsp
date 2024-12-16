# BladeRF againt GNURadio (companion)

- [ ] Activate `gnuradio-env`

```
conda activate gnuradio-env
```

- [ ] check that bladerf modules are loaded

```
 conda list | grep bladerf
```
> Returns
```powershell
libbladerf2               2024.05              h99b78c6_0    conda-forge
soapysdr-module-bladerf   0.4.1                h8167e30_0    conda-forge
```

- [ ] Open the GRC file (`GRC` `G`NU`R`adio `C`ompanion file)

```
gnuradio-companion fm_receiver_MWK.grc
```

<img src=images/fm_receiver.png width='80%' height='80%' > </img>

- [ ] Generate and run


| | |
|-|-|
| <img src=images/fm_receiver_1.png width='' height='' > </img> | <img src=images/fm_receiver_2.png width='' height='' > </img> |
| <img src=images/fm_receiver_3.png width='' height='' > </img> | <img src=images/fm_receiver_4.png width='' height='' > </img> |
