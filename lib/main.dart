import 'package:car_animated_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CarApp());

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black
      ),
      title: 'Car Animated App',
      home: HomePage()
    );
  }
}