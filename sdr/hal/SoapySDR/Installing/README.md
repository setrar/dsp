# Tools

## :o: Install

- [ ] :apple: MacOS

* Install

```
brew install soaopysdr
```

* Verify

```
brew info soapysdr
```
> Returns
```powershell
==> soapysdr: stable 0.8.1 (bottled), HEAD
Vendor and platform neutral SDR support library
https://github.com/pothosware/SoapySDR/wiki
Installed
/opt/homebrew/Cellar/soapysdr/0.8.1_1 (40 files, 2.1MB) *
  Poured from bottle using the formulae.brew.sh API on 2024-03-24 at 07:48:50
From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/s/soapysdr.rb
License: BSL-1.0
==> Dependencies
Build: cmake ✘, swig ✘
Required: python@3.13 ✔
==> Options
--HEAD
	Install HEAD version
==> Analytics
install: 231 (30 days), 735 (90 days), 3,421 (365 days)
install-on-request: 55 (30 days), 223 (90 days), 773 (365 days)
build-error: 0 (30 days)
```

## :a: Example Usages

- [ ] Probe

```
soapySDRUtil --probe="driver=bladerf"
```
> Returns
```powershell
######################################################
##     Soapy SDR -- the SDR abstraction library     ##
######################################################

Probe device driver=bladerf
[INFO] bladerf_open_with_devinfo()
[INFO] bladerf_get_serial() = b1f3da6672d54d37a2cd7c4d3e3c2e25
[INFO] setSampleRate(Rx, 0, 4.000000 MHz), actual = 4.000000 MHz
[INFO] setSampleRate(Tx, 0, 4.000000 MHz), actual = 4.000000 MHz

----------------------------------------------------
-- Device identification
----------------------------------------------------
  driver=bladeRF
  hardware=bladerf2
  fpga_size=49
  fpga_version=0.11.1
  fw_version=2.4.0-git-a3d5c55f
  serial=b1f3da6672d54d37a2cd7c4d3e3c2e25

----------------------------------------------------
-- Peripheral summary
----------------------------------------------------
  Channels: 2 Rx, 2 Tx
  Timestamps: YES
  Clock sources: internal, ref_in
  Sensors: RFIC_TEMP
     * RFIC_TEMP (RFIC Temperature): 17.544001 C
        Temperature in degrees C
  Registers: RFIC
  Other Settings:
     * Loopback Mode - Enable/disable internal loopback
       [key=loopback, default=none, type=string, options=(none, firmware, rf_bist)]
     * Reset Device - Reset the device, causing it to reload its firmware from flash.
       [key=reset, default=false, type=bool, options=(true, false)]
     * Erase the FPGA region of flash - Erase the FPGA region of SPI flash, effectively disabling FPGA autoloading.
       [key=erase_stored_fpga, default=false, type=bool, options=(true, false)]
     * Write FX3 firmware to flash - Write FX3 firmware to the bladeRF's SPI flash from the provided file path. This will require a power cycle to take effect.
       [key=flash_firmware, type=string]
     * Write to the FPGA region of flash - Write FPGA image to the bladeRF's SPI flash from the provided file path and enable FPGA loading from SPI flash at power on.
       [key=flash_fpga, type=string]
     * Clear out a firmware signature word in flash and jump to FX3 bootloader - The device will continue to boot into the FX3 bootloader across power cycles until new firmware is written to the device.
       [key=jump_to_bootloader, default=false, type=bool, options=(true, false)]
     * Load device's FPGA - Load device's FPGA from the provided file path. Note that this FPGA configuration will be reset at the next power cycle.
       [key=load_fpga, type=string]
  GPIOs: CONFIG, EXPANSION

----------------------------------------------------
-- RX Channel 0
----------------------------------------------------
  Full-duplex: YES
  Supports AGC: YES
  Stream formats: CS16, CF32
  Native format: CS16 [full-scale=2048]
  Stream args:
     * Buffer Count - Number of async USB buffers.
       [key=buffers, units=buffers, default=32, type=int]
     * Buffer Length - Number of bytes per USB buffer, the number must be a multiple of 1024.
       [key=buflen, units=bytes, default=4096, type=int]
     * Num Transfers - Number of async USB transfers. Use 0 for automatic
       [key=transfers, units=bytes, default=0, type=int, range=[0, 32]]
  Antennas: RX
  Corrections: DC offset, IQ balance
  Full gain range: [-15, 60, 1] dB
    full gain range: [-4, 71, 1] dB
  Full freq range: [70, 6000] MHz
    RF freq range: [70, 6000] MHz
  Sample rates: [0.520834, 15.36], [15.36, 30.72], [30.72, 61.44] MSps
  Filter bandwidths: [0.2, 56] MHz
  Sensors: PRE_RSSI, SYM_RSSI
     * PRE_RSSI (Preamble RSSI): -78 dB
        Preamble RSSI in dB (first calculated RSSI result)
     * SYM_RSSI (Symbol RSSI): -88 dB
        Symbol RSSI in dB (most recent RSSI result)

----------------------------------------------------
-- RX Channel 1
----------------------------------------------------
  Full-duplex: YES
  Supports AGC: YES
  Stream formats: CS16, CF32
  Native format: CS16 [full-scale=2048]
  Stream args:
     * Buffer Count - Number of async USB buffers.
       [key=buffers, units=buffers, default=32, type=int]
     * Buffer Length - Number of bytes per USB buffer, the number must be a multiple of 1024.
       [key=buflen, units=bytes, default=4096, type=int]
     * Num Transfers - Number of async USB transfers. Use 0 for automatic
       [key=transfers, units=bytes, default=0, type=int, range=[0, 32]]
  Antennas: RX
  Corrections: DC offset, IQ balance
  Full gain range: [-15, 60, 1] dB
    full gain range: [-4, 71, 1] dB
  Full freq range: [70, 6000] MHz
    RF freq range: [70, 6000] MHz
  Sample rates: [0.520834, 15.36], [15.36, 30.72], [30.72, 61.44] MSps
  Filter bandwidths: [0.2, 56] MHz
  Sensors: PRE_RSSI, SYM_RSSI
     * PRE_RSSI (Preamble RSSI): -76 dB
        Preamble RSSI in dB (first calculated RSSI result)
     * SYM_RSSI (Symbol RSSI): -87 dB
        Symbol RSSI in dB (most recent RSSI result)

----------------------------------------------------
-- TX Channel 0
----------------------------------------------------
  Full-duplex: YES
  Supports AGC: NO
  Stream formats: CS16, CF32
  Native format: CS16 [full-scale=2048]
  Stream args:
     * Buffer Count - Number of async USB buffers.
       [key=buffers, units=buffers, default=32, type=int]
     * Buffer Length - Number of bytes per USB buffer, the number must be a multiple of 1024.
       [key=buflen, units=bytes, default=4096, type=int]
     * Num Transfers - Number of async USB transfers. Use 0 for automatic
       [key=transfers, units=bytes, default=0, type=int, range=[0, 32]]
  Antennas: TX
  Corrections: DC offset, IQ balance
  Full gain range: [-23.75, 66, 0.25] dB
    dsa gain range: [-89.75, 0, 0.25] dB
  Full freq range: [47, 6000] MHz
    RF freq range: [47, 6000] MHz
  Sample rates: [0.520834, 15.36], [15.36, 30.72], [30.72, 61.44] MSps
  Filter bandwidths: [0.2, 56] MHz

----------------------------------------------------
-- TX Channel 1
----------------------------------------------------
  Full-duplex: YES
  Supports AGC: NO
  Stream formats: CS16, CF32
  Native format: CS16 [full-scale=2048]
  Stream args:
     * Buffer Count - Number of async USB buffers.
       [key=buffers, units=buffers, default=32, type=int]
     * Buffer Length - Number of bytes per USB buffer, the number must be a multiple of 1024.
       [key=buflen, units=bytes, default=4096, type=int]
     * Num Transfers - Number of async USB transfers. Use 0 for automatic
       [key=transfers, units=bytes, default=0, type=int, range=[0, 32]]
  Antennas: TX
  Corrections: DC offset, IQ balance
  Full gain range: [-23.75, 66, 0.25] dB
    dsa gain range: [-89.75, 0, 0.25] dB
  Full freq range: [47, 6000] MHz
    RF freq range: [47, 6000] MHz
  Sample rates: [0.520834, 15.36], [15.36, 30.72], [30.72, 61.44] MSps
  Filter bandwidths: [0.2, 56] MHz

[INFO] bladerf_close()
```

- [ ] check if `SoapySDR/modules0.8`  are missing

```
soapySDRUtil --info
```
> Returns
```powershell
######################################################
##     Soapy SDR -- the SDR abstraction library     ##
######################################################

Lib Version: v0.8.1-5
API Version: v0.8.0
ABI Version: v0.8
Install root: /Users/yourpath/miniforge3/envs/gnuradio-env
Search path:  /Users/yourpath/miniforge3/envs/gnuradio-env/lib/SoapySDR/modules0.8 (missing)
No modules found!
Available factories... No factories found!
Available converters...
 -  CF32 -> [CF32, CS16, CS8, CU16, CU8]
 -  CS16 -> [CF32, CS16, CS8, CU16, CU8]
 -  CS32 -> [CS32]
 -   CS8 -> [CF32, CS16, CS8, CU16, CU8]
 -  CU16 -> [CF32, CS16, CS8]
 -   CU8 -> [CF32, CS16, CS8]
 -   F32 -> [F32, S16, S8, U16, U8]
 -   S16 -> [F32, S16, S8, U16, U8]
 -   S32 -> [S32]
 -    S8 -> [F32, S16, S8, U16, U8]
 -   U16 -> [F32, S16, S8]
 -    U8 -> [F32, S16, S8]
```
