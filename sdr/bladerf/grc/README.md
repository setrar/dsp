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

| |
|-|
| <img src=images/fm_receiver.png width='' height='' > </img> |


### **Compact Explanation of the Flowgraph**

1. **Soapy BladeRF Source**  
   - Samples the RF signal at **96.8 MHz** with a **6.44 MSPS** rate.  
   - Outputs complex baseband data.

2. **Low Pass Filter**  
   - **Decimation**: 25 → Reduces sample rate to **~250 kSPS**.  
   - **Cutoff Frequency**: 100 kHz → Isolates FM signal.

3. **WBFM Receive**  
   - Demodulates the Wideband FM signal.  
   - Outputs audio signal at **250 kSPS**.

4. **Rational Resampler**  
   - **Interpolation**: 441, **Decimation**: 2500 → Resamples audio to **44.1 kHz**.

5. **Audio Sink**  
   - Plays the audio signal at **44.1 kHz** on the system’s sound output.

6. **QT GUI Sink**  
   - Displays the spectrum of the received and filtered signal for monitoring.

---

### **Signal Flow**  
**BladeRF → Low Pass Filter → WBFM Demodulation → Resampler → Audio Playback**  
**(96.8 MHz → 6.44 MSPS → 250 kSPS → 44.1 kHz)**

- [ ] Generate and run


| | |
|-|-|
| <img src=images/fm_receiver_1.png width='' height='' > </img> | <img src=images/fm_receiver_2.png width='' height='' > </img> |
| <img src=images/fm_receiver_3.png width='' height='' > </img> | <img src=images/fm_receiver_4.png width='' height='' > </img> |
