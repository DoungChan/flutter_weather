import 'dart:convert';

import 'package:flutter_weather/Repository/data/model.dart';
import 'package:flutter_weather/Repository/data/netwrok.dart';

class WeatherRepo {
  late final NetworkRequest networkRequest;
  Future<WeatherModel> getWeatherLocation(String city) async {
    final WeatherModel weatherModel = await networkRequest.getweather(city);

    return weatherModel;
  }

  getweather(city) {}
}



  // Future<WeatherModel> parsedJson(final respones) async {
  //   final JsonDecoded = json.decode(respones);
  //   final jsonWeather = jsonDecode("main");
  //   final wea.fromJson(jsonWeather);
  // }

