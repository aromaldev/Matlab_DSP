 t=0:pi/100:2*pi;
 A=sin(t);
 B=sin(2*t);
 hold all
 plot(t,A);
 plot(t,B);
 C=A+B;
 plot(t,C);