-module(geom).


-export( [area/2,
          area/1]).


area( Lenght, Height ) ->
  area({rectangle, Lenght,  Height}).

area( {Figure, Lenght, Height}) when Lenght >= 0 andalso Height >= 0 ->
  case Figure of
    rectangle  -> Lenght * Height;
    triangle   -> Lenght * Height /2;
    elliprs    ->   math:pi() * Lenght * Height;
    _Unknown   -> 0
  end.



