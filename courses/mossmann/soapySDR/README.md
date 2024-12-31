# SoapySDR

- [ ] Checking vitals

```
SoapySDRUtil --probe="driver=hackrf"
```
> Returns
```powershell
######################################################
##     Soapy SDR -- the SDR abstraction library     ##
######################################################

Probe device driver=hackrf
[INFO] Opening HackRF One #0 78d063dc2c657323...

----------------------------------------------------
-- Device identification
----------------------------------------------------
  driver=HackRF
  hardware=HackRF One
  clock source=external
  part id=a000cb3c004f475d
  serial=000000000000000078d063dc2c657323
  version=2024.02.1

----------------------------------------------------
-- Peripheral summary
----------------------------------------------------
  Channels: 1 Rx, 1 Tx
  Timestamps: NO
  Other Settings:
     * Antenna Bias - Antenna port power control.
       [key=bias_tx, default=false, type=bool]

----------------------------------------------------
-- RX Channel 0
----------------------------------------------------
  Full-duplex: NO
  Supports AGC: NO
  Stream formats: CS8, CS16, CF32, CF64
  Native format: CS8 [full-scale=128]
  Stream args:
     * Buffer Count - Number of buffers per read.
       [key=buffers, units=buffers, default=15, type=int]
  Antennas: TX/RX
  Full gain range: [0, 116] dB
    LNA gain range: [0, 40, 8] dB
    AMP gain range: [0, 14, 14] dB
    VGA gain range: [0, 62, 2] dB
  Full freq range: [0, 7250] MHz
    RF freq range: [0, 7250] MHz
  Sample rates: 1, 2, 3, 4, 5, ..., 16, 17, 18, 19, 20 MSps
  Filter bandwidths: 1.75, 2.5, 3.5, 5, 5.5, ..., 14, 15, 20, 24, 28 MHz

----------------------------------------------------
-- TX Channel 0
----------------------------------------------------
  Full-duplex: NO
  Supports AGC: NO
  Stream formats: CS8, CS16, CF32, CF64
  Native format: CS8 [full-scale=128]
  Stream args:
     * Buffer Count - Number of buffers per read.
       [key=buffers, units=buffers, default=15, type=int]
  Antennas: TX/RX
  Full gain range: [0, 61] dB
    VGA gain range: [0, 47, 1] dB
    AMP gain range: [0, 14, 14] dB
  Full freq range: [0, 7250] MHz
    RF freq range: [0, 7250] MHz
  Sample rates: 1, 2, 3, 4, 5, ..., 16, 17, 18, 19, 20 MSps
  Filter bandwidths: 1.75, 2.5, 3.5, 5, 5.5, ..., 14, 15, 20, 24, 28 MHz
```

The output from `SoapySDRUtil --probe="driver=hackrf"` indicates that the HackRF device is **functioning properly** at the hardware level and is recognized by the SoapySDR framework. Here's an analysis of the key aspects:

---

### **Positive Signs**
1. **Device Recognition**:
   - The HackRF One is recognized with its serial number and firmware version.
   - The driver (`HackRF`) and hardware (`HackRF One`) are correctly identified.

2. **Capabilities Detected**:
   - **RX and TX Channels**:
     - Both transmit (TX) and receive (RX) channels are identified.
     - Frequency range: `0 - 7250 MHz`, which matches the HackRF specifications.
   - **Sample Rates**:
     - The listed rates (`1 MSps to 20 MSps`) are within the expected operating range.
   - **Gain Control**:
     - Full gain range for RX and TX includes:
       - **LNA (Low Noise Amplifier)**: Up to 40 dB.
       - **AMP (RF Amplifier)**: 14 dB.
       - **VGA (Variable Gain Amplifier)**: RX up to 62 dB, TX up to 47 dB.

3. **Firmware Version**:
   - The firmware version (`2024.02.1`) matches the latest HackRF firmware.

4. **Driver Integration**:
   - The HackRF driver (`libHackRFSupport.so`) appears to be functioning well, allowing for interaction with the device.

5. **No Errors**:
   - There are no error messages indicating initialization or communication issues.

---

### **Minor Notes**
1. **Clock Source**:
   - The `clock source=external` suggests an external clock is being used (if intentionally configured, this is fine).

2. **Timestamps**:
   - Timestamps are listed as `NO`, which is normal for HackRF since it doesn't natively support timestamping.

3. **Full-Duplex**:
   - The device does not support full-duplex operation (simultaneous RX and TX). This is standard for HackRF.

---

### **Conclusion**
The HackRF is operating correctly based on this output. It is ready for transmission and reception tasks as expected. The key aspects, including gain ranges, frequency coverage, sample rates, and format support, are consistent with HackRF's capabilities.

If you still encounter issues in operation:
- Ensure correct gain settings (adjust RF/AMP/VGA gain as needed).
- Check for proper antenna connections.
- Verify your flowgraph or software configurations in GNU Radio, Python, or other SDR tools.

The output indicates the HackRF is **functioning properly**. Key points:

- **Device Recognized**: HackRF One detected with correct serial (`000000000000000078d063dc2c657323`) and firmware (`2024.02.1`).
- **Capabilities**:
  - **Frequency Range**: 0–7250 MHz (RX/TX).
  - **Sample Rates**: 1–20 MSps.
  - **Gain**:
    - RX: LNA (0–40 dB), AMP (0–14 dB), VGA (0–62 dB).
    - TX: AMP (0–14 dB), VGA (0–47 dB).
- **Driver**: `HackRF` loaded via SoapySDR.
- **Full-Duplex**: Not supported (normal for HackRF).
- **Clock Source**: External.

No errors were found. Device is ready for use!

