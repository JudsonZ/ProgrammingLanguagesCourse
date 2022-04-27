person(name,sex,married,parent).

familyMember(judsonz,male,na,na).
familyMember(hannah,female,na,na).
familyMember(nick,male,na,na).
familyMember(charteris,male,yes,yes).
familyMember(sarah,female,yes,yes).
familyMember(robert,male,yes,yes).
familyMember(caroline,female,yes,yes).
familyMember(judsons,male,yes,yes).
familyMember(laura,female,yes,yes).

parent(name,parent) :- familyMember(name,sex,parent,married), parent =:= yes.