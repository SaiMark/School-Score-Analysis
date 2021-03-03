sum=0;
LOL=[];
for i=[1:3]
    sum=0;
    for j=[1:3]
        M(i,j)=round(rand()*110);
        sum=sum+M(i,j);
        
    end
    LOL=[LOL sum];
end
disp(M)
disp(LOL)