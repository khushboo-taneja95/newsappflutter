import 'package:flutter/material.dart';
import 'package:newsapplication/constant/colors.dart';
import 'package:newsapplication/screens/home/home_navigations.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200.0,
                    child: Image.network(
                        'https://static.vecteezy.com/system/resources/thumbnails/004/216/831/original/3d-world-news-background-loop-free-video.jpg',
                        fit: BoxFit.fill),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 90,
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
                            onTap: () {},
                            child: Container(
                              height: 50,
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: NewsAppColors.colorBlack),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/applelogo.png",
                                    height: 30,
                                    width: 30,
                                    color: NewsAppColors.colorWhite,
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
                            onTap: () {},
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
                            onTap: () {},
                            child: Container(
                              height: 50,
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: NewsAppColors.fecebookbtn),
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
                            height: 80,
                          ),
                          const SizedBox(
                            height: 50,
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => HomeNavigation()));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: NewsAppColors.appColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                'SKIP NOW',
                                style:
                                    TextStyle(color: NewsAppColors.colorWhite),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Positioned(
                top: 150.0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                          radius:50,
                          backgroundImage: AssetImage('assets/logowithback.png',)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
