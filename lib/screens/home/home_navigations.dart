import 'package:flutter/material.dart';
import 'package:newsapplication/core/themes/colors.dart';
import 'package:newsapplication/features/biography/presentation/biography_category/pages/biography_category.dart';
import 'package:newsapplication/screens/categories/categories.dart';
import 'package:newsapplication/screens/favourite/favourite.dart';
import 'package:newsapplication/screens/home/home_screen.dart';
import 'package:newsapplication/screens/profile/profile.dart';
import 'package:newsapplication/screens/welcome/welcome_screen.dart';
import 'package:newsapplication/widgets/setting_item.dart';

class HomeNavigation extends StatefulWidget {
  HomeNavigation({Key? key, this.index}) : super(key: key);
  int? index;
  @override
  _HomeNavigationState createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [];
  @override
  void initState() {
    _widgetOptions = [
      HomeScreen(
        callBack: onTabTapped,
      ),
      const CategoriesScreen(),
      const FavouriteScreen(),
      const ProfileScreen(),
    ];
    _selectedIndex = widget.index ?? 0;
    super.initState();
  }

  void onTabTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        // title:  Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Image.asset(
        //         'assets/logo.png',
        //         height: 50,
        //         width: 150,
        //     )
        //   ],
        // ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 80,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: PanthalassaColors.colorGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // handle button press
                    },
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.black87.withOpacity(0.8),
                        size: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black87.withOpacity(0.8),
                        size: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        backgroundColor: PanthalassaColors.colorWhite,
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
            border: Border.all(
              color: PanthalassaColors.textColorWhite,
            ),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Drawer(
          backgroundColor: PanthalassaColors.textColorWhite,
          child: ListView(
            // Remove padding
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Customer',
                  style: TextStyle(fontSize: 12, color: Colors.black87),
                ),
                accountEmail: Text(
                  'customer@gmail.com',
                  style: TextStyle(fontSize: 12, color: Colors.black87),
                ),
                // currentAccountPicture: CircleAvatar(
                //   child: ClipOval(
                //     child: Image.network(
                //       'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                //       fit: BoxFit.cover,
                //       width: 90,
                //       height: 90,
                //     ),
                //   ),
                // ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // image: DecorationImage(
                  //     fit: BoxFit.fill,
                  //     image: AssetImage('assets/logo.png',)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                title: Text('Favorites'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black87,
                ),
                title: Text('Friends'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.green,
                ),
                title: Text('Share'),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const BiographyCategoryPage())),
              ),
              ListTile(
                leading: Icon(Icons.notifications, color: Colors.red),
                title: Text('Request'),
                onTap: () => null,
                trailing: ClipOval(
                  child: Container(
                    color: Colors.red,
                    width: 20,
                    height: 20,
                    child: Center(
                      child: Text(
                        '8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.amber),
                title: Text('Settings'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.description, color: Colors.green),
                title: Text(
                  'Policies',
                ),
                onTap: () => null,
              ),
              Divider(),
              ListTile(
                title: Text('Logout'),
                leading:
                    Icon(Icons.power_settings_new_rounded, color: Colors.red),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const WelcomeScreen())),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: PanthalassaColors.bottomTapColor,
        elevation: 5,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.normal, fontSize: 10),
        selectedItemColor: PanthalassaColors.appColor,
        unselectedItemColor: PanthalassaColors.bottomTapUnselectedColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/home.png",
              width: 20,
              height: 20,
            ),
            activeIcon: Image.asset(
              "assets/activehome.png",
              width: 20,
              height: 20,
              color: PanthalassaColors.appColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/categories.png",
              width: 20,
              height: 20,
            ),
            activeIcon: Image.asset(
              "assets/activecategories.png",
              width: 20,
              height: 20,
              color: PanthalassaColors.appColor,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/favourite.png",
              width: 20,
              height: 20,
            ),
            activeIcon: Image.asset(
              "assets/activefavourite.png",
              width: 20,
              height: 20,
              color: PanthalassaColors.appColor,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/account.png",
              width: 20,
              height: 20,
            ),
            activeIcon: Image.asset(
              "assets/activeaccount.png",
              width: 20,
              height: 20,
              color: PanthalassaColors.appColor,
            ),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  Widget getDrawer() {
    return SafeArea(
      child: /*Drawer(
        child: Column(children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Panthalassa",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Version: 1.0.3",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: SettingItem(
                    title: "Bookmarks",
                    leadingIcon: "assets/ic_bookmarks.png",
                    onTap: () {},
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(0.8),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: SettingItem(
                    title: "Get Notifications",
                    leadingIcon: "assets/ic_notifications.png",
                    onTap: () {},
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(0.8),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: SettingItem(
                    title: "Privacy Policy",
                    leadingIcon: "assets/ic_privacypolicy.png",
                    onTap: () {},
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(0.8),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: SettingItem(
                    title: "Rate This App",
                    leadingIcon: "assets/ic_rate_the_app.png",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const WelcomeScreen()));
            },
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50.0, left: 10.0),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.75))
                                ],
                                color: PanthalassaColors.colorRed,
                                borderRadius: BorderRadius.circular(50 / 2),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/ic_logout.png',
                                  width: 22,
                                  height: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: Text(
                                'Logout',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ]),
                    ],
                  ),
                )),
          )
        ]),
      ),*/
          Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          width: 50,
          child: ListView(
            // Remove padding
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Customer'),
                accountEmail: Text('customer@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                      fit: BoxFit.cover,
                      width: 90,
                      height: 90,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favorites'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Friends'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Request'),
                onTap: () => null,
                trailing: ClipOval(
                  child: Container(
                    color: Colors.red,
                    width: 20,
                    height: 20,
                    child: Center(
                      child: Text(
                        '8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: Text('Policies'),
                onTap: () => null,
              ),
              Divider(),
              ListTile(
                title: Text('Exit'),
                leading: Icon(Icons.exit_to_app),
                onTap: () => null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
