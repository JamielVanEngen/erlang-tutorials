-module(day_one).
-export([count_words_in_sentence/1]).
-export([count_to_ten/0]).
-export([log_message/1]).

count_to_ten() -> count_to_ten_private(10).
count_to_ten_private(1) -> 1;
count_to_ten_private(N) -> count_to_ten_private(N - 1).

count_words_in_sentence("") -> 0;
count_words_in_sentence(Sentence) ->
  Words = string:split(Sentence, " "), 
  if
    length(Words) == 2 ->
    1 + count_words_in_sentence(lists:nth(2, Words));
    true ->
      length(Words)
  end.
  

log_message({error, Message}) -> lists:append("error: ", Message);
log_message(success) -> success.
