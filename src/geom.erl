-module(geom).


-export( [area/2,
          area/3]).


area( Lenght, Height ) ->
  Lenght * Height.

area( rectangle, Lenght, Height ) ->
  area( Lenght, Height );
area( triangle, Lenght, Height ) ->
  Lenght * Height / 2;
area( ellipse, Lenght, Height) ->
  math:pi() * Lenght * Height.


