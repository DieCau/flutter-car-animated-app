import 'package:car_animated_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CarApp());

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage()
    );
  }
}