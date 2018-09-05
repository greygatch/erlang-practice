-module(hamming).

-export([distance/2, test_version/0]).


distance(Strand1, Strand2) when length(Strand1) == length(Strand2) ->
  Mutations = [{X, Y} || {X, Y} <- lists:zip(Strand1, Strand2), X =/= Y],
  length(Mutations);
distance(Strand1, Strand2) when length(Strand1) =/= length(Strand2) ->
  {error, "left and right strands must be of equal length"}.

test_version() -> 2.
