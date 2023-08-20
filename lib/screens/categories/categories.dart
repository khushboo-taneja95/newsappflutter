import 'package:flutter/material.dart';
import 'package:newsapplication/widgets/responsive_utils.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    int columnsCount = 2;

    // Define the icon size based on the screen width
    double iconSize =  45;


    // Use the ResponsiveUtils class to determine the device's screen size.
    if (ResponsiveUtils.isMobile(context)) {
      columnsCount = 2;
      iconSize = 30;
    } else if (ResponsiveUtils.isDesktop(context)) {
      columnsCount = 4;
      iconSize = 50;
    }
    
  
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 10,
          controller: scrollController,
          itemBuilder: (context, index) {
            return categoriesCardList();
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:4,
          // Set the aspect ratio of each card.
          childAspectRatio: 1.6 / 2,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
          ),
        ),
      ),
    );
  }

  Widget categoriesCardList() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child:Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/space.jpeg",
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const Center(child: Text("Technology",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),)),
          ]
      )
      //
      // Column(
      //   children: [
      //     ClipRRect(
      //       borderRadius: BorderRadius.circular(8.0),
      //       child: Image.asset(
      //         "assets/space.jpeg",
      //         height: 100,
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     // const Padding(
      //     //   padding: EdgeInsets.only(top: 10),
      //     //   child: Column(
      //     //     children: [
      //     //       Text(
      //     //         "TECHNOLOGY",
      //     //         maxLines: 3,
      //     //         style: TextStyle(
      //     //             fontWeight: FontWeight.bold,
      //     //             color: Colors.blue,
      //     //             fontSize: 14),
      //     //       ),
      //     //       Text(
      //     //         '3.1k Articles',
      //     //         style: TextStyle(color: Colors.black, fontSize: 12),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //   ],
      // ),
    );
  }
}
