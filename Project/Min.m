function[test]=Min(A)
%function for checking the lowest score
test=A(1);
for i=2:length(A)
    if A(i)<test
        test=A(i);
    end
end
end