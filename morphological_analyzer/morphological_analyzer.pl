:-include('../includes.pl').

% Analyzer

analyze(String, AllomorphList, MorphemeList):-
    initial(State),
    analyze(String, State,AllomorphList, MorphemeList).

analyze('', FinalState, [], []):-
    final(FinalState).

analyze(String, CurrentState, [Allomorph|Rest_Allomorph], [Morpheme|Rest_Morpheme]):-
   concat(Allomorph, Suffix, String),
   not(Allomorph = ''),
   (
   allomorph(Allomorph, Morpheme);
   harmony_except(Allomorph, Suffix, NewAllomorph),
   allomorph(NewAllomorph, Morpheme)
   ),
   t(CurrentState, Morpheme, NextState),
   harmonize(Allomorph, Suffix),
   analyze(Suffix, NextState, Rest_Allomorph, Rest_Morpheme).


