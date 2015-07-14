-module(house).
-export([house/1, street/2, printStreet/1]).

house(Name) ->
    {house, Name}.

street(Name, Houses) ->
    {street, Name, Houses}.

printHouses([{house, HouseName}|T]) ->
    io:format("~ts~n", [HouseName]),
    printHouses(T);
printHouses([]) ->
    io:format("~ts~n", ["End of data"]).

printStreet(Street) ->
    {street, StreetName, Houses} = Street,
    io:format("~ts~n", [StreetName]),
    printHouses(Houses).
