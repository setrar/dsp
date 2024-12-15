from SoapySDR import Device
sdr = Device(dict(driver="bladerf"))
print("BladeRF Antennas:", sdr.listAntennas(0))  # List RX antennas
