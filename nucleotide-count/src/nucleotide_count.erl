-module(nucleotide_count).

-export([count/2, nucleotide_counts/1]).

count(Seq, [Nucl]) ->
    DnaList = "ATCG",
    case lists:member(Nucl, DnaList) of
        % wtf?
        true -> length([N || N <- Seq, N == Nucl]);
        false -> error("Invalid nucleotide")
    end.

% create a list of nucleotides as Nucl
% for each, return a tuple of the nucleotide and its count
nucleotide_counts(Seq) -> [{Nucl, count(Seq, Nucl)} || Nucl <- ["A", "T", "C", "G"]].
