
- [ ] SoapySDR/modules0.8 (missing)

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
Install root: /Users/valiha/miniforge3/envs/gnuradio-env
Search path:  /Users/valiha/miniforge3/envs/gnuradio-env/lib/SoapySDR/modules0.8 (missing)
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



```
conda install -c conda-forge soapysdr
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

    $ conda update -n base -c conda-forge conda



## Package Plan ##

  environment location: /Users/valiha/miniforge3/envs/gnuradio-env

  added / updated specs:
    - soapysdr


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    ca-certificates-2024.12.14 |       hf0a4a13_0         153 KB  conda-forge
    ------------------------------------------------------------
                                           Total:         153 KB

The following packages will be UPDATED:

  ca-certificates                      2024.8.30-hf0a4a13_0 --> 2024.12.14-hf0a4a13_0 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                                                                                     
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
```

```
conda install -c conda-forge soapysdr-module-bladerf
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

    $ conda update -n base -c conda-forge conda



## Package Plan ##

  environment location: /Users/valiha/miniforge3/envs/gnuradio-env

  added / updated specs:
    - soapysdr-module-bladerf


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    libbladerf2-2024.05        |       h99b78c6_0         262 KB  conda-forge
    soapysdr-module-bladerf-0.4.1|       h8167e30_0          66 KB  conda-forge
    ------------------------------------------------------------
                                           Total:         328 KB

The following NEW packages will be INSTALLED:

  libbladerf2        conda-forge/osx-arm64::libbladerf2-2024.05-h99b78c6_0 
  soapysdr-module-b~ conda-forge/osx-arm64::soapysdr-module-bladerf-0.4.1-h8167e30_0 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                                                                                     
Preparing transaction: done                                                                                                                                                          
Verifying transaction: done
Executing transaction: done

```
