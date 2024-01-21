import 'dart:async';

import 'package:classwrk1_flutter/login_signup.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginSignup()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset("asset/animi/animationwrk1.json"),
      ),
    );
  }
}
