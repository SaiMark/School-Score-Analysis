function[A]=AverageMark(number)
%Set up the term's for time in array
termlist1=["first" "second" "third" "fourth" "fifth" "sixth" "seventh" "eighth" "ninth" "tenth" "eleventh" "twelfth" "thirteenth" "fourteenth" "fifteenth" "sixteenth" "seventeenth" "eighteenth" "nineteenth" "twentieth"  ];
%Searching the word in termlist1
for i=1:length(termlist1)
    if i==number
        A=termlist1(i);
    end
end
end
