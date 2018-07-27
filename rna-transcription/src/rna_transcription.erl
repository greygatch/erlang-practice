-module(rna_transcription).

-export([to_rna/1]).

% {"A", "U"}, {"G", "C"}, {"C", "G"}, {"T", "A"}
% to_rna(Strand) -> lists:flatten(lists:map(transcribe, Strand)).

to_rna(Seq) ->
  case lists:member(error, lists:map(fun convert/1, Seq)) of
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
