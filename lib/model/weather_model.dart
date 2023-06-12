import 'dart:convert';

class Weather {
  String? cityname;
  double? temp;
  double? wind;
  int? humidity;
  int? uv;
  int? pressure;

  Weather(
      {this.cityname,
      this.temp,
      this.wind,
      this.pressure,
      this.humidity,
      this.uv});

  Weather.fromJson(Map<String, dynamic> json) {
    cityname = json["name"];
    temp = json["main"]["temp"];
    wind = json["main"]["wind"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    uv = json["main"]["uv"];
  }

}
