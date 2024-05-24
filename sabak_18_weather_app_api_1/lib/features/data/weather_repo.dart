import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import 'package:sabak_18_weather_app_api_1/features/data/model.dart';

class WeatherRepo {

  Future<WeatherModel?> fetchDataWithDio() async {
    final resp = await Dio().get(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=3321afb0865bf00f4b6d5e3d1fd2dbab');
    if (resp.statusCode == 200) {
      final weather = WeatherModel(
        id: resp.data['weather'][0]['id'],
        main: resp.data['weather'][0]['main'],
        description: resp.data['weather'][0]['description'],
        icon: resp.data['weather'][0]['icon'],
        temp: resp.data['main']['temp'],
        name: resp.data['name'],
      );
      return weather;
    }
    return null;
  }

   ////////////////////////////////////////
  Future<void> fetchDataWithHttp() async {
    final resp = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek&appid=3321afb0865bf00f4b6d5e3d1fd2dbab'));
    if (resp.statusCode == 200 || resp.statusCode == 201) {
      print(resp.body);
    }
  }
}