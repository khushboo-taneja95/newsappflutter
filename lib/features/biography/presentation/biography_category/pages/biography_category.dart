import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/features/biography/data/models/biography_category_model.dart';
import 'package:newsapplication/features/biography/presentation/biography_category/bloc/biography_category_bloc.dart';

class BiographyCategoryPage extends StatelessWidget {
  const BiographyCategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BiographyCategoryBloc(),
      child: BiographyCategoryBody(),
    );
  }
}

class BiographyCategoryBody extends StatefulWidget {
  const BiographyCategoryBody({
    super.key,
  });

  @override
  State<BiographyCategoryBody> createState() => _BiographyCategoryBodyState();
}

class _BiographyCategoryBodyState extends State<BiographyCategoryBody> {
  int participatntCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: BlocConsumer<BiographyCategoryBloc, BiographyCategoryState>(
          listener: (context, state) {
            if (state is BiographyCategoryError) {
              Text("sldkfjksdjfksd");
            }
          },
          builder: (context, state) {
            if (state is BiographyCategoryLoading) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.pink,
              ));
            } else if (state is BiographyCategoryLoaded) {
              return _getlikedList(context, state.biographycategory);
            }
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.cyan,
            ));
          },
        ));

    // body: BlocBuilder<BiographyCategoryBloc, BiographyCategoryState>(
    //   builder: (context, state) {
    //     if (state is BiographyCategoryLoaded) {
    //       return _getlikedList(context, state.biographycategory);
    //     } else if (state is BiographyCategoryLoading) {
    //       return const Center(child: CircularProgressIndicator());
    //     } else {
    //       return SizedBox(
    //         width: 500,
    //         height: 200,
    //         child: Container(
    //           color: Colors.transparent,
    //           child: const Center(
    //             child: Text(
    //               'Data not available',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     }
    //   },
    // ));
  }

  Widget _getlikedList(
      BuildContext context, List<BiographyCategory> biographycategory) {
    return Container(
      color: Colors.grey[200],
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemCount: biographycategory.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(biographycategory[index].id.toString()),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(biographycategory[index].name.toString()),
                  // Builder(builder: (context) {
                  //   String name = biographycategory[index].name ?? "";
                  //   return Text(name);
                  // }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
