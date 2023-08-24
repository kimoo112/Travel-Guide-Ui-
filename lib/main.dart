import 'package:flutter/material.dart';
import 'package:travel_guide/spalsh_screen.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Guide',
      theme: ThemeData(fontFamily: "Roboto",useMaterial3: true),
      home: const SplashScreen(
        duration: 4.99,
        nextScreen: HomeScreen(),
        seconds: 4.99,
      ),
    );
  }
}
