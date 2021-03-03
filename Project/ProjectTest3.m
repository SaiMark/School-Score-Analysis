n=3;
studentMark=[];
for i=[1:20]
    for j=[1:12]
        M(i,j)=round(rand()*100);
    end
end

if n==3 %n can change any variables in main chat
    for j=[1:12]
        studentMark=[studentMark M(n,j)];
    end
end
disp(M)
disp(studentMark)
