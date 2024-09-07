// class WeatherModel {
//   final String cityName;
//   final String temperature;
//   final String mainCondition;

//   WeatherModel({
//     required this.cityName,
//     required this.temperature,
//     required this.mainCondition,
//   });

//   factory WeatherModel.fromJson(Map<String, dynamic> json) {
//     return WeatherModel(
//         cityName: json['name'],
//         temperature: json['main']['tem'].toDouble(),
//         mainCondition: json['weather'][0]['main']);
//   }
// }


class WeatherModel {
  final String cityName;
  final String temperature;
  final String mainCondition;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['name'] ?? 'Unknown city',
      temperature: json['main'] != null
          ? (json['main']['temp'] as num).toString()
          : '0', // Provide a default value if temp is null
      mainCondition: json['weather'] != null && json['weather'].isNotEmpty
          ? json['weather'][0]['main'] ?? 'Unknown condition'
          : 'Unknown condition',
    );
  }
}
