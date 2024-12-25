# Flashing the board

To initialize a **HackRF One** board, flashing the FPGA and firmware ensures the device is running the latest software and is ready for operation. Here’s how to do it:

### **Step 1: Download the Latest Firmware and FPGA Bitstream**
Get the latest firmware and FPGA files from the [official HackRF GitHub releases page](https://github.com/greatscottgadgets/hackrf/releases).

- Firmware: `hackrf_one_usb.bin`
- FPGA Bitstream: `hackrf_one_fpga.bit`

Save these files to a convenient directory on your computer.

---

### **Step 2: Flash the Firmware**
Flashing the firmware updates the device's internal memory with the latest control logic.

#### **Steps:**
1. Put the HackRF in DFU (Device Firmware Upgrade) mode:
   - Press and hold the **DFU** button on the HackRF.
   - Connect the HackRF to your computer via USB while holding the button.
   - Release the button after a few seconds.

2. Use the `hackrf_spiflash` tool to write the firmware:
   ```bash
   hackrf_spiflash --write hackrf-2024.02.1/firmware-bin/hackrf_one_usb.bin
   ```
   > Returns
   ```powershell
   File size 42248 bytes.
   Checking target device compatibility
   Erasing SPI flash.
   Writing 42248 bytes at 0x000000.
   (gnuradio-env) valiha@ankarana Flashing % hackrf_info                                                             
   hackrf_info version: 2024.02.1
   libhackrf version: 2024.02.1 (0.9)
   Found HackRF
   Index: 0
   Serial number: 000000000000000078d063dc2c657323
   Board ID Number: 4 (HackRF One)
   Firmware Version: n_240227 (API:1.08)
   Part ID Number: 0xa000cb3c 0x004f475d
   Hardware Revision: r9
   Hardware does not appear to have been manufactured by Great Scott Gadgets.
   Hardware supported by installed firmware:
       HackRF One
   ```

   

3. Reboot the device:
   - Unplug the HackRF from the USB port and plug it back in.

---

### **Step 3: Flash the FPGA Bitstream**
The FPGA bitstream configures the onboard FPGA to function as intended.

#### **Steps:**
1. Use the `hackrf_cpldjtag` tool to flash the FPGA:
   ```bash
   hackrf_cpldjtag -x hackrf_one_fpga.bit
   ```

2. Verify the FPGA update by checking the firmware version:
   ```bash
   hackrf_info
   ```

   The output should indicate the FPGA version.

---

### **Step 4: Test the Initialization**
Run the following command to ensure the HackRF is working:
```bash
hackrf_info
```
Expected output:
- Board ID: HackRF One
- Firmware Version: (e.g., 2023.x.x)
- Part ID Number and Serial Number should be populated.

---

### Troubleshooting
1. **Device Not Recognized:**
   - Ensure the USB drivers are correctly installed (e.g., use Zadig on Windows to install WinUSB for HackRF).
   - Use a different USB port or cable.

2. **DFU Mode Not Detected:**
   - Ensure you press the DFU button before connecting the HackRF to USB.

3. **Permission Issues (Linux):**
   - Add udev rules for non-root access:
     ```bash
     sudo bash -c 'echo "SUBSYSTEM==\"usb\", ATTR{idVendor}==\"1d50\", ATTR{idProduct}==\"6089\", MODE=\"0666\"" > /etc/udev/rules.d/52-hackrf.rules'
     sudo udevadm control --reload-rules
     ```

---

### Summary of Commands
| Operation               | Command                                    |
|-------------------------|--------------------------------------------|
| Flash firmware          | `hackrf_spiflash -w hackrf_one_usb.bin`   |
| Flash FPGA bitstream    | `hackrf_cpldjtag -x hackrf_one_fpga.bit`  |
| Verify initialization   | `hackrf_info`                             |

Let me know if you need further assistance!
