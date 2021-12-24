// ignore_for_file: prefer_typing_uninitialized_variables

part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];


}

class WeatherIsnotSearched extends WeatherState {}

class WeatherIsLoding extends WeatherState {}

class WeatherIsLoaded extends WeatherState {
  final _weather;
  const WeatherIsLoaded(this._weather);
  WeatherModel get getWeather => _weather;
  @override
  List<Object> get props => _weather;
}

class WeatherIsnotNotLoaded extends WeatherState {}
