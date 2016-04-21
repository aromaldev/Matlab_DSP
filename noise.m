n=(rand(1,2048)-0.5)*5;
i=1:2048;
y=1.0*sin(((2*pi)/64)*i+pi);
plot(n)
title('Random Noise')
xlabel('Samples')
ylabel('Amplitude')
Nmaxval=max(n)
Nminval=min(n)
Nmeanval=mean(n)
n2=n.*n;
Nmeansqre=sum(n2)/2048
Noiserms=sqrt(Nmeansqre)
Nvariance=var(n)
Nstandev=std(n)
y=y+n;
plot(y)
N = hist(n,-2:2);       
plot(-2:2,N./numel(n));  
xlabel('Integer value');
ylabel('Probability');