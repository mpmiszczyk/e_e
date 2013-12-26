-module(e02_test).

-compile( export_all ).

-include_lib("eunit/include/eunit.hrl").


calculate_area_test() ->
  ?assertEqual( 12,
                geom:area( 3, 4)).

other_are_test() ->
  ?assertEqual( 84,
                geom:area( 12, 7 )).


