-module(raindrops).
-export([convert/1]).
-define(Sounds, [{3, "Pling"}, {5, "Plang"}, {7, "Plong"}]).

convert(Number) ->
  lists:flatten(number_to_sound(Number)).


number_to_sound(Number) ->
  case [Sound || {Factor, Sound} <- ?Sounds, Number rem Factor == 0] of
    [] -> integer_to_list(Number);
    Sound -> Sound
  end.
