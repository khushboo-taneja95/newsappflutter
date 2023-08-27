import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsapplication/panthalassa/presentation/Routes/generated_routes.dart';
import 'package:newsapplication/panthalassa/presentation/screens/biography/ui/biographyscreen.dart';
import 'package:newsapplication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // timerForScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: RouteGenerator().generateRoute,
      /*body: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/logo.png",
                height: 450,
                width: 450,
              ),
            ),
            // const Align(
            //     alignment: FractionalOffset.bottomCenter,
            //     child: Padding(
            //       padding: EdgeInsets.only(bottom: 80.0),
            //       child: Text(
            //         "THINGS THAT MATTER",
            //         style: TextStyle(
            //             fontWeight: FontWeight.w500,
            //             color: Colors.grey,
            //             fontSize: 22),
            //       ),
            //     )),
          ],
        ),
      ),*/
    );
  }

  // Future<void> timerForScreen() async {
  //   Timer(
  //     const Duration(seconds: 4),
  //     () =>  initialRoute: "/",
  //       onGenerateRoute: RouteGenerator().generateRoute,,
  //   );
  // }
}
