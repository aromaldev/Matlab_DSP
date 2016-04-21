 t=0:0.001:0.999;
 x=sin(2*pi*5*t);
 k=(size(x));
 k=k(1,2);
 plot(t,x);
 f=fft(x);
 f=f(1:k/2);
 f=f/k;