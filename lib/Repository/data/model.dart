// ignore_for_file: non_constant_identifier_names

class WeatherModel {
  final String temp;
  final String pressure;
  final String humidity;
  final String temp_max;
  final String temp_min;
  WeatherModel(
      this.humidity, this.pressure, this.temp, this.temp_max, this.temp_min);
  WeatherModel.fromJson(Map json)
      : temp = json["temp"],
        pressure = json["pressure"],
        humidity = json["humidity"],
        temp_max = json["temp_max"],
        temp_min = json["temp_min"];
}
