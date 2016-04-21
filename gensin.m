Fs = 16000; 
T = 1/Fs; 
L = 8000;
t = (0:L-1)*T;
x = sin(2*pi*50*t);
y = sin(2*pi*100*t);
wavwrite(x,Fs,'result');
plot(t,x+y);