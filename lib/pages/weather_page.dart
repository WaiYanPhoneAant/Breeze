import 'package:breeze/models/weather_model.dart';
import 'package:breeze/services/weather_service.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //api key
  final _weatherService = WeatherService('apikey');
  WeatherModel? _weatherModel;

  //fetch weather
  _fetchWeather() async {
    String? cityName = await _weatherService.getCurrentCity();
    try {
      final weatherModel = await _weatherService.getWeather(cityName!);

      setState(() {
        _weatherModel = weatherModel;
      });
    } catch (e) {
      print(e);
      print("===errror ====");
    }
  }

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return "assets/sunny.json";

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
        return 'assets/sunny.json';
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/cloudy.json';
      case 'shower rain':
        return 'assets/rainy.json';

      case 'clear':
        return 'assets/sunny.json';

      default:
        return 'assets/sunny.json';
    }
  }

  @override
  void initState() {
    super.initState();

    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    const textColor = Colors.black54;
    // const textColor = Colors.white;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(
                Icons.place_outlined, // Replace with your desired icon
                color: textColor, // Icon color
                size: 20, // Icon size
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  _weatherModel?.cityName ?? 'Loading City....',
                  style: const TextStyle(color: textColor, fontSize: 20),
                ),
              ),
            ]),
            Lottie.asset(getWeatherAnimation(_weatherModel?.mainCondition),
                width: 200),
            // Weather main condition
            Text(
              '${_weatherModel?.mainCondition ?? ''} ',
              style: const TextStyle(color: textColor, fontSize: 16),
            ),
            // Weather Temperature
            Text(
              '${_weatherModel?.temperature} C',
              style: const TextStyle(color: textColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
