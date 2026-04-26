clc;
clear;
close all;

%% FIR Filter Specifications
N = 10;                  % Order
Fs = 1000;              % Sampling frequency
Fc = 100;               % Cutoff frequency

%% Generate Coefficients (Low-pass FIR)
h = fir1(N, Fc/(Fs/2)); % 11 coefficients

disp('Filter Coefficients:');
disp(h);

%% Test Signal
n = 0:50;
x = sin(2*pi*50*n/Fs) + 0.5*sin(2*pi*200*n/Fs);

%% Filter Output
y = filter(h, 1, x);

%% Plot
figure;
subplot(2,1,1);
plot(n, x);
title('Input Signal');

subplot(2,1,2);
plot(n, y);
title('Filtered Output');

%% Save coefficients for Verilog (scaled)
h_scaled = round(h * 128); % scaling for fixed-point

disp('Scaled Coefficients (for Verilog):');
disp(h_scaled);
