-module(rna_transcription).

-export([to_rna/1]).

-define(Conversions, [{"A", "U"}, {"G", "C"}, {"C", "G"}, {"T", "A"}]).

to_rna(Strand) -> lists:map(transcribe, Strand).

transcribe(N) ->
  case [Rna || {Dna, Rna} <- ?Conversions, N == Dna] of
    [] -> "error";
    Rna -> Rna
  end.
