import 'package:flutter/material.dart';
import 'package:newsapplication/constant/colors.dart';
import 'package:newsapplication/screens/categories/categories.dart';
import 'package:newsapplication/screens/favourite/favourite.dart';
import 'package:newsapplication/screens/home/home_screen.dart';
import 'package:newsapplication/screens/profile/profile.dart';
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
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Row(
          children: [Text("News App")],
        ),
        actions: <Widget>[
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
        backgroundColor: NewsAppColors.appColor,
      ),
      drawer: Drawer(
        child: getDrawer(),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: NewsAppColors.bottomTapColor,
        elevation: 16,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: NewsAppColors.appColor,
        unselectedItemColor: NewsAppColors.bottomTapUnselectedColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/home.png",
              width: 25,
              height: 23,
            ),
            activeIcon: Image.asset(
              "assets/home.png",
              width: 25,
              height: 23,
              color: NewsAppColors.appColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/categories.png",
              width: 25,
              height: 23,
            ),
            activeIcon: Image.asset(
              "assets/categories.png",
              width: 25,
              height: 23,
              color: NewsAppColors.appColor,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/favourite.png",
              width: 25,
              height: 23,
            ),
            activeIcon: Image.asset(
              "assets/favourite.png",
              width: 25,
              height: 23,
              color: NewsAppColors.appColor,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/account.png",
              width: 30,
              height: 28,
            ),
            activeIcon: Image.asset(
              "assets/account.png",
              width: 30,
              height: 28,
              color: NewsAppColors.appColor,
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
      child: Drawer(
        child: Column(children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.shutterstock.com/image-photo/skyscrapers-low-angle-view-modern-260nw-1035769717.jpg")),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "NEWS LINE",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Version: 1.0.3",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                  padding: const EdgeInsets.all(8.0),
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
                  padding: const EdgeInsets.all(8.0),
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
                  padding: const EdgeInsets.all(8.0),
                  child: SettingItem(
                    title: "Rate This App",
                    leadingIcon: "assets/ic_rate_the_app.png",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Align(
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
                              color: NewsAppColors.colorRed,
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
              ))
        ]),
      ),
    );
  }
}
