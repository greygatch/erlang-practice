-module(raindrops).

-export([convert/1]).

convert(N) when N rem 2 =:= 0 -> "Pling";
convert(N) when N rem 2 =:= 1 -> "Plang".
