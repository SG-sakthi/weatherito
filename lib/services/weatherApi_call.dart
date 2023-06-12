import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/weather_model.dart';

class WeatherApiCall {
  Future<Weather?>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=75816751e6b891f08181f25c7f69e532&units=metric");
    var response = await http.get(endpoint);
    var body =jsonDecode(response.body);
   print(Weather.fromJson(body));
   return Weather.fromJson(body);

  }
}
