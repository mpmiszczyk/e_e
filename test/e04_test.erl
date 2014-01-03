-module(e04_test).

-include_lib("eunit/include/eunit.hrl").

basic_dijkstra_gcd_test() ->
  ?assertEqual( 4, dijkstra:gcd( 12, 8 )),
  ?assertEqual( 7, dijkstra:gcd( 14, 21)),
  ?assertEqual( 1, dijkstra:gcd(125, 46)),
  ?assertEqual(12, dijkstra:gcd(120, 36)).
