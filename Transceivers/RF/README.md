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

