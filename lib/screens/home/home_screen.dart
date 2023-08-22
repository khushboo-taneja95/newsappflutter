import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newsapplication/constant/colors.dart';
import 'package:readmore/readmore.dart';
import 'package:newsapplication/screens/breaking_news/breaking_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.callBack});
  final Function(int)? callBack;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool condition = true;
  List<String> topCat = [
    "Top News",
    "State",
    "Life",
    "Bollywood",
    "Cricket",
    "Women",
    "Country",
    "Carrier",
    "Original",
    "Utility"
  ];
  final List<IconData> icons = [
    Icons.newspaper,
    Icons.safety_check,
    Icons.nightlife,
    Icons.drive_file_move,
    Icons.sports_cricket,
    Icons.woman,
    Icons.countertops,
    Icons.account_balance_outlined,
    Icons.crop_original,
    Icons.add_circle_outline,
  ];

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
            getHomeBanners(),
         //   getTopVideos(),
            getCategories(),
            getPopularStories(),
            // getRecentUpdates(),
          ],
        ),
      ),
    );
  }

  Widget getHomeBanners() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Breaking News",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Show More",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                viewportFraction: 1,
                autoPlay: true,
              ),
              items: [
                for (int i = 0; i < 4; i++)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          // colorFilter: ColorFilter.mode(
                          //     Colors.black45, BlendMode.darken),
                          image: AssetImage('assets/pakhead.png'),
                        ),
                        /* boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(4, 4))
                          ]*/
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  )
              ]),
        ],
      ),
    );
  }

  Widget getTopVideos() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Top Videos",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Center(
                    child: Row(
                      children: [
                        Text(
                          'More',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 12,
                          color: PanthalassaColors.colorRed,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          // Stack(
          //   children: <Widget>[
          //     Container(
          //         decoration:   BoxDecoration(color: Colors.white, border: Border.all(), image: DecorationImage(
          //           image: NetworkImage('https://images.news18.com/ibnkhabar/uploads/2023/08/1692545057_f52764ab-ac6a-4fdb-b022-c470a2cd855e-16925450573x2.jpeg?im=Resize,width=384,aspect=fit,type=normal'),
          //           fit: BoxFit.cover,
          //         ),),
          //          height: 100,
          //         width: 100,
          //      ),
          //     Align(
          //       alignment: Alignment.center,
          //       child: Icon(Icons.video_collection,color: Colors.white,size: 30,),
          //     )
          //   ],
          // )
          Center(
            child: Stack(
              children: [
                Container(
                   child: Image.network(
                    'https://images.news18.com/ibnkhabar/uploads/2023/08/1692545057_f52764ab-ac6a-4fdb-b022-c470a2cd855e-16925450573x2.jpeg?im=Resize,width=384,aspect=fit,type=normal',
                    height: 100,
                    width:100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.video_collection,
                        color: Colors.white,
                        size: 30,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getCategories() {
    return Padding(
      padding: const EdgeInsets.only(top: 2, right: 8, left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "Categories ",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 16,
          //           fontWeight: FontWeight.bold),
          //     ),
          //     Text(
          //       "Show more",
          //       style: TextStyle(
          //           color: Colors.grey,
          //           fontSize: 13,
          //           fontWeight: FontWeight.bold),
          //     )
          //   ],
          // ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: topCat.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return categoriesTopSlider(
                    topCat[index].toString(), index, icons[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget categoriesTopSlider(String topCat, int i, IconData icon) {
    return SizedBox(
      width: 95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.5),
            child: i == 0
                ? Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: PanthalassaColors.appColor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    // color: Colors.red,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icon,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              topCat,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    // color: Colors.red,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icon,
                              color: PanthalassaColors.appColor.withOpacity(.8),
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              topCat,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: PanthalassaColors.colorBlack),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ),
        ],
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
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 25,
                    color: PanthalassaColors.appColor,
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
                        PanthalassaColors.appColor,
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
                          'Show more',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
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
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => BreakingNewsDetails())));
      },
      child: Container(
        height: 200,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage("assets/kiara.jpg"), fit: BoxFit.cover),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: const Stack(
            children: [
              Positioned(
                left: 20.0,
                bottom: 50.0,
                right: 10.0,
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              Positioned(
                left: 20.0,
                bottom: 10.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.punch_clock,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '5 Hour',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 10.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '25',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
                  "Recommended for you",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (widget.callBack != null) {
                      widget.callBack!(2);
                    }
                  },
                  child: const Center(
                    child: Text(
                      'Show More',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: ListView.builder(
              itemCount: 20,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
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
    return InkWell(
      onTap: (() {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => BreakingNewsDetails())));
      }),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "assets/space.jpeg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width - 155,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                'CNN',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 5),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "CNN India",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            ".",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Feb 28, 2023",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      maxLines: 3,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "August 28, 2023",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
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
                    fontSize: 16,
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
                        PanthalassaColors.appColor,
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
                          'Show More',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
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
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/space.jpeg",
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 5.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Kylie jenner and her daughter stormi enjoy yummy treats on private jet for vacation kylie jenner and her daughter stormi enjoy yummy enjoy ",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
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
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '25',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
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
            ),
          ],
        ),
      ),
    );
  }
}
