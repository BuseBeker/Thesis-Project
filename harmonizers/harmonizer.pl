harmonize(_,'').

harmonize(LMorph, RMorph):-
   (not(vowel_harmony_exc(LMorph)), vowel_vowel_harmony(LMorph, RMorph) -> true; vowel_harmony_exc(LMorph), not(vowel_vowel_harmony(LMorph, RMorph))),
   consonant_consonant_harmony(LMorph, RMorph),
   consonant_vowel_harmony(LMorph, RMorph),
   vowel_consonant_harmony(LMorph, RMorph).
