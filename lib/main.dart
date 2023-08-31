import 'package:flutter/material.dart';
import 'package:newsapplication/core/di/injection.dart';
import 'package:newsapplication/screens/splash/splash_screen.dart';
import 'package:newsapplication/screens/welcome/welcome_screen.dart';

void main() async {
  registerDependncies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Panthalassa',
       theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Panthalassa"
      ),
        home: const WelcomeScreen());
        // home: HomeNavigation(index: 0));
  }
}
