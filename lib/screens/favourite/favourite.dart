import 'package:flutter/material.dart';
import 'package:newsapplication/constant/colors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return favouriteCardList();
        },
      )),
    );
  }

  Widget favouriteCardList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Column(
        children: [
          Row(
            children: [
                Flexible(
                child:Text(
                  "Sky Perfect JSAT order first Airbus satelite Sky Perfect JSAT order first Airbus satelite",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "assets/space.jpeg",
                    width: 100,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
