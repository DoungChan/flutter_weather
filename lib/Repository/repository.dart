import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/bloc/weather_bloc.dart';
import 'package:flutter_weather/main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_weather/Repository/data/model.dart';

class WeatherRepo {
  Future<WeatherModel> getweather(String city) async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather/?q=london&appid=ce5731a85b34b77de1d239d27968c1c1'));
    // ignore: avoid_print
    print(response.body);
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Data');
    }
  }

  // Future<WeatherModel> parsedJson(final respones) async {
  //   final JsonDecoded = json.decode(respones);
  //   final jsonWeather = jsonDecode("main");
  //   final wea.fromJson(jsonWeather);
  // }
}
