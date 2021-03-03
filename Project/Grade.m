function[grade]=Grade(mark)
%Function for grading student grade
%PartB2 using function
grade="";
if mark>=85
    grade="S";
elseif mark>=75
    grade="A";
elseif mark>=65
    grade="B";
elseif mark>=50
    grade="Pass";
else mark<49;
    grade="Fail";
end
end