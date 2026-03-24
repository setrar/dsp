# FMC 

Here is the step-by-step journey of a signal from an antenna to a digital bit.


<image src=images/FMC_LVDS.png width='50%' height='50%' > </image>


---

## 1. The Analog Front End (The "Filter")
The electromagnetic wave hits your antenna. It is incredibly weak (microvolts) and surrounded by noise (WiFi, cellular, cosmic background).
* **LNA (Low Noise Amplifier):** The chip first boosts the signal without adding its own noise.
* **Mixing:** High-frequency radio waves (e.g., 2.4 GHz) wiggle too fast for any converter to "count." The chip uses a **Local Oscillator** to "beat" against the signal, shifting it down to a lower frequency (Baseband) that we can actually manage.

## 2. Sampling (The "Camera Shutter")
This is the most critical step. To turn a continuous wave into digital numbers, you have to "take a picture" of its voltage at specific intervals.
* Imagine a fast-moving swing. If you take a photo every 1 second, you can track where the swing is.
* **Nyquist Theorem:** You must take pictures (samples) at least **twice as fast** as the highest frequency you want to capture. For an AD9361 running at 60 MHz, it is taking 60 million "pictures" every second.

## 3. Quantization (The "Ruler")
Once you have a sample, you have a specific voltage (e.g., 0.72435... Volts). Computers can't store infinite decimals, so we use a **Quantizer**.
* The chip has a "ruler" with a fixed number of marks.
* In a **12-bit ADC** (like the AD9361), that ruler has $2^{12} = 4096$ marks.
* The chip looks at the voltage and says, "This is closest to mark number 2,950."

## 4. The "Flash" or "SAR" Process (The "Counting")
How does the chip actually *know* which mark it's on? There are two common ways:
* **Flash ADC:** It has 4096 individual comparators (little electronic scales) that all check the voltage at the same time. It's instant but power-hungry.
* **Successive Approximation (SAR):** It plays a game of "Higher or Lower." It asks: *Is the voltage higher than half-scale? Yes. Is it higher than 75%? No.* It does this 12 times very quickly to find the exact bit pattern.

## 5. Coding (The "Binary Output")
Now that we have the number (e.g., 2,950), the chip converts it into a binary string: `101110000110`.

---

### Why we need those LVDS pins we talked about:
The chip is doing this 60 million times a second. Every single "picture" results in 12 bits.
$$60,000,000 \times 12 = 720,000,000 \text{ bits per second.}$$

That is **720 Megabits per second** just flying out of the chip. 
* **Standard wires** would blur those bits together.
* **LVDS** (the "Language") uses two wires to keep those bits sharp and clear as they travel to the **FPGA**.

---

### Summary: The Chain of Events
1.  **Antenna:** Captures the EM wave.
2.  **Mixer:** Brings the frequency down to a manageable speed.
3.  **Sample & Hold:** Freezes the voltage for a split second.
4.  **ADC:** Measures that voltage against a "12-bit ruler."
5.  **LVDS Buffer:** Shoots the binary result across the FMC connector to the FPGA.


---

To understand the difference between the **AD9361** (your current path) and the **ADRV9009** (the JESD204 path), imagine upgrading from a standard garden hose to a high-pressure industrial pipe.

<image src=images/FMC_JESD204.png width='50%' height='50%' > </image>

Here is the journey of a signal for both.

---

## 1. The RF Front End (Same for both)
* **Antenna:** Picks up a 2.4 GHz signal.
* **LNA (Low Noise Amplifier):** Boosts the tiny voltage so it can be processed.
* **Mixer:** "Beats" the 2.4 GHz signal against a Local Oscillator to bring it down to **Baseband** (low frequency).

---

## 2. The Conversion (The "ADC" Step)
This is where the two chips start to diverge in power.

* **AD9361 (The Workhorse):**
    * **Resolution:** 12-bit "ruler."
    * **Speed:** Up to **61.44 MSPS**.
    * **Output:** It generates about **0.7 Gigabits** of data per second.
* **ADRV9009 (The Monster):**
    * **Resolution:** 16-bit "ruler" (much more detail).
    * **Speed:** Up to **245.76 MSPS** (4x faster).
    * **Output:** It generates roughly **20+ Gigabits** of data per second.

---

## 3. The "Packaging" (The Protocol Layer)
This is where the "language" changes completely.

### The AD9361 Path (Parallel LVDS)
1.  **Direct Mapping:** The chip takes the 12-bit number and says, "I have 12 physical wire pairs. I'll put Bit 0 on Pair 1, Bit 1 on Pair 2," and so on.
2.  **Timing:** It sends a **Clock signal** alongside the data so the FPGA knows exactly when to "grab" the bits.
3.  **Simple Flow:** It's like a 12-lane highway where cars (bits) just drive straight across the bridge.

### The ADRV9009 Path (JESD204B)
1.  **Framing:** The chip takes the 16-bit samples and packs them into "Frames."
2.  **Scrambling:** It mixes the bits up mathematically so you don't get repetitive patterns that cause EMI (interference).
3.  **8B/10B Encoding:** It turns every 8 bits into 10 bits. Why? To ensure there are enough "edges" (0-to-1 transitions) so the receiver can stay in sync without a separate clock wire.
4.  **Serialization:** It shoves all those bits into **Serializer** blocks that blast them out at **12.5 Gbps** per lane.

---

## 4. Crossing the FMC Connector

* **AD9361 + FMC LPC:** Uses about **12 to 24 pairs** of the "LA" pins on your connector. These are standard LVDS signals.
* **ADRV9009 + FMC HPC:** Uses the **"DP" pins** (High-speed Serial). It only needs **2 or 4 lanes** to move way more data than the AD9361, but it requires the "High Pin Count" version of the connector to access all those gigabit lanes.

---

## 5. Arrival at the FPGA

* **For AD9361:**
    * The bits hit standard **SelectIO** pins.
    * You use a simple "IDDR" (Input Double Data Rate) block to catch them.
    * **Result:** You have your 12-bit number ready to use.
* **For ADRV9009:**
    * The bits hit the **GT Transceivers**.
    * The **Clock Data Recovery (CDR)** circuit "hunts" for the clock inside the data.
    * The **JESD204 IP Core** descrambles, aligns, and "deframes" the data.
    * **Result:** You have your 16-bit number.

---

### Summary Table

| Feature | AD9361 (Your path) | ADRV9009 (JESD path) |
| :--- | :--- | :--- |
| **Bits per Sample** | 12-bit | 16-bit |
| **Data Interface** | **Parallel LVDS** | **JESD204B (Serial)** |
| **Clocking** | Separate Clock Wire | Clock is "hidden" in the Data |
| **FPGA Hard IP** | None (uses GPIO) | **GT Transceivers (SerDes)** |
| **FMC Requirement** | LPC is fine | Usually needs HPC |

---

<image src=images/FMC_PA_LVDS.png width='50%' height='50%' > </image>

<image src=images/FMC_PA_JESD204.png width='50%' height='50%' > </image>

---

# Tranceiver Design

Designing a transceiver (a device that can both transmit and receive signals) involves several steps that encompass both hardware and software aspects. Here’s a detailed guide on how to approach the design of a basic transceiver:

### 1. Define Requirements
- **Frequency Range:** Determine the range of frequencies your transceiver will operate on (e.g., HF, VHF, UHF, etc.).
- **Modulation Types:** Decide which modulation schemes (AM, FM, SSB, QAM, etc.) your transceiver will support.
- **Bandwidth:** Define the bandwidth of the signals you will handle.
- **Output Power:** Set the power level for transmission (e.g., milliwatts, watts).
- **Duplexing Method:** Decide between half-duplex (one direction at a time) or full-duplex (simultaneous transmit and receive).

### 2. Select Components
#### **RF Front-End**
- **Antenna:** Choose an antenna that covers your operating frequency range.
- **Filters:** Use bandpass filters to select the desired frequency band and reduce out-of-band noise.
- **Amplifiers:** Include Low Noise Amplifiers (LNA) for the receiver and Power Amplifiers (PA) for the transmitter.
- **Mixers:** Downconvert the received RF signal to an Intermediate Frequency (IF) or baseband, and upconvert the baseband or IF signal to RF for transmission.

#### **Analog-to-Digital and Digital-to-Analog Conversion**
- **ADC:** Convert the received analog signal to digital form for processing.
- **DAC:** Convert the processed digital signal back to analog form for transmission.

#### **FPGA/DSP/MCU**
- **FPGA/DSP:** Implement digital signal processing (e.g., modulation, demodulation, filtering, error correction).
- **Microcontroller (MCU):** Manage control functions and user interface.

#### **Power Supply**
- Ensure the power supply meets the voltage and current requirements for all components.

### 3. High-Level Design
#### **Receiver Path:**
1. **Antenna to RF Front-End:**
   - The signal is captured by the antenna and passed through a bandpass filter to isolate the desired frequency range.
   - The filtered signal is amplified using an LNA.
   
2. **Mixing and Downconversion:**
   - The RF signal is mixed with a local oscillator (LO) signal to downconvert it to an IF or baseband frequency.

3. **Analog-to-Digital Conversion:**
   - The downconverted signal is passed through an ADC to convert it to a digital signal.

4. **Digital Signal Processing:**
   - The digital signal is processed to demodulate and filter it, extracting the desired information.

#### **Transmitter Path:**
1. **Digital Signal Processing:**
   - The signal to be transmitted is generated and processed digitally (e.g., modulation, filtering) in the FPGA/DSP.

2. **Digital-to-Analog Conversion:**
   - The processed digital signal is converted to an analog signal using a DAC.

3. **Upconversion and Mixing:**
   - The baseband or IF signal is upconverted to the desired RF frequency using a mixer and LO.

4. **Amplification:**
   - The RF signal is amplified using a power amplifier (PA).

5. **Transmission:**
   - The amplified signal is passed through a bandpass filter to remove harmonics and then transmitted through the antenna.

### 4. Circuit Design and PCB Layout
- **Schematic Design:** Design the schematic diagram using CAD tools (e.g., KiCAD, Altium Designer) to interconnect all components.
- **PCB Layout:** Layout the printed circuit board (PCB) considering signal integrity, power distribution, and RF considerations like impedance matching.
- **Simulation:** Use circuit simulation tools to verify the design before fabrication.

### 5. FPGA/DSP Programming
- **HDL Code:** Write HDL code (e.g., Verilog or VHDL) to implement digital signal processing blocks for modulation, demodulation, filtering, etc.
- **Testbench:** Develop a testbench to simulate the FPGA logic and verify its functionality.
- **Synthesis and Implementation:** Synthesize and implement the FPGA design, generating a bitstream to program the FPGA.

### 6. Software Development
- **Control Software:** Develop software for controlling the transceiver, including frequency tuning, mode selection, and user interface.
- **Communication Protocol:** Implement protocols for data communication if needed (e.g., UART, SPI, I2C).

### 7. Integration and Testing
- **Hardware Integration:** Assemble the hardware components, ensuring proper connections and operation.
- **Signal Testing:** Use test equipment like oscilloscopes, spectrum analyzers, and signal generators to test and calibrate the transceiver.
- **Field Testing:** Test the transceiver in real-world conditions, ensuring it performs as expected.

### 8. Iteration and Optimization
- **Performance Tuning:** Optimize the performance by adjusting gain levels, filter bandwidths, and other parameters.
- **Bug Fixing:** Identify and fix any issues in the design, whether in hardware, FPGA logic, or software.
- **Documentation:** Document the design, including schematics, PCB layout, software, and user instructions.

### 9. Compliance and Certification
- **Regulatory Compliance:** Ensure the transceiver meets regulatory requirements for RF emissions and safety (e.g., FCC, CE).
- **Certification:** If needed, obtain certifications for the transceiver.

### 10. Final Product
- **Production:** Once the design is finalized, prepare for mass production, including sourcing components and manufacturing PCBs.
- **User Manual:** Create a user manual for the end-users, explaining operation, maintenance, and troubleshooting.

### Example Project Workflow:
1. **Start with a Reference Design:** Look at open-source transceiver designs, such as those from the GNU Radio project or HackRF.
2. **Modify and Customize:** Based on your specific requirements, modify the reference design to suit your needs.
3. **Test Iteratively:** Prototype and test each stage (e.g., RF front-end, FPGA logic) before integrating them.
4. **Optimize for Performance:** Focus on optimizing the signal path to minimize noise and maximize efficiency.

By following these steps, you can design a functional and efficient transceiver for a wide range of applications, from amateur radio to industrial communications systems.
