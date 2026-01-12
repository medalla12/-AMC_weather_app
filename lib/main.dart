
import 'package:flutter/material.dart';
// Make sure this path is correct and the WeatherScreen file exists.
import 'package:weather_app/screens/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      // Hide the debug banner in the corner
      debugShowCheckedModeBanner: false,
      // Use a dark theme as the base for our app
      theme: ThemeData.dark().copyWith(
        // You can add further theme customizations here if you want
        scaffoldBackgroundColor: const Color(0xFF1a2333), // A deep blue for the base background
      ),
      home: const WeatherScreen(),
    );
  }
}
