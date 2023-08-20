import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:newsapplication/constant/colors.dart';
import 'package:newsapplication/constant/styles.dart';
import 'package:newsapplication/widgets/toolbar_with_title_and_back_button.dart';
import 'package:read_more_text/read_more_text.dart';

class BreakingNewsDetails extends StatefulWidget {
  const BreakingNewsDetails({Key? key}) : super(key: key);

  @override
  State<BreakingNewsDetails> createState() => _BreakingNewsDetailsState();
}

class _BreakingNewsDetailsState extends State<BreakingNewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ToolbarWithTitleAndBackbutton(),
            listData()
          ],
        ),
      ),
    );
  }

  Widget listData() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildTitle(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget imageBlogs() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage('assets/pakhead.png'),
                    fit: BoxFit.fill)),
          ),
          Text(
            'Damage of Geroues',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4.0, top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
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
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "CNN India",
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "-",
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Feb 28, 2023",
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "-",
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "World",
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite Sky Perfect JSAT order",
              style: const TextStyle(
                color: PanthalassaColors.colorBlack,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          imageBlogs(),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: ReadMoreText(
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite\n'
              'Sky Perfect JSAT order first satelite Sky Perfect JSAT order first Airbus satelite',
              numLines: 15,
              readMoreText: 'Read more',
              readLessText: 'Read less',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
