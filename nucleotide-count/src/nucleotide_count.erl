-module(nucleotide_count).

-export([count/2, nucleotide_counts/1]).

count(Seq, [Nucl]) ->
    case lists:member(Nucl, "ATCG") of
        true -> length([N || N <- Seq, N =:= Nucl]);
        false -> error("Invalid nucleotide")
    end.

nucleotide_counts(Seq) -> [{Nucl, count(Seq, Nucl)} || Nucl <- ["A", "T", "C", "G"]].
