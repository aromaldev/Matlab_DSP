vec = input('Enter values : ');
len=size(vec);
len=len(1,2);
for i=1:len-1
    if vec(i)<vec(i+1)
       vec(i)
    else
        vec(i)
        disp('Not Progrssive')
        break
    end
end