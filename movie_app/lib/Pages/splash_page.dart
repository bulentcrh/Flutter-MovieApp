import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/Pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5,),
        ),
        child: Center(
          child: Text(
            "Dp Movies",
            style: GoogleFonts.lobster(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
              )
            )
          ),
      ),
      
    );
  }
}