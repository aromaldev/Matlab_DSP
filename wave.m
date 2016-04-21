
% Read and plot Wave File in Time Domain
[m d] = wavfinfo('testwave.WAV')
[y, Fs] = wavread('testwave.WAV');
endpoint=(1/Fs)*(length(y)-1);
x=[0:(1/Fs):endpoint];
y=transpose(y);
plot(x,y);
xlabel('Time in Seconds');
ylabel('Amplitude');


%spectrogram(y,128,120,128,Fs)