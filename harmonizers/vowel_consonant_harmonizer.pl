/*
** Checks whether Turkish Word is appropriate for vowel-consonant harmony
** @param LAllomorph Left allomorph example: kedi
** @param RAllomorph List of the right allomorph example: den
*/

vowel_consonant_harmony(LAllomorph, RAllomorph):-
   string_to_first_char(LAllomorph, RAllomorph, LChar1, RChar1),
   ((not(vowel(LChar1)),!); not(consonant(RChar1))).

vowel_consonant_harmony(LAllomorph, RAllomorph):-
   string_to_first_char(LAllomorph, RAllomorph, LChar1, RChar1),
   vowel(LChar1),
   consonant(RChar1),
   not(RChar1 = 't').
