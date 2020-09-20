-module(difference_of_squares).

-export([difference_of_squares/1, square_of_sum/1, sum_of_squares/1]).


difference_of_squares(Number) ->
    square_of_sum(Number) - sum_of_squares(Number).

square_of_sum(Number) ->
    Numbers = lists:seq(1, Number),
    Sum = lists:foldl(fun(N, Sum) -> N + Sum end, 0, Numbers),
    trunc(math:pow(Sum, 2)).

sum_of_squares(Number) ->
    Numbers = lists:seq(1, Number),
    Squares = lists:map(fun(N) -> math:pow(N, 2) end, Numbers),
    Sum = lists:foldl(fun(N, Sum) -> N + Sum end, 0, Squares),
    trunc(Sum).
