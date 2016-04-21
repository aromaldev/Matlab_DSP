x=0:0.001:20;
freq=0;
y=sin(2*pi*10*x);
plot(y);
Fs=44100;
wavplay(y,Fs);