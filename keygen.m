A=['F' '8' 'B'];
B=['C' 'Q'];

count=1;

for i=1:3
    for j=1:3
        for k=1:2
            for l=1:3
                key(count,:)=['7' '4' 'W' A(1,i) '4' A(1,j) 'D' '3' B(1,k) 'J' 'Y' 'V' 'H' 'Q' 'R' 'P' 'V' '9' A(1,l) '2' '7' '5' '2' 'C' 'W']
                count=count+1;
            end
        end
        
    end
    
end
count