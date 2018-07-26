-module(raindrops).

-export([convert/1]).

convert(N) -> convert(N, 1, []).

convert(N, I, Acc) when I =< trunc(N/2) ->
    case N rem I of
        0 -> convert(N, I + 1, [I | Acc]);
        _ -> convert(N, I + 1, Acc)
    end;
convert(N, _I, Acc) -> lists:reverse(Acc) ++ [N].
