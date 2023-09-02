import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/panthalassa/businesslogic/biography_bloc.dart';
import 'package:newsapplication/panthalassa/data/models/biographymodel.dart';

class ListTileBuilder extends StatelessWidget {
  const ListTileBuilder(
    this.data, {
    Key? key,
  }) : super(key: key);
  final biographymodel data;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BiographypageBloc, BiographypageState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: data.categories!.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(
              data.categories![index].name.toString(),
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 40.00,
                  fontWeight: FontWeight.bold),
            );
          },
        );
      },
    );
  }
}
