n= 0:0.0001:0.9;
x=sin(2*pi*150*n);
plot(n,x);
f=fft(x);
f=abs(f);
plot(f);