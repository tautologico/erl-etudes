-module(geom).
-export([area/1]).

%% Etude 4-1: using case

area({Shape, A, B}) ->
    area(Shape, A, B).

area(Shape, A, B) when A >= 0, B >= 0 ->
    case {Shape, A, B} of
        {rectangle, A, B} ->
            A * B;
        {triangle, A, B} ->
            A * B / 2.0;
        {ellipse, A, B} ->
            math:pi() * A * B;
        {_, _, _} ->
            0
    end.
