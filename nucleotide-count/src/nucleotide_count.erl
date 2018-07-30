-module(nucleotide_count).

-export([count/2, nucleotide_counts/1]).

count(Seq, [Nucl]) ->
    DnaList = "ATCG",
    case lists:member(Nucl, DnaList) of
        % 1. check list for every elmt that matches
        % 2. iterate through each element
        % 3. return element if condition matches
        % (i.e. filtermap)
        true -> length([N || N <- Seq, N == Nucl]);
        false -> error("Invalid nucleotide")
    end.

% create a list of nucleotides as Nucl
% for each, return a tuple of the nucleotide and its count
nucleotide_counts(Seq) -> [{Nucl, count(Seq, Nucl)} || Nucl <- ["A", "T", "C", "G"]].
