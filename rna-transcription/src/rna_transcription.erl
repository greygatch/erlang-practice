-module(rna_transcription).

-export([to_rna/1]).

has_error(X) -> lists:member(error, lists:map(fun convert/1, X)).
to_rna(Seq) ->
  case has_error(Seq) of
    true ->
      error;
    false ->
      lists:map(fun convert/1, Seq)
    end.


convert($G) -> $C;
convert($C) -> $G;
convert($T) -> $A;
convert($A) -> $U;
convert(_) -> error.
