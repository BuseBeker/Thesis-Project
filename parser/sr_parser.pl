:-include('question_generator.pl').

:-encoding(utf8).

:- op(500, xfy, '==>').

% Lexicon
[[noun,[çocuk, kim, ne, hangisi, kimler, hangileri, neler]]] ==> [çocuk].
[noun,plur] ==> [çocuklar].
[[noun,[elma, ne, neler, neyi, neleri]]] ==> [elma].
[[verb, [[yiyor, neyaptı]]]] ==> [yiyor].
[[verb, [[geldi, neyaptı]]]] ==> [geldi].

% Phrase Structure Rules
[verb, [Element1|List2]] ==> ([noun, Element1], [verb, List2]) .
%[verb|Rest] ==>  ([verb|Rest], [noun|_]).


%%% PARSER
% Base
sr_parse([[_,Lists]], []):-
          generate_questions(Lists, [_|List]),
          writeln(List).

% Shift
sr_parse(Stack, [Word|Words]):-
  [Cat] ==> [Word],
  sr_parse([Cat|Stack], Words).
  
% Reduce
sr_parse([Y, X|Rest], String):-
  Z ==> (X, Y),
  sr_parse([Z|Rest], String).

