-module(phone_number).

-export([number/1, areacode/1, pretty_print/1]).

number(String) ->
  Is_Int = fun (N) -> N >= $0 andalso N =< $9 end,
  Filtered_List = lists:filter(Is_Int, String),
  Number_Length = length(Filtered_List),
  transform(Number_Length, Filtered_List).

transform(Length, List) when Length > 11 orelse Length < 10 -> "0000000000";
transform(Length, [$1 | T] = List) when Length == 11 -> lists:sublist(List, 2, 11);
transform(Length, [_ | T] = List) when Length == 11 -> "0000000000";
transform(Length, List) when Length == 10 -> List.

areacode(String) ->
  lists:sublist(number(String), 1, 3).

format_areacode(String) ->
  lists:concat(["(", areacode(String), ")"]).

format_number(String) ->
  First_Part = lists:sublist(String, 4, 3),
  Second_Part = lists:sublist(String, 7, 4),
  lists:concat([First_Part, "-", Second_Part]).

pretty_print(String) ->
  Filtered_List = number(String),
  lists:concat([format_areacode(Filtered_List), " ", format_number(Filtered_List)]).
