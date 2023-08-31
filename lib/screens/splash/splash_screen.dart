import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newsapplication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const WelcomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/splash_background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child:
                Image.asset("assets/splash_logo.png", height: 200, width: 200),
          ),
          const Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 80.0),
                  child: Text(
                    "powered by",
                    style: TextStyle(fontSize: 12),
                  ))),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: Image.asset("assets/logo.png", height: 100, width: 1200),
              )),
        ],
      ),
    );
  }
}
