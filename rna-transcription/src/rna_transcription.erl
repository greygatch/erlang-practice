-module(rna_transcription).

-export([to_rna/1]).

to_rna(Seq) ->
  List = lists:map(fun convert/1, Seq),
  Has_Error = lists:member(error, List),
  case Has_Error of
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
