%PartA of the project
%Calculating the mean of term exam and mean of whole class
sum=0;%Part A1
termsum=0;%Part.A2
termlist=[];%Part.A2

n=input("\nPlease enter the term of socre you want:  ");


for i = [1:20]
    rankTotal=0;
    for j = [1:12]
        scorelist(i,j)=round(rand()*100);
        sum=sum+scorelist(i,j);
        if j==n
            termlist=[termlist scorelist(i,j)];
        end
    end
end
%Calculate the sum of the score 
%PartA2
for a=1:length(termlist)
    termsum=termsum+termlist(a);
end


%Calculation process for Part A
sum=sum/240;
termsum=termsum/20;

%output for PartA
fprintf("The Score List For The End Of Semester")
fprintf("\n")
disp(scorelist)
fprintf('The average score of Class A is :%.2f\n',sum)
fprintf('The mean score of the %s term exam is %.2f\n',AverageMark(n),termsum)
