-module(test).
-export([case_test_with_default/1]).
-export([case_test/1]).
-export([map/2]).

case_test(Word) -> 
  case Word of
    "first" -> first;
    "second" -> second
  end.

case_test_with_default(Word) ->
  case Word of
    "first" -> first;
    "second" -> second;
    _ -> default
  end.

map(F, [H|T]) -> [F(H) | map(F, T)];
map(F, []) -> [].
