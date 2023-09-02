import 'package:flutter/material.dart';

import 'package:newsapplication/core/themes/colors.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
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

                    },child:Icon(Icons.menu,color: PanthalassaColors.appColor,size:40)),
                  ],
                )),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
              return Padding(
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
                                    child: const Center(
                                      child: Text(
                                        'CNN',
                                        style: TextStyle(
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
                            const SizedBox(height:4),
                            Text(
                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                              maxLines: 5,
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              style:  TextStyle(
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
              );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}
