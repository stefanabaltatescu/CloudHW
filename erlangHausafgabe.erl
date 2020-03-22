%% @author StefanaBaltatescu
%% @doc @todo Add description to erlangHA.


-module(erlangHA).
% -import(string,[len/1, concat/2,chr/3, substr/3, str/2, to_lower/1, to_upper/1]).
 -export([list_max/1, list_min/1, reverse/1, find/2, delete/2, flatten/1]).

% Funktion, die das größte Element einer Liste zurückgibt

list_max( [H|T] ) -> list_max( H , T ).
list_max( X , []    ) -> X;
list_max( X , [H|T] ) -> list_max( erlang:max(H, X) , T ).

% Funktion, die das kleinste Element einer Liste zurückgibt

list_min( [H|T] ) -> list_min( H , T ).
list_min( X , []    ) -> X;
list_min( X , [H|T] ) -> list_min( erlang:min(H, X) , T ).

% Andere Listen Funktionen 
reverse([]) -> [];
reverse([X|Xs]) -> reverse(Xs) ++ [X].

find(_, []) -> not_found;
find(X, [X|_]) -> {found, X};
find(X, [_|Ys]) -> find(X, Ys).

delete(_, []) -> [];
delete(X, [X|Ys]) -> Ys;
delete(X, [Y|Ys]) -> [Y|delete(X, Ys)].

flatten([]) -> [];
flatten([Xs|Ys]) -> Xs ++ flatten(Ys).