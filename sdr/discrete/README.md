
- [ ] [Explanation of a SDR receiver schematic?](https://www.reddit.com/r/AskElectronics/comments/jqdp8o/explanation_of_a_sdr_receiver_schematic/)

This circuit is a **Direct Conversion Receiver front-end**, specifically using a **Tayloe Quadrature Sampling Detector (QSD)**. It is commonly used in Software Defined Radio (SDR) homebrew designs to capture Radio Frequency (RF) signals and down-convert them into In-phase (I) and Quadrature (Q) analog baseband signals, which can then be processed by a computer sound card.

Here is how the main sections of the circuit work together to achieve this:

### 1. RF Input and Buffer (Center-Left)

* **Antenna & Tuning:** The RF signal enters from the antenna ($A_{HT}, F_c$) through a bandpass filter formed by inductors $L1, L2$ and capacitors $C12, C13$ to select the desired frequency range.
* **RF Buffer (T1):** The JFET transistor $T1$ (BF244A or Russian КП303Е) acts as a high-impedance buffer/amplifier. It stabilizes the signal from the antenna and passes it through capacitor $C14$ to the mixing stage.

### 2. Local Oscillator & Quadrature Clock Generator (Bottom)

* **High-Frequency Oscillator (Bottom Right):** Transistors $T2$ and $T3$ (KT368A) form a crystal oscillator running at a frequency of $4F_c$ (four times the target receive frequency, determined by crystal $Cr1$).
* **Phase Splitter (Bottom Left):** This $4F_c$ clock signal drives a 74HC74 dual D-type flip-flop configured as a Johnson counter. It divides the clock frequency by 4 down to the target frequency ($F_c$) and splits it into four distinct phases: $0^\circ, 90^\circ, 180^\circ,$ and $270^\circ$.

### 3. Tayloe Quadrature Mixer (Center)

* **Diode Bridges (VD1 to VD16):** Instead of standard IC switches (like a 74HC4051 often seen in Tayloe mixers), this circuit uses four separate diode rings driven by the $0^\circ, 90^\circ, 180^\circ,$ and $270^\circ$ phase lines via current-limiting resistors ($R1, R9, R10, R11$).
* **Sampling:** As each phase line goes high sequentially, it turns on its respective diode bridge, sampling the RF signal onto the storage capacitors ($C5, C6, C7, C19$). This mathematical sampling down-converts the RF signal directly to an audio/baseband frequency.

### 4. Low-Noise Preamplifier (Top Right)

* **Differential Amplification:** The sampled voltages pass through DC-blocking capacitors ($C1, C2, C3, C4$) into a dual operational amplifier, **NE5532** ($OP1$).
* **I/Q Output Generation:** The op-amps are configured as differential amplifiers. By combining the $0^\circ/180^\circ$ channels and the $90^\circ/270^\circ$ channels, they output two distinct audio streams: the **In-phase (I)** and **Quadrature (Q)** signals.
* **Stereo Jack ($J$):** The final amplified I and Q signals exit through capacitors $C15$ and $C16$ to a stereo output jack ($J$), ready to be plugged into a PC's line-in port for software demodulation (SDR software).

## BOM

Based on the provided schematic, here is the Bill of Materials (BOM) broken down by component types:

### **Integrated Circuits (ICs) & Regulators**

* **VR1:** `7805` (5V Linear Voltage Regulator) (1)
* **OP1:** `NE5532` (Dual Low-Noise Operational Amplifier) (1)
* **D-FF2 / D1:** `74HC74` / `1553TM2` (Dual D-Type Flip-Flop) (1)

### **Transistors**

* **T1:** `BF244A` or `КП303Е` (N-Channel JFET) (1)
* **T2, T3:** `KT368A` (NPN High-Frequency Transistors) (2)

### **Diodes**

* **VD1 to VD16:** `1N4148` or `КД521А` (Fast Switching Diodes, total of 4 diode bridges) (16)

### **Resistors**

* **300 Ω:** R8 (1)
* **390 Ω:** R18, R23 (2)
* **470 Ω:** R20, R24 (2)
* **680 Ω:** R1, R9, R10, R11 (4)
* **1 kΩ:** R3, R4, R5, R6 (4)
* **10 kΩ:** R17, R19, R21, R22 (4)
* **22 kΩ:** R16 (1)
* **47 kΩ (Potentiometer/Trimmer):** R15 (1)
* **82 kΩ:** R12 (1)
* **100 kΩ:** R7, R13, R14, R2 (4)

### **Capacitors**

* **51 pF:** C12 (1)
* **100 pF:** C20 (1)
* **10 nF:** C21 (1)
* **100 nF (0.1 µF):** C5, C6, C7, C8, C10, C14, C15, C16, C17, C19 (10)
* **1 µF:** C1, C2, C3, C4 (4)
* **10 µF (Electrolytic):** C9, C18 (2)
* **470 µF (Electrolytic):** C11 (1)
* *Note: C13 value is omitted from the schematic, but forms a tuning pair with C12.*

### **Inductors & Coils**

* **L1, L2:** Custom coupled RF tuning coils / inductors (2)

### **Miscellaneous**

* **Cr1:** `4Fc` Crystal Oscillator (1)
* **J:** Stereo Audio Jack (3.5mm) (1)

## BOM 2

Here is a modified Bill of Materials (BOM) using modern keywords and part numbers that are **extremely easy to find in cheap, multi-pack lots on AliExpress**.

### **Active Semiconductors & ICs**

* **VR1:** `L7805CV` (TO-220 Package) — Standard 5V regulator, usually sold in packs of 5 or 10.
* **OP1:** `NE5532P` (DIP-8 Package) — Choose a reliable brand variant listed like TI (Texas Instruments) or Signetics if buying from component shops.
* **D-FF2 / D1:** `74HC74N` or `74AC74N` (DIP-14 Package) — Advanced CMOS variant (**74AC74**) is highly recommended here for faster switching edges in RF mixers.
* **T1:** `J113` (TO-92 Package) — Search exactly for *"J113 JFET TO-92"*. It is completely replacing the old Soviet JFET and is widely available in 10-piece lots.
* **T2, T3:** `2N3904` (TO-92 Package) — Standard high-frequency oscillator switching NPN. Alternatively, search for *"S9018 TO-92"* which is an incredibly cheap Chinese UHF transistor perfect for small RF projects.
* **VD1 to VD16:** `1N4148` (DO-35 Glass Package) — Standard switching diode, sold in massive bags of 100pcs for pennies.

### **Resistors & Potentiometers**

*(Search for a 1/4W Metal Film Resistor Assortment kit if you don't want to buy values individually)*

* **300 Ω:** (1)
* **390 Ω:** (2)
* **470 Ω:** (2)
* **680 Ω:** (4)
* **1 kΩ:** (4)
* **10 kΩ:** (4)
* **22 kΩ:** (1)
* **82 kΩ:** (1)
* **100 kΩ:** (4)
* **R15:** `3296W-1-503LF` (50kΩ Multi-turn Trimming Potentiometer) — Safely replaces the 47k potentiometer with an easily available 50k standard type.

### **Capacitors**

*(Search for "Monolithic Ceramic Capacitor Kit" and "Electrolytic Capacitor Kit" to grab these standard values)*

* **51 pF:** (1) (Ceramic Disc)
* **100 pF:** (1) (Ceramic Disc)
* **10 nF (103):** (1) (Monolithic Ceramic)
* **100 nF (104):** (10) (Monolithic Ceramic)
* **1 µF (105):** (4) (Monolithic Ceramic or Small Electrolytic)
* **10 µF:** (2) (Electrolytic, 25V or 50V)
* **470 µF:** (1) (Electrolytic, 16V or 25V)

### **Hardware & Plugs**

* **J:** `PJ-307` or `PJ-358` 3.5mm Stereo Jack (DIP/PCB mount) — Common 5-pin/3-pin breadboard-friendly audio jacks.
* **Cr1:** Search for *"HC-49S Crystal"* followed by your specific frequency choice.

---

**Pro-Tip for AliExpress searching:** Try buying these components from a single vendor storefront specializing in components (such as *Aideepen, WJOEE, or Great Wall Electronics*) so they ship together in a unified package.

