// Read an audio waveform
[t, Fs] = wavread('.docs/myfile.wav');

// Compute the magnitude spectrum using FFT
Y_0 = abs(fft(t(1, :), -1));

// Plot the magnitude spectrum
plot(fftshift(Y_0));
title('Magnitude Spectrum');
xlabel('Frequency');
ylabel('Magnitude');


