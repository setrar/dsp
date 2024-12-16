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


This GNU Radio flowgraph represents a **Wideband FM (WBFM) receiver** using the **BladeRF Source** as the SDR input, processing the RF signal and outputting audio at a rate of **44.1 kHz** through the Audio Sink.

Below is the detailed explanation of each block and the signal flow:

#### **1. Soapy BladeRF Source**
- **Purpose**: This block serves as the input source for the SDR hardware, the BladeRF.
- **Device Arguments**:
   - `nu...h=8192` likely includes device configuration parameters like buffer size (8192).
- **Sample Rate**: `6.44 MSPS` (Mega Samples per Second).
   - This sets the rate at which the BladeRF samples the incoming RF signal.
- **Center Frequency**: `96.8 MHz`.
   - The frequency is set to receive an FM broadcast station at **96.8 MHz**.
- **Output**: Complex baseband signal sampled at 6.44 MSPS.

#### **2. Low Pass Filter**
- **Purpose**: Filters the incoming baseband signal to isolate the FM channel of interest and reduce unnecessary high-frequency noise.
- **Parameters**:
   - **Decimation**: `25`
     - Reduces the sample rate by a factor of 25.
     - New sample rate = $6.44\ \text{MSPS} / 25 = 257.6\ \text{kSPS}$.
   - **Gain**: `2` (multiplier applied to the signal amplitude).
   - **Cutoff Frequency**: `100 kHz`
     - This defines the bandwidth of the desired FM signal.
   - **Transition Width**: `10 kHz`
     - This specifies how sharp the filter cutoff is.
   - **Window**: **Hamming**
     - A windowing function used to shape the filter response.
   - **Beta**: `6.76` (specific to Hamming window behavior).

- **Output**: The filtered and decimated signal is passed at **~250 kSPS**.

#### **3. WBFM Receive**
- **Purpose**: Demodulates the Wideband FM signal.
- **Parameters**:
   - **Quadrature Rate**: `250 kSPS`
     - Matches the sample rate after decimation by the Low Pass Filter.
   - **Audio Decimation**: `1`
     - No further decimation is applied to the audio signal.

- **Output**: The demodulated audio signal at **250 kSPS**.

#### **4. Rational Resampler**
- **Purpose**: Resamples the audio signal to match the desired audio sink sample rate of **44.1 kHz**.
- **Parameters**:
   - **Interpolation**: `441`
   - **Decimation**: `2.5k` (or 2500)
     - Resampling factor: $ \frac{441}{2500} $.

- **Resampling Calculation**:
   Starting from **250 kSPS**, the new rate becomes:
   $
   \text{New Rate} = 250,000 \times \frac{441}{2500} \approx 44,100\ \text{Hz}.
   $

- **Output**: Audio signal at **44.1 kHz**, suitable for playback.

#### **5. Audio Sink**
- **Purpose**: Outputs the audio signal to the system's sound card or speakers.
- **Sample Rate**: `44.1 kHz`
   - This matches the standard audio sampling rate for playback.

#### **6. QT GUI Sink**
- **Purpose**: Visualizes the frequency spectrum of the signal for debugging or monitoring.
- **Parameters**:
   - **FFT Size**: `2048` (number of points in the FFT).
   - **Center Frequency**: Dynamic, depending on the BladeRF configuration.
   - **Bandwidth**: `6.44 MHz` (matches the original sample rate).
   - **Update Rate**: `10 Hz`.

This block allows you to visually confirm the signal reception and filtering.

#### **7. Variables**
- **`samp_rate`**: Set to `6.44 MSPS`, controlling the BladeRF Source sample rate.
- **`down_rate`**: `250 kSPS`, the sample rate after decimation by the Low Pass Filter.

### **Signal Flow Summary**
1. **BladeRF Source**: Samples the RF signal at 96.8 MHz and 6.44 MSPS.
2. **Low Pass Filter**: Filters and decimates the signal to ~250 kSPS.
3. **WBFM Receive**: Demodulates the FM signal.
4. **Rational Resampler**: Resamples the audio signal to 44.1 kHz.
5. **Audio Sink**: Plays the audio output.
6. **QT GUI Sink**: Displays the signal spectrum.

### **Output**
- You receive clear audio from the FM station at 96.8 MHz, demodulated and played back through the audio output at **44.1 kHz**.
- The QT GUI Sink shows the filtered and demodulated signal spectrum for real-time visualization.

- [ ] Generate and run


| | |
|-|-|
| <img src=images/fm_receiver_1.png width='' height='' > </img> | <img src=images/fm_receiver_2.png width='' height='' > </img> |
| <img src=images/fm_receiver_3.png width='' height='' > </img> | <img src=images/fm_receiver_4.png width='' height='' > </img> |
