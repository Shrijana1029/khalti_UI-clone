import 'package:flutter/material.dart';
import 'package:my_khalti/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            fontFamily: 'Poppins',
          ),
          displayLarge: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
            fontFamily: 'Poppins',
          ),
          displayMedium: TextStyle(
            fontSize: 16,
            // fontWeight: FontWeight.bold,
            letterSpacing: 0,
            fontFamily: 'Poppins',
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
