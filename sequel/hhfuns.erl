-module(hhfuns).
-export([map/2]).
-export([incr/1]).
-export([decr/1]).
-export([increment/1]).
-export([decrement/1]).

map(_,[]) -> [];
map(F, [H|T]) -> [F(H)|map(F, T)].

incr(X) -> X + 1.
decr(X) -> X - 1.

increment([]) -> [];
increment([H|T]) -> [H + 1 | increment(T)].


decrement([]) -> [];
decrement([H|T]) -> [H + 1 | decrement(T)].
