close all;
clear;
clc;

% Program for Decimation or Down-Sampling by Integer Factor

N = input('Enter the output length = ');
M = input('Enter the Down-Sampling factor = ');
f0 = input('Enter the signal frequency = ');

% Generate the input sinusoidal sequence
n = 0:N-1;
m = 0:N*M-1;
x = sin(2*pi*f0*m);

% Generate the Decimated or Down-Sampled Signal
y = x([1:M:length(x)]);

% Plot the input and output sequences
subplot(2,1,1);
stem(n,x(1:N));
xlabel('Time index n');
ylabel('Amplitude');
title('Input sequence to be decimated');

subplot(2,1,2);
stem(n,y);
xlabel('Time index n');
ylabel('Amplitude');
title(['Output sequence decimated by', num2str(M)]);