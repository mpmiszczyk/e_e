-module(e03_test).

-compile( export_all).

-include_lib("eunit/include/eunit.hrl").


should_calculate_area_of_rectangle_by_explicit_atom_test() ->
  ?assertEqual( 12,
                geom:area( {rectangle, 3, 4})).


should_calculate_area_of_triangle__test() ->
  ?assertEqual( 7.5,
                geom:area( {triangle, 3, 5})).

should_calculate_area_of_ellipse_by_explicit_atom_test() ->
  ?assertEqual( 25.132741228718345,
                geom:area( {ellipse, 2, 4})).

should_throw_an_error_when_calling_fun_with_negative_numbers_test() ->
  ?assertError( function_clause,
                geom:area( {rectangle, -1, 0})).

should_return_zero_on_any_unknown_shape_test() ->
  ?assertEqual( 0,
                geom:area( {some_unknown_shape, 100, 99})).
  
