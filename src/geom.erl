-module(geom).


-export( [area/2,
          area/1]).


area( Lenght, Height ) ->
  Lenght * Height.

area( {rectangle, Lenght, Height}) when Lenght >= 0 andalso Height >= 0 ->
  area( Lenght, Height );

area( {triangle, Lenght, Height}) when Lenght >= 0 andalso Height >= 0->
  Lenght * Height / 2;

area( {ellipse, Lenght, Height}) when Lenght >= 0 andalso Height >= 0  ->
  math:pi() * Lenght * Height;

area( {_UnknownShape, Lenght, Height}) when Lenght >= 0 andalso Height >= 0 ->
  0.




