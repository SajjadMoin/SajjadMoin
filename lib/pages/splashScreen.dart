import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tiktok_ui/constants/colors.dart';
import 'package:tiktok_ui/pages/login_signup/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fBackgroundColor,
      body: Center(child: Image.asset("assets/foster logo.png")),
    );
  }
}
