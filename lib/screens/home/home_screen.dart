import 'package:flutter/material.dart';
import 'package:newsapplication/constant/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.callBack});
  final Function(int)? callBack;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            breakingNews(),
            const Divider(),
            getPopularStories(),
            const Divider(),
            getRecentUpdates(),
          ],
        ),
      ),
    );
  }

  Widget breakingNews() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Row(
                children: [
                  Text(
                    "Breaking News",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 25,
                    color: NewsAppColors.appColor,
                  )
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (widget.callBack != null) {
                    widget.callBack!(2);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.black,
                        NewsAppColors.appColor,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  height: 40,
                  width: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const Center(
                        child: Text(
                          'See All',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2.4,
              child: GridView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return breakingNewsSlider();
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget breakingNewsSlider() {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 5,
        //     blurRadius: 7,
        //     offset: const Offset(0, 2),
        //   ),
        // ],
        image: const DecorationImage(
            image: NetworkImage(
              "https://cdn.theatlantic.com/thumbor/B37bXmrzbEGO9Cmhd0RKVqaOnaI=/0x0:2000x1125/960x540/media/img/2022/12/0123_DIS_Koren_Overview_1/original.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Positioned(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: NewsAppColors.appColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Space',
                    style: TextStyle(color: NewsAppColors.colorWhite),
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 20.0,
              bottom: 50.0,
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sky Perfect JSAT order first",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            const Positioned(
              left: 20.0,
              bottom: 10.0,
              child: Row(
                children: [
                  Icon(
                    Icons.punch_clock,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '5 Hour',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 20.0,
              bottom: 10.0,
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '25',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getPopularStories() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Popular Stories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (widget.callBack != null) {
                      widget.callBack!(2);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.black,
                          NewsAppColors.appColor,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    height: 40,
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: const Center(
                          child: Text(
                            'See More',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 195,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return getPopularStoriesCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget getPopularStoriesCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (() {}),
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width - 205,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Sky Perfect JSAT order first Airbus satelite",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: NewsAppColors.appColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  'Space',
                                  style: TextStyle(
                                      color: NewsAppColors.colorWhite),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Icon(
                                Icons.favorite,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '25',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        "https://st2.depositphotos.com/1026550/7026/i/450/depositphotos_70260873-stock-photo-planet-earth-from-the-space.jpg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.punch_clock,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '5 Hour',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getRecentUpdates() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text(
                "Recent Updates",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (widget.callBack != null) {
                    widget.callBack!(2);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.black,
                        NewsAppColors.appColor,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  height: 40,
                  width: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const Center(
                        child: Text(
                          'See More',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 4.0, right: 4),
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return getRecentUpdatesCards();
          },
        ),
      ],
    );
  }

  Widget getRecentUpdatesCards() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://st2.depositphotos.com/1026550/7026/i/450/depositphotos_70260873-stock-photo-planet-earth-from-the-space.jpg",
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Sky Perfect JSAT order first Airbus satelite",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              height: 1.5),
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Kylie jenner and her daughter stormi enjoy yummy treats on private jet for vacation kylie jenner and her daughter stormi enjoy yummy enjoy ",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          '1 Day Ago',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '25',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
