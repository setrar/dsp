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
