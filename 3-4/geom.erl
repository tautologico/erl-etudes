-module(geom).
-export([area/1]).

%% Etude 3-4: tuples as parameters

area({Shape, A, B}) ->
    area(Shape, A, B).

%% to avoid repeating the guards, we split the pattern matching clauses
%% into a area_internal function, and use the guards only once in the
%% exported area function
area(Shape, A, B) when A >= 0, B >= 0 ->
    area_internal(Shape, A, B).

area_internal(rectangle, A, B) ->
    A * B;
area_internal(triangle, A, B) ->
    A * B / 2.0;
area_internal(ellipse, A, B) ->
    math:pi() * A * B;
area_internal(_, _, _) ->
    0.
