-module(space_age).

-export([ageOn/2, test_version/0]).

ageOn(Planet, Seconds) ->
  earth_years(Seconds) / planet_years(Planet).

earth_years(Seconds) ->
  Seconds / 31557600.

planet_years(mercury) -> 0.2408467;
planet_years(venus) -> 0.61519726;
planet_years(earth) -> 1.0;
planet_years(mars) -> 1.8808158;
planet_years(jupiter) -> 11.862615;
planet_years(saturn) -> 29.447498;
planet_years(uranus) -> 84.016846;
planet_years(neptune) -> 164.79132.


test_version() -> 1.
