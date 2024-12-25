# SoapySDR (modules)


**`SoapySDR/modules0.8`** refers to the **directory containing shared libraries** (modules) that provide **hardware-specific support** for SDR devices using the **SoapySDR API**. The `0.8` indicates the **ABI version** (Application Binary Interface) of SoapySDR.

### **What Is It?**
- SoapySDR is a **hardware abstraction layer** for Software-Defined Radio devices.
- The **modules** are plugins that allow SoapySDR to interface with specific SDR hardware like:
   - [**BladeRF**](bladeRF)
   - [**HackRF**](hackRF)
   - **LimeSDR**
   - **RTL-SDR**
   - **USRP (UHD)**  

These modules are stored in a directory like:
```bash
/usr/local/lib/SoapySDR/modules0.8/  # Linux/macOS
/Users/yourpath/miniforge3/lib/SoapySDR/modules0.8/  # Conda environment
```

### **Purpose**
Each shared library file (`.so` on Linux/macOS, `.dll` on Windows) within **`modules0.8`** enables SoapySDR to **detect** and **control** a particular SDR hardware.

**Example Module Files**:
- `libbladeRFSupport.so` → BladeRF support
- `librtlsdrSupport.so` → RTL-SDR support
- `libhackrfSupport.so` → HackRF support

### **How It Works**
When you run:
```bash
SoapySDRUtil --find
```
- SoapySDR searches in **`modules0.8`** for all supported SDR hardware modules.
- It loads these modules dynamically to **probe** for devices.

### **Key Points**
- **Location**: `SoapySDR/modules0.8` is where plugins reside.
- **Versioning**: `0.8` refers to the SoapySDR ABI version (current standard).
- **Modules**: Hardware-specific libraries enable SoapySDR to interface with SDRs.

If a module (like `libbladeRFSupport.so`) is missing, SoapySDR won't detect that hardware.

## :o: Install SoapySDR modules

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

- [ ] Install `soapysdr` using conda (as Package Manager) through `conda-forge` Channel

```
conda install --channel conda-forge soapysdr
```
> Returns
```powershell
Channels:
 - conda-forge
Platform: osx-arm64
Collecting package metadata (repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
    current version: 24.9.2
    latest version: 24.11.0

Please update conda by running

    $ conda update --name base --channel conda-forge conda



## Package Plan ##

  environment location: /Users/yourpath/miniforge3/envs/gnuradio-env

  added / updated specs:
    - soapysdr


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------------------------------------
    ca-certificates-2024.12.14 |       hf0a4a13_0         153 KB  conda-forge
    ---------------------------------------------------------------------------
                                           Total:         153 KB

The following packages will be UPDATED:

  ca-certificates                      2024.8.30-hf0a4a13_0 --> 2024.12.14-hf0a4a13_0 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                                                                                     
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
```

