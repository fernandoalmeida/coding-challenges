-module(accumulate).

-export([accumulate/2]).

accumulate(Fn, Ls) ->
  accumulate(Fn, Ls, []).

accumulate(_Fn, [], Result) -> reverse(Result);
accumulate(Fn, [Head | Tail], Result) ->
  accumulate(Fn, Tail, [Fn(Head) | Result]).

reverse(List) ->
    reverse(List, []).

reverse([], Result) ->
    Result;
reverse([Head | Tail], Result) ->
    reverse(Tail, [Head | Result]).
