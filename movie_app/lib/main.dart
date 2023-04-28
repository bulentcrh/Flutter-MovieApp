import 'package:flutter/material.dart';
import 'package:movie_app/Pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1D1D28),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
           elevation: 0,
        ),

      ),
      home: SplashPage(),
    );
  }
}


