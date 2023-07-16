clear all;

clc;

clf;

close;

// https://manual.audacityteam.org/man/plot_spectrum.html

wavfile = '.docs/myfile.wav';


// Read the wave file
[y, Fs] = wavread(wavfile);

ha = gca();

mapsound(y, 0.05, Fs);
title "sin(2π⋅100⋅t) ⋅ sin(2π⋅1000⋅t)" fontsize 3.2;




// Plot the spectrum
//specgram(y, 512, Fs);
//title('Spectrum of Wave File');
//xlabel('Time (s)');
//ylabel('Frequency (Hz)');
