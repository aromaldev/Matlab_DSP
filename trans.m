[x, Fs] = wavread('aeiousajil');
a=size(x);
if (a(1,2)>1)
    x=x(:,1);
end
    
L=a(1);
%Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
%L = 1000;                     % Length of signal
t = (0:L-1)*T;                % Time vector
% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid

%x = 0.7*sin(2*pi*50*t)+sin(2*pi*100*t);
%plot(t,x);
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

centroid=f*amp;
sumamp=sum(amp);
centroid=centroid/sumamp
%amp=10*log10(amp);

% Plot single-sided amplitude spectrum.
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