import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiktok_ui/constants/colors.dart';
import 'package:tiktok_ui/widget/widget.dart';

import 'login_screen.dart';

class SignInApp extends StatelessWidget {
  const SignInApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/foster logo.png"),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: LoginScreen()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  style: simpleButton(fButtonColor),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: fButtonColor, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  style: simpleButton(Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
