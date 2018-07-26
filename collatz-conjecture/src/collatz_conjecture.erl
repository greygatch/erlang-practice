-module(collatz_conjecture).

-export([steps/1, test_version/0]).

steps(N) when N < 1 -> {error, "Only positive numbers are allowed"};
% what is this line doing? recursive base case?
steps(N) -> steps(N, 0).

% what is this line doing?
steps(1, Steps) -> Steps;
% when even increment steps
steps(N, Steps) when N rem 2 =:= 0 -> steps(N div 2, Steps + 1);

%when odd, multiply and add and increment steps
steps(N, Steps) when N rem 2 =/= 0 -> steps((N * 3) + 1, Steps + 1).

test_version() -> 2.
