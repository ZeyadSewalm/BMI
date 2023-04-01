import 'package:flutter/material.dart';
import 'package:untitled2/test1.dart';
import 'bmi_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home:PlantScreen(),
    );
  }
}