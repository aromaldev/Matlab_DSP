 t=0:0.1:10;
 x=sin(2*pi*1*t);
 y=sin(2*pi*2*t);
 plot(t,x,t,y);
 z=[x;y];
 z=z';
 z=abs(z);
 bar3(z,'detached')