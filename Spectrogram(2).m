[x,fs] = wavread('PP''s test.WAV');%reads file
plot(x);%plots file
[S,F,T,P] = spectrogram(x,128,0,256,fs);%calculates spectrogram
surf(T,F,10*log10(P),'edgecolor','none'); axis tight; %plots spectrogram
view(0,90);
xlabel('Time (Seconds)'); ylabel('Frequency (Hz)');
f=fft(x);%calculates fft
f=abs(f);
%plot(f);%plots fft