for i=[1:20]
    for j=[1:12]
        M(i,j)=round(rand()*100);
    end
end

for i =[2:21]
    for j=[2:13]
        D(i,j)=string(M(i-1,j-1));
    end
end
disp(M)
for j=[2:13]
    for i=[1:21]
        if i==1
            D(i,j)=j-1;
        end
    end
end

for i=[2:21]
    for j=[1:13]
        if j==1
            D(i,j)=NameSearch(i-1);
        end
    end
end
disp(D)