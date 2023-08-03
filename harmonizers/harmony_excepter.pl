


harmony_except(Allomorph, Suffix, NAllomorph):-
   sub_atom(Suffix, 0, 1, _, RChar1),
   vowel(RChar1),
   (vowel_reduced(Allomorph, NAllomorph);
   softened_allomorph(Allomorph, NAllomorph)).
