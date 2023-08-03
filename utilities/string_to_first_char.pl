/*
** Gets the last character of left string and first character of right string
** @param LString Left String
** @param RString Right String
** @param LChar1 Output Character of the Left String
** @param RChar1 Output Character of the Right String
*/

string_to_first_char(LString, RString, LChar1, RChar1):-
   sub_atom(LString, _, 1, 0, LChar1),
   sub_atom(RString, 0, 1, _, RChar1).
