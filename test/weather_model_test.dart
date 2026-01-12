// test/weather_model_test.dart (Fully Corrected)

import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/models/weather.dart'; // Adjust the import path as necessary

void main() {
  group('Weather.fromJson', () {
    test('should correctly parse a valid JSON response for Manila', () {
      // A realistic sample JSON response from OpenWeatherMap for Manila.
      final manilaJsonResponse = '''
      {
        "weather": [
          {
            "main": "Clouds",
            "description": "broken clouds"
          }
        ],
        "main": {
          "temp": 28.3,
          "humidity": 81
        },
        "wind": {
          "speed": 2.24
        },
        "name": "Manila"
      }
      ''';

      // 1. Decode the JSON string into a Map
      final jsonMap = jsonDecode(manilaJsonResponse) as Map<String, dynamic>;

      // 2. Call the fromJson factory method
      final weather = Weather.fromJson(jsonMap);

      // 3. Assert that the Weather object has the correct properties
      expect(weather.city, 'Manila'); // FIX 1: 'city' -> 'cityName'
      expect(weather.temperature, 28.3);

      expect(weather.description, 'broken clouds');
      expect(weather.humidity, 81);
      expect(weather.windSpeed, 2.24);
    });
  });
}
