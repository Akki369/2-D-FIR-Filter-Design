clc;
clear all;
close all;
sequence = [0 0.25 0; -0.25 0 -0.25; 0 0.25 0];
N=21; % Dimension
h1 = fir1(N-1,0.7,boxcar(N)); % FRF of FIR filter using Transformation method  
H1 = fft(h1,512); % FFT of impulse response of FIR Filter
figure
plot(0:1/256:1,20*log10(abs(H1(1:257)))); % Plot the 1-D Frequency Response Function
h = ftrans2(h1,sequence);
figure
freqz2d(h,40);% Plot the 2-D Frequency Response Function which renders a floor of -40 dB
title('Output of 2-D 21*21 FIF Filter');
xlabel('omega1--------------->'); % X label
ylabel('omega2--------------->'); % Y label