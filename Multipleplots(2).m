x=0:0.01:2*pi;
y=sin(x);
u=cos(x);
plot(x,y,x,u);
xlabel('Radiance');
ylabel('Sin and Cos');
title('Plot of the Sin and Cos Functions','FontSize',12);