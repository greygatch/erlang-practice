-module(hello_world_tests).

% This file is automatically generated from the exercises canonical data.

% -include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").


say_hi_test() ->
    ?assertEqual("Hello, World!", hello_world:hello()).

version_test() ->
    ?assertMatch(2, hello_world:test_version()).
