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
          children: [const ToolbarWithTitleAndBackbutton(), listData()],
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
                    image: AssetImage('assets/pakhead.png'), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Express Investigations',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
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
                  width: 30,
                  height: 30,
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
                          fontSize: 8),
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
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "-",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
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
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "-",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "World",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "Drug pandemic in J&K: Networks of terror intersect with drug supply lines, on ground, from sky and online",
              style: const TextStyle(
                color: PanthalassaColors.colorBlack,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          imageBlogs(),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: Text(
              'From the sky, drones from Pakistan that drop drugs across the border; on the ground, a distribution model akin to a multi-level marketing scheme where an addict ropes in more addicts; consignments ferried from neighbouring states; prescription drugs sold against cancelled licences; and opioids procured from the darknet.',
              style: const TextStyle(
                fontSize: 12,
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: Text(
              'These are the myriad supply lines that feed and fuel the drug pandemic in Jammu and Kashmir which has stretched the public health system to its limits and poses a set of unprecedented challenges to security agencies, an investigation by The Indian Express has found. Analysing police records of seizure and arrests, both at an all-time high, and interviews with top officials also reveals that, in many cases, the drug trade and terror networks also run parallel — and often intersect.',
              style: const TextStyle(
                fontSize: 12,
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: ReadMoreText(
              'From the sky, drones from Pakistan that drop drugs across the border; on the ground, a distribution model akin to a multi-level marketing scheme where an addict ropes in more addicts; consignments ferried from neighbouring states; prescription drugs sold against cancelled licences; and opioids procured from the darknet.\n'
              'These are the myriad supply lines that feed and fuel the drug pandemic in Jammu and Kashmir which has stretched the public health system to its limits and poses a set of unprecedented challenges to security agencies, an investigation by The Indian Express has found. Analysing police records of seizure and arrests, both at an all-time high, and interviews with top officials also reveals that, in many cases, the drug trade and terror networks also run parallel — and often intersect.\n'
              'A recent, illustrative example is from June 9 when, trying to flee Rangoor village near the international border, three alleged narcotic smugglers from Punjab were intercepted and caught by the Jammu & Kashmir police. In their alleged possession was heroin weighing 2.8 kg, a pistol, Rs 93,000, and four high-end phones.',
              numLines: 15,
              readMoreText: 'Read more',
              readLessText: 'Read less',
              style: const TextStyle(
                fontSize: 12,
                height: 1.5,
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
