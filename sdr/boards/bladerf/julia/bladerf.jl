using SoapySDR

ENV["SOAPY_SDR_PLUGIN_PATH"]="/Users/valiha/miniforge3/envs/gnuradio-env/lib/SoapySDR/modules0.8/"

# List available devices
devs = Devices()
println(devs)
