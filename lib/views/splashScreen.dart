import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resturant_owner/views/onBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/icon.png',
          height: 160,
          width: 160,
        ),
      ),
    );
  }
}
