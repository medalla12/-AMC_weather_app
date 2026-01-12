// class Weather {
//   final String city;
//   final double temperature;
//   final description;
//   final int humidity;
//   final double windSpeed;
//
//   Weather({
//     required this.city,
//     required this.temperature,
//     required this.description,
//     required this.humidity,
//     required this.windSpeed,
//   });
//
//   // lib/models/weather.dart (Corrected Version)
//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//       city: json['name'],
//       temperature: (json['main']['temp'] as num).toDouble(),
//               // Assigns 'Clouds'
//       description: json['weather'][0]['description'],  // <-- FIX: Assigns 'broken clouds'
//       humidity: json['main']['humidity'],
//       windSpeed: (json['wind']['speed'] as num).toDouble(),
//     );
//   }
//
//
//
//       );
//     }
//   }
// lib/models/weather.dart

class Weather {
  final String city;
  final double temperature;
  final String mainCondition; // Added this property
  final String description;
  final int humidity;
  final double windSpeed;

  Weather({
    required this.city,
    required this.temperature,
    required this.mainCondition, // Added to constructor
    required this.description,
    required this.humidity,
    required this.windSpeed,
  });

  // Factory constructor to parse JSON data
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      // Maps the 'name' field from JSON to the 'cityName' property
      city: json['name'],

      // Maps 'temp' and ensures it's a double
      temperature: (json['main']['temp'] as num).toDouble(),

      // Maps the main weather condition (e.g., "Clouds")
      mainCondition: json['weather'][0]['main'],

      // Maps the detailed weather description (e.g., "broken clouds")
      description: json['weather'][0]['description'],

      // Maps humidity
      humidity: json['main']['humidity'],

      // Maps wind speed and ensures it's a double
      windSpeed: (json['wind']['speed'] as num).toDouble(),
    );
  }
}
