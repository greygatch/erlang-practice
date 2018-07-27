-module(rna_transcription).

-export([to_rna/1]).


has_error(X) ->
  lists:member(error, lists:map(fun convert/1, X)).

to_rna(Seq) ->
  List = lists:map(fun convert/1, Seq),
  case lists:member(error, List) of
    true ->
      error;
    false ->
      List
    end.


convert($G) -> $C;
convert($C) -> $G;
convert($T) -> $A;
convert($A) -> $U;
convert(_) -> error.
