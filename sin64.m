i=1:2048;
y=1.0*sin(((2*pi)/64)*i+pi);
plot(y);
title('Sin Wave with Period 64');
xlabel('radiance')
ylabel('Amplitude')
maxval=max(y);
minval=min(y);
meanval=mean(y);
y2=y.*y;
meansqre=sum(y2)/2048;
sinrms=sqrt(meansqre);
variance=var(y);
standev=std(y);
N = hist(y,-2:2);       
plot(-2:2,N./numel(y));  
xlabel('Integer value');
ylabel('Probability');