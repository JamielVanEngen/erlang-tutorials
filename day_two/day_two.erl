-module(day_two).
-export([first_excercise/2]).
-export([second_excercise/1]).

first_excercise(List, FilterVal) -> [Desc || {Language, Desc} <- List, Language == FilterVal].

second_excercise(ShopList) -> [{Item, Price * Quantity} || {Item, Quantity, Price} <- ShopList].
