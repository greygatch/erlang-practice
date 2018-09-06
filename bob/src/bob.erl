-module(bob).

-export([response/1, test_version/0]).

response(String) ->
  Message = re:replace(String, "(^\\s+)|(\\s+$)", "", [global,{return,list}]),
  Shouting = (Message =:= string:to_upper(Message)) and (re:run(Message, "[A-Za-z]") =/= nomatch),
  Asking = lists:suffix("?", Message),
  Silent = 0 =:= length(string:strip(Message)),

  if Silent -> "Fine. Be that way!";
    Shouting -> "Whoa, chill out!";
    Asking -> "Sure.";
    true -> "Whatever."
  end.

test_version() -> 2.
