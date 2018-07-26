-module(collatz_conjecture).

-export([steps/1]).

steps(N) when N < 1 -> {error, "Only positive numbers are allowed"};

% what is this line doing?
steps(N) -> steps(N, 0).
% base case
steps(1, Steps) -> Steps;
% recursive call for even or odd
steps(Num, Steps) when Num rem 2 =:= 0 -> steps(Num div 2, Steps + 1);
steps(Num, Steps) -> steps(3 * Num + 1, Steps + 1).
