-module(hamming).

-export([distance/2, test_version/0]).


distance(Strand1, Strand2) ->
  Mutations = [{X, Y} || {X, Y} <- lists:zip(Strand1, Strand2), X =/= Y],
  length(Mutations).

test_version() -> 2.
