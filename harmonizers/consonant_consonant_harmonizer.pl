
/*
** Checks whether Turkish Word is appropriate for consonant-consonant harmony
** @param LAllomoprh Left Allomorph exapmle: demir
** @param RAllomorph List of the right allomorph example: den
*/

consonant_consonant_harmony(_,RAllomorph):-
   string_chars(RAllomorph,StringChars),
   StringChars = ['k','i'|_].
   
consonant_consonant_harmony(LAllomoprh, RAllomorph):-
   string_to_first_char(LAllomoprh, RAllomorph, LChar1, RChar1),

   ((consonant(LChar1), consonant(RChar1), (
      (consonant_type1(LChar1), consonant_type1(RChar1));
      (consonant_type1(LChar1), consonant_type2(RChar1));
      (consonant_type2(LChar1), consonant_type2(RChar1));
      (consonant_type2(LChar1), consonant_type3(RChar1));
      (consonant_type3(LChar1), consonant_type2(RChar1));
      (consonant_type3(LChar1), consonant_type3(RChar1))));
   ((not(consonant(LChar1)),!); not(consonant(RChar1)))).
