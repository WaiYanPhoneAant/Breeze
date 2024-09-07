import 'dart:convert';
import 'package:breeze/models/weather_model.dart';
import 'package:http/http.dart' as http;

void main() async {
  final ws = WeatherService('1bee3c871916fe07515a2617a93ef817');

  // Get current city asynchronously
  String? cityName = ws.getCurrentCity();

  // Fetch weather information if cityName is not null
  if (cityName != null) {
    WeatherModel weather = await ws.getWeather(cityName);
    print(weather.temperature);
  } else {
    print('Unable to retrieve current city.');
  }
}

class WeatherService {
  static const url = "https://api.openweathermap.org/data/2.5/weather";
  final String apiKey;

  WeatherService(this.apiKey);

  Future<WeatherModel> getWeather(String cityName) async {
    final response = await http
        .get(Uri.parse('$url?q=$cityName&appid=$apiKey&units=metric'));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      print('Error: ${response.statusCode}');
      throw Exception('Failed to load weather data');
    }
  }
  
  getCurrentCity() {
    return "Bangkok";
  }
}
