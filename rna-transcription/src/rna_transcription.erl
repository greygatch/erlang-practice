-module(rna_transcription).

-export([to_rna/1]).

-define(Conversions, [{"A", "U"}, {"G", "C"}, {"C", "G"}, {"T", "A"}]).
to_rna(Strand) -> length(Strand).
