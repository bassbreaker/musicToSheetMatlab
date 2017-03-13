function [  ] = dynamicFFTplot( wave, fs, length, space )
%UNTITLED3 plots the fft over time
%   wave is the wave of interest
%   fs is the sampling frequency of the wave
%   length is the number of values in the fft
%   space is the distance between each fft interval

waveLength = size(wave);
waveLength = waveLength(1)
i = 1;
fq = 0:fs/length:fs;
plotLen = length/25;

while i < (waveLength - length*2)
    croppedWave = wave(i:i+length);
    waveFFT = abs(fft(croppedWave));
    plot(fq(1:plotLen),waveFFT(1:plotLen))
    drawnow
    i = i+space;
    pause(0.1);
end

end

