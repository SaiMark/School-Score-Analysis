%Testing the if condition if it works
%Test function for doing name search

Determine=input('Please enter"yes"or"no"for checking student individual score: ',"s");
vector=input('Please enter a student ID: ');
if Determine=="yes"
    disp("HD")
end

if Determine=="no"
    disp("Bye")
end
NameSearch(vector)