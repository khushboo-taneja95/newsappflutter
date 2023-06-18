import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 20,
          controller: scrollController,
          itemBuilder: (context, index) {
            return astrologyCardList();
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.2),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
        ),
      ),
    );
  }

  Widget astrologyCardList() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/004/216/831/original/3d-world-news-background-loop-free-video.jpg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Image.network(
            //     'https://static.vecteezy.com/system/resources/thumbnails/004/216/831/original/3d-world-news-background-loop-free-video.jpg',
            //     height: 250,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text(
                    "TECHNOLOGY",
                    maxLines: 3,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  Text(
                    '3.1k Articles',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
