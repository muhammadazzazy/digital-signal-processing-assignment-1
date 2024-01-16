function Downsample(inputFileName, downsamplingFactor, outputFileName)
%inputFileName is the file name of an input audio file
%downsamplingFactor is the downsampling factor (integer only)
%outputFileName is the file name of the output downsampled file
%Reads from an input audio file
%x is the vector signal for the input
%Fs is the sampling frequency of the audio input signal
[x, Fs] = audioread(inputFileName);
%fs is the sampling frequency of the audio output signal
fs = Fs / downsamplingFactor;
%duration is the length of the audio file in seconds
duration = length(x)/Fs;
%N is the total number of samples in the output downsampled file
N = fs * duration;
%y is the vector signal for the output
y = zeros(N, 1);
%This for loop iterates by a step equal to the downsampling factor over the samples of the vector signal for the input and stores the
%sample values in the vector signal for the output
for i = 1:downsamplingFactor:length(x)
    if(i == 1 || i == length(x))
        y(i) = x(i);
    else
        y(ceil(i/downsamplingFactor)) = x(i);
    end
end
%Writes to the output downsampled file
audiowrite(outputFileName, y, fs);
end