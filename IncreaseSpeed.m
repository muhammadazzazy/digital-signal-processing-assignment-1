function IncreaseSpeed(inputFileName, speedingFactor, outputFileName)
%inputFileName is the file name of an input audio file
%speedingFactor is the speeding factor (integer only)
%outputFileName is the name of the output increased speed audio file
%Reads from an input audio file
[x, fs] = audioread(inputFileName);
%T is the length of the input audio file in seconds
T = length(x)/fs;
%duration is the length of the cut part of the audio file in seconds
duration = T - T/speedingFactor;
%samples is the vector signal that stores the needed samples
samples = [1, length(x) - (duration * fs)];
%Reads from an input audio file
[y, fs] = audioread(inputFileName, samples);
%Writes to the output increased speed audio file
audiowrite(outputFileName, y, fs);
end
