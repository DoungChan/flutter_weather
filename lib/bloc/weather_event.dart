part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class Fetchweather extends WeatherEvent {
  // ignore: prefer_typing_uninitialized_variables
  final _city;

  const Fetchweather(this._city);

  @override
  List<Object> get props => [_city];
}

class Resetweather extends WeatherEvent {}
