import 'package:flutter/material.dart';
import 'package:newsapplication/constant/colors.dart';
import 'package:newsapplication/screens/home/home_navigations.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => HomeNavigation()));
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: PanthalassaColors.colorBlack),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/applelogo.png",
                      height: 25,
                      width: 25,
                      color: PanthalassaColors.colorWhite,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Sign in with apple',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => HomeNavigation()));
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/googlelogo.png",
                      height: 25,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Sign in with google',
                      style: TextStyle(
                          fontSize: 14,
                          color: PanthalassaColors.borderColorGrey,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => HomeNavigation()));
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: PanthalassaColors.fecebookbtn),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/facebookicon.png",
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Sign in with facebook',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            orDivider(),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => HomeNavigation()));
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: PanthalassaColors.colorRed,
                    border: Border.all(color: Colors.red),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Login With Email Or Mobile',
                      style: TextStyle(
                          fontSize: 14,
                          color: PanthalassaColors.colorWhite,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'New User?',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  TextButton(
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                          color: PanthalassaColors.colorRed, fontSize: 12),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  ),
                  const Spacer(),
                  const Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: PanthalassaColors.colorRed, fontSize: 12),
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
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: PanthalassaColors.borderColorGrey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'or login',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 1,
              color: PanthalassaColors.borderColorGrey,
            ),
          ),
        ],
      ),
    );
  }
}
