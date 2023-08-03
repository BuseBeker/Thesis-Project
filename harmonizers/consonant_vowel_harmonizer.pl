:-encoding(utf8).

/*
** Checks whether Turkish Word is appropriate for consonant-vowel harmony
** @param LAllomorph Left allomorph example: kalem
** @param RAllomorph List of the right allomorph example: e
*/

consonant_vowel_harmony(LAllomorph, RAllomorph):-
   string_to_first_char(LAllomorph, RAllomorph, LChar1, RChar1),
   ((not(consonant(LChar1)),!); not(vowel(RChar1))).

consonant_vowel_harmony(LAllomorph, RAllomorph):-
   string_to_first_char(LAllomorph, RAllomorph, LChar1, RChar1),
   consonant(LChar1),
   vowel(RChar1),
   (softening_exc(LAllomorph) -> true ;
   not(LChar1 = 'p'),
   not(LChar1 = 'ç'),
   not(LChar1 = 't'),
   not(LChar1 = 'k')).
