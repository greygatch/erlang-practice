-module(raindrops).

-export([convert/1]).

convert(Number) ->
  integer_to_list(Number).
