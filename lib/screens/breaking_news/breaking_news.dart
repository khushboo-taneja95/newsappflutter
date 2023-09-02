import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:newsapplication/core/themes/colors.dart';
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
          children: [toolbar(),listData()],
        ),
      ),
    );
  }

  Widget listData() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            imageBlogs(),
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
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/details.jpg'), fit: BoxFit.fill)),
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 88,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color(0xFF004aad),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.contact_emergency,
                              color: PanthalassaColors.colorWhite,
                              size: 14,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'INDIA',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "178 Followers",
                style: TextStyle(
                  color: PanthalassaColors.textColorGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 4.0),
                child: Text(
                  "21 August 2023",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        const Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Drug pandemic in J&K: Networks of terror intersect with drug supply lines, on ground, from sky and online",
            style: TextStyle(
              color: PanthalassaColors.colorBlack,
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        orDivider(),
        const SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/ic_google.png")),
              const SizedBox(width: 5.0),
              Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/icon_whatsapp.png")),
              const SizedBox(width: 5.0),
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: const Icon(
                  Icons.snapchat,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              const SizedBox(width: 5.0),
              const Icon(
                Icons.facebook,
                color: PanthalassaColors.appColor,
                size: 32,
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 4.0),
                child: Text(
                  "by Uttam Raj",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
          child: Text(
            'From the sky, drones from Pakistan that drop drugs across the border; on the ground, a distribution model akin to a multi-level marketing scheme where an addict ropes in more addicts; consignments ferried from neighbouring states; prescription drugs sold against cancelled licences; and opioids procured from the darknet.',
            style: TextStyle(
              fontSize: 12,
              height: 1.5,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
          child: Text(
            'These are the myriad supply lines that feed and fuel the drug pandemic in Jammu and Kashmir which has stretched the public health system to its limits and poses a set of unprecedented challenges to security agencies, an investigation by The Indian Express has found. Analysing police records of seizure and arrests, both at an all-time high, and interviews with top officials also reveals that, in many cases, the drug trade and terror networks also run parallel — and often intersect.',
            style: TextStyle(
              fontSize: 12,
              height: 1.5,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }

  Widget orDivider() {
    return Row(
      children: [
        Flexible(
          child: Container(
            height: 2,
            color: const Color(0xFF004aad),
          ),
        ),
        Flexible(
          child: Container(
            height: 2,
            color: const Color(0xFF004aad),
          ),
        ),
      ],
    );
  }
  Widget toolbar() {
    return Container(
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(
            color: PanthalassaColors.appColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/splash_logo.jpg",
              height: 60,
              width: 60,
              fit: BoxFit.fill,
            ),
            const Icon(Icons.download,color: PanthalassaColors.appColor,size:40),
            const Text('Select City',style: TextStyle(color:PanthalassaColors.appColor,fontSize: 17,fontWeight: FontWeight.bold),),
            Material(
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2,color: PanthalassaColors.appColor,style: BorderStyle.solid),
                  color:PanthalassaColors.colorWhite,
                ),
                child: InkWell(
                  //borderRadius: BorderRadius.circular(100.0),
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.search,
                      size: 20.0,
                      color: PanthalassaColors.appColor,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(  onTap: () {
              Scaffold.of(context).openDrawer();
            },child:Icon(Icons.menu,color: PanthalassaColors.appColor,size:40)),
          ],
        ));
  }

}
