clear, clc;
Fs=1;
t=0:1/Fs:499;
x=sin(2*pi*0.04*t);
L=length(x);

NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(x,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
amp=2*abs(Y(1:NFFT/2+1));


%Plot time-domain wave
scrsz = get(0,'ScreenSize');
figure('Position',[50 400 scrsz(3)/3 scrsz(4)/3])
plot(t,x);
title('Time Domain View of WAV File')
xlabel('Time in Seconds')
ylabel('Amplitude')

%Plot single-sided amplitude spectrum.
figure('Position',[600 500 scrsz(3)/3 scrsz(4)/3])
plot(f,amp);
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')

%Plot Spectrogram
[S,F,T,P] = spectrogram(x,256,128,256,Fs);
figure('Position',[1200 400 scrsz(3)/3 scrsz(4)/3])
surf(T,F,10*log10(P),'edgecolor','none'); axis tight; 
view(0,90);
title('Spectrogram of WAV File')
xlabel('Time in Seconds)'); ylabel('Frequency in Hz');

[Bspec, waxis]=bispecd(x,10,8,50)