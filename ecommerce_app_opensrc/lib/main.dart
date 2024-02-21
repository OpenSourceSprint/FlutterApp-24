import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          primarySwatch: const MaterialColor(
            0xFF000000,
            <int, Color>{
              50: Color(0xFFE0E0E0),
              100: Color(0xFFB3B3B3),
              200: Color(0xFF808080),
              300: Color(0xFF4D4D4D),
              400: Color(0xFF262626),
              500: Color(0xFF000000),
              600: Color(0xFF000000),
              700: Color(0xFF000000),
              800: Color(0xFF000000),
              900: Color(0xFF000000),
            },
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),
      home: const LandingPage(),
    );
  }
}
