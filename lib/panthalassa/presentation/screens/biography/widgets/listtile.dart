import 'package:flutter/material.dart';
import 'package:newsapplication/panthalassa/data/models/biographymodel.dart';
class ListTileBuilder extends StatelessWidget {
  const ListTileBuilder(
    this.data, {
    Key? key,
  }) : super(key: key);

  final biographymodel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data.categories![0].name.toString(),
          style: const TextStyle(
              color: Colors.blue, fontSize: 40.00, fontWeight: FontWeight.bold),
        ),
      ],

    );
  }
}
