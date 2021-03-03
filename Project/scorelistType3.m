%Part C is the doing the rank of whole class
%PartA+B+C
%Calculating the mean of term exam and mean of whole class
sum=0;%Part A1
termsum=0;%Part.A2
termlist=[];%Part.A2
studentMark=[];%Part.B1
studentMean=0;%Part.B1
rankSum=[];%Part C

n=input("\nPlease enter the term of socre you want:  ");


for i = [1:20]
    rankTotal=0;
    for j = [1:12]
        scorelist(i,j)=round(rand()*100);
        sum=sum+scorelist(i,j);
        rankTotal=rankTotal+scorelist(i,j);
        if j==n
            termlist=[termlist scorelist(i,j)];
        end
    end
    rankSum=[rankSum rankTotal];%for Part C array
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

%Asking the User does he or she want to know the student's score
%partB1
Determine=input('\nPlease enter"yes"or"no"for checking student individual score: ',"s");
if Determine=="yes"
    
    nameID=input('Pleasr enter the student number: ');
    for j=[1:12]
        studentMark=[studentMark scorelist(nameID,j)];
    end
    studentMean=mean(studentMark);%Calculation for Mean
    fprintf("\nStudent Detail\n")
    fprintf('\nHere is %s whole year score: \n',NameSearch(nameID))
    disp(studentMark)
    fprintf('The Mean score of %s is: %.2f\n',NameSearch(nameID),studentMean)
    
    %PartB2
    %Grade for student
    fprintf("%s 's final grade is: %s\n",NameSearch(nameID),Grade(studentMean))
    plot(studentMark)
     
    %PartC
    %The rank for whole class
    fprintf("\nStudent Award\n")
     B=[];%Create an array to do the match
     C=[];%Create an array for the match up outputs
     B=[B sort(rankSum,'descend')];
     %for storage the order of name
     a=0;
     for i=1:length(rankSum)
         a=a+1;
         for j=1:length(B)
             if rankSum(i)==B(j)
                 C=[C NameSearch(j)];
             end
         end
     end
     %Output for the student Award 
     for x=1:20
         fprintf("%d, %s get the rank %s in the end of semester.\n",x,C(x),AverageMark(x))
     end
     fprintf("\nThanks for using.\n")

%output of user choosing "No"    
elseif Determine=="no"
    fprintf('\nThanks for using.')
end

