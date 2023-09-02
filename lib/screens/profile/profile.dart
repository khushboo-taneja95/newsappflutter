import 'package:flutter/material.dart';
import 'package:newsapplication/core/constant/styles.dart';
import 'package:newsapplication/core/themes/colors.dart';
import 'package:newsapplication/widgets/setting_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getAccountsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getTopHeader() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "Profile",
          ),
        ],
      ),
    );
  }

  Widget getAccountsList() {
    return Column(children: [
      profile(),
      Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: PanthalassaColors.cardColor,
          boxShadow: [
            BoxShadow(
              color: PanthalassaColors.shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(children: [
          SettingItem(
            title: "Edit Profile",
            leadingIcon: "assets/ic_edit.png",
            onTap: () {},
          ),
          Divider(
            height: 0,
            color: Colors.grey.withOpacity(0.8),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.75))
                      ],
                      color: PanthalassaColors.colorRed,
                      borderRadius: BorderRadius.circular(59 / 2),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/ic_logout.png",
                        width: 14,
                        height: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Logout",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ]),
          ),
        ]),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Others Options',
            style: PanthalassaStyles.otherOptionsText,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: PanthalassaColors.cardColor,
          boxShadow: [
            BoxShadow(
              color: PanthalassaColors.shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(children: [
          // SettingItem(
          //   title: "Bookmarks",
          //   leadingIcon: "assets/ic_bookmarks.png",
          //   onTap: () {},
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.75))
                      ],
                      color: Colors.cyan[200],
                      borderRadius: BorderRadius.circular(59 / 2),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/ic_bookmarks.png",
                        width: 14,
                        height: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Bookmarks",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ]),
          ),
          Divider(
            height: 0,
            color: Colors.grey.withOpacity(0.8),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.75))
                      ],
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(59 / 2),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/ic_notifications.png",
                        width: 14,
                        height: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Get Notifications",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ]),
          ),
          Divider(
            height: 0,
            color: Colors.grey.withOpacity(0.8),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.75))
                      ],
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.circular(59 / 2),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/ic_privacypolicy.png",
                        width: 14,
                        height: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Privacy Policy",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ]),
          ),
          Divider(
            height: 0,
            color: Colors.grey.withOpacity(0.8),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.75))
                      ],
                      color: PanthalassaColors.colorGreen,
                      borderRadius: BorderRadius.circular(59 / 2),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/ic_rate_the_app.png",
                        width: 14,
                        height: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Rate This App",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ]),
          ),
          Divider(
            height: 0,
            color: Colors.grey.withOpacity(0.8),
          ),
        ]),
      ),
      const SizedBox(
        height: 20,
      ),
    ]);
  }

  Widget profile() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Center(
          child: Column(
            children: [
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: PanthalassaColors.profilePicBackgroundColor,
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    border:
                        Border.all(color: PanthalassaColors.inputBorderColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[800],
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Customer",
                style: PanthalassaStyles.otherOptionsText,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "customer@tripledotss.com",
                style: PanthalassaStyles.optionsText,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
