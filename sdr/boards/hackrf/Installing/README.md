# Installing


To install the **HackRF CLI tools**, which include utilities like `hackrf_info`, `hackrf_transfer`, and `hackrf_spiflash`, follow these steps depending on your operating system:

---

### **1. Linux**
Most Linux distributions have HackRF tools available in their package repositories.

#### **Installation Command:**
For Debian/Ubuntu-based distributions:
```bash
sudo apt update
sudo apt install hackrf
```

For Fedora:
```bash
sudo dnf install hackrf
```

For Arch Linux:
```bash
sudo pacman -S hackrf
```

#### **Verify Installation:**
```bash
hackrf_info
```

---

### **2. macOS**
Use **Homebrew** to install HackRF tools.

#### **Installation Command:**
```bash
brew install hackrf
```
> Returns
```powershell
==> Auto-updating Homebrew...
Adjust how often this is run with HOMEBREW_AUTO_UPDATE_SECS or disable with
HOMEBREW_NO_AUTO_UPDATE. Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Auto-updated Homebrew!
==> Updated Homebrew from 4.4.12 (d09fb099a3) to 4.4.13 (e4809f4c47).
Updated 2 taps (homebrew/core and homebrew/cask).
==> New Formulae
acronym                  codevis                  leetcode-cli             oranda                   planus                   static-web-server
atac                     git-ignore               libesedb                 parallel-disk-usage      sentry-cli               swctl
cargo-public-api         humanlog                 neverest                 pipelight                sfml@2                   the-way
cargo-shuttle            languagetool-rust        odbc2parquet             pistache                 slumber                  typeshare
==> New Casks
alcove                   bookmacster@beta         font-fairfax-hd          font-pochaevsk           font-shafarik            stratoshark
bindiff                  fastdmg                  font-kreative-square     font-ponomar             mouseless

You have 50 outdated formulae and 13 outdated casks installed.


The 4.4.13 changelog can be found at:
  https://github.com/Homebrew/brew/releases/tag/4.4.13
==> Downloading https://ghcr.io/v2/homebrew/core/hackrf/manifests/2024.02.1
############################################################################################################################################### 100.0%
==> Fetching hackrf
==> Downloading https://ghcr.io/v2/homebrew/core/hackrf/blobs/sha256:700b528a727979c136ce3c8c009ff76ed6683fa32236684847652da562bef92e
############################################################################################################################################### 100.0%
==> Pouring hackrf--2024.02.1.arm64_sequoia.bottle.tar.gz
🍺  /opt/homebrew/Cellar/hackrf/2024.02.1: 26 files, 1.1MB
==> Running `brew cleanup hackrf`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```

#### **Verify Installation:**
```bash
hackrf_info
```
> Returns
```powershell
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

---

### **3. Windows**
For Windows, the HackRF tools are part of the precompiled HackRF software suite.

#### **Steps:**
1. Download the latest HackRF release from the [official GitHub page](https://github.com/greatscottgadgets/hackrf/releases).
2. Extract the zip file to a directory of your choice.
3. Add the `bin` directory to your system's PATH to use the CLI tools from anywhere.

#### **Verify Installation:**
Open Command Prompt or PowerShell and run:
```bash
hackrf_info
```

---

### **4. Build from Source**
If you need the latest version or want to build HackRF tools from source:

#### **Dependencies:**
Ensure the following are installed:
- `cmake`
- `gcc` (or an equivalent compiler)
- `libusb-1.0`
- `pkg-config`

#### **Build Steps:**
1. Clone the repository:
   ```bash
   git clone https://github.com/greatscottgadgets/hackrf.git
   cd hackrf/host
   ```

2. Build and install:
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   sudo make install
   sudo ldconfig
   ```

#### **Verify Installation:**
```bash
hackrf_info
```

---

### **Troubleshooting**
1. **Permission Errors (Linux):**
   - Add a udev rule to allow non-root access:
     ```bash
     sudo bash -c 'echo "SUBSYSTEM==\"usb\", ATTR{idVendor}==\"1d50\", ATTR{idProduct}==\"6089\", MODE=\"0666\"" > /etc/udev/rules.d/52-hackrf.rules'
     sudo udevadm control --reload-rules
     ```

2. **Driver Issues (Windows):**
   - Use **Zadig** to install the appropriate USB driver. Select "HackRF One" and replace the driver with **WinUSB**.

---

Once installed, the HackRF CLI tools allow you to interact with the HackRF device for tasks like configuring frequencies, streaming IQ data, and updating firmware.
