-module(e04_test).

-include_lib("eunit/include/eunit.hrl").

basic_dijkstra_gcd_test() ->
  ?assertEqual( 4, dijkstra:gcd(12,8)).
