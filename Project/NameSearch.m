function[A]=NameSearch(vector)
%Using student number to catch up the name of the student.
namelist=["Amirah" "Mary" "Wendy" "Leona" "Addie" "Iris" "Tianna" "Kelly" "Jessie" "Yvone" "Jack" "Ben" "JoJo" "Luke" "Mike" "Tom" "Ray" "Eric" "Paul" "Mark"];
for i=1:length(namelist)
    if i==vector
        A=namelist(i);
    end
end
end