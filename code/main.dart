import 'package:flutter/material.dart';
import 'splash_sreeen.dart';

void main() {
  runApp(KrishiMitraApp());
}

class KrishiMitraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krishi Mitra',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(), // Start with the splash screen
    );
  }
}
