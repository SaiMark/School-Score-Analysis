A=[324 34 532 443 623 4 46 23 5436 34];
B=[];
B=[B sort(A)];
a=1;
for i=1:length(A)
    for j=1:length(B)
        if A(i)==B(j)
            fprintf("%s get rank %s in this year.\n",NameSearch(j),a)
            
        end
    end
end
