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
      padding: const EdgeInsets.only(left :8.0, right: 8.0, top: 8.0, bottom: 4.0),
      child: Card(
          child: Column(
        children: [
          Row(
            children: [
                Flexible(
                child:Text(
                  "Sky Perfect JSAT order first Airbus satelite Sky Perfect JSAT order first Airbus satelite",
                  maxLines: 4,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "assets/space.jpeg",
                    width: 50,
                    height: 60,
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
