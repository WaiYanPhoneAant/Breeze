import 'dart:convert';

import 'package:breeze/models/weather_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  // ignore: constant_identifier_names
  static const BASE_URL = "https://api.openweathermap.org/data/2.5/weather";
  final String apiKey;

  WeatherService(this.apiKey);

  Future<WeatherModel> getWeather(String cityName) async {
    final response = await http
        .get(Uri.parse('$BASE_URL?q=$cityName&appid=$apiKey&units=metric'));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      // print(Uri.parse('$BASE_URL?q=$cityName&appid=$apiKey&units=metric'));
      throw Exception(response);
    }
  }

  Future<String?> getCurrentCity() async {
    // LocationPermission permission = await Geolocator.checkPermission();
    // if (permission == LocationPermission.denied) {
    //   permission = await Geolocator.requestPermission();
    // }

    // //fetch current location
    // // ignore: deprecated_member_use
    // Position position = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.high);

    // List<Placemark> placemarks =
    //     await placemarkFromCoordinates(position.latitude, position.longitude);

    // String? city = placemarks[0].locality ?? 'Bangkok';
    return "Bangkok";
  }
}
