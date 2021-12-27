import 'package:flutter_weather/Repository/data/model.dart';
import 'package:http/http.dart' as http;

class NetworkRequest {
  Future<WeatherModel> getweather(String city) async {
    WeatherModel weatherModel = http.get(Uri.parse(
            'https://api.openweathermap.org/data/2.5/weather/?q=$city&appid=ce5731a85b34b77de1d239d27968c1c1'))
        as WeatherModel;
    return weatherModel;
  }
}
