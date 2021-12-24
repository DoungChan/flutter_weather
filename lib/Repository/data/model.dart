class WeatherModel {
  final temp;
  final pressure;
  final humidity;
  final temp_max;
  final temp_min;
  WeatherModel(
      this.humidity, this.pressure, this.temp, this.temp_max, this.temp_min);
  WeatherModel.fromJson(Map json)
      : temp = json["temp"],
        pressure = json["pressure"],
        humidity = json["humidity"],
        temp_max = json["temp_max"],
        temp_min = json["temp_min"];
}
