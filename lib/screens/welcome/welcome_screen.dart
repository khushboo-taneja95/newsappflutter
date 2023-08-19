import 'package:flutter/material.dart';
import 'package:newsapplication/constant/colors.dart';
import 'package:newsapplication/screens/home/home_navigations.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200.0,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Sign - in',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18)),
                                TextSpan(
                                    text: ' To Continue',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                              "Please log in using any of the options \n for the better and personalized \n experience",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              textAlign: TextAlign.center),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => HomeNavigation()));
                            },
                            child: Container(
                              height: 50,
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: PanthalassaColors.colorBlack),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/applelogo.png",
                                    height: 30,
                                    width: 30,
                                    color: PanthalassaColors.colorWhite,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Sign in with apple',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => HomeNavigation()));
                            },
                            child: Container(
                              height: 50,
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/googlelogo.png",
                                    height: 40,
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Sign in with google',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => HomeNavigation()));
                            },
                            child: Container(
                              height: 50,
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: PanthalassaColors.fecebookbtn),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/facebookicon.png",
                                    height: 30,
                                    width: 30,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Sign in with facebook',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'By continuing, you agree to the \n User Agreement & Privacy Policy',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: false,
                child: Positioned(
                  top: 150.0,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 5,
                        color: PanthalassaColors.appColor,
                      ),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/logowithback.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
