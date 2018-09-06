-module(strain).

-export([keep/2, discard/2, test_version/0]).

keep(Fn, List) ->
  lists:map(Fn, List).

discard(Fn, List) ->
  lists:filter(Fn, List).

test_version() -> 1.
