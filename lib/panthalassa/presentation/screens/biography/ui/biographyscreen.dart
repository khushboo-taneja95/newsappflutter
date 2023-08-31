import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/panthalassa/businesslogic/biography_bloc.dart';
import 'package:newsapplication/panthalassa/data/models/biographymodel.dart';
import '../../../Components/error_screen.dart';
import '../../../Components/spacer.dart';
import '../../../Declarations/Global/constants.dart';
import '../Widgets/listtile.dart';
import '../Widgets/textformfields.dart';
import '../Widgets/search_btn.dart';

class BiographyPage extends StatefulWidget {
  const BiographyPage({Key? key}) : super(key: key);

  @override
  State<BiographyPage> createState() => _BiographyPageState();
}

class _BiographyPageState extends State<BiographyPage> {
  late FocusNode nameFocus;
  late FocusNode jobFocus;
  late FocusNode searchBtnFocus;
  late TextEditingController nameController;
  late TextEditingController jobController;

  @override
  void initState() {
    super.initState();
    nameFocus = FocusNode();
    jobFocus = FocusNode();
    searchBtnFocus = FocusNode();
    nameController = TextEditingController();
    jobController = TextEditingController();
  }

  @override
  void dispose() {
    nameFocus.dispose();
    jobFocus.dispose();
    searchBtnFocus.dispose();
    nameController.dispose();
    jobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("POST request"),
      ),
      body: BlocBuilder<BiographypageBloc, BiographypageState>(
        builder: (context, state) {
          if (state is BiographypageLoaded) {
            return buildLoadedlayout(state.data);
          } else if (state is BiographypageLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is BiographypageError) {
            return const ErrorScreenBuilder();
          } else {
            return buildInitialLayout();
          }
        },
      ),
    );
  }

  Widget buildInitialLayout() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputField(
              focusNode: nameFocus,
              textController: nameController,
              label: "Username",
              icons: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
            HeightSpacer(myHeight: kSpacing),
            InputField(
              focusNode: jobFocus,
              textController: jobController,
              label: "Password",
              icons: const Icon(Icons.work, color: Colors.blue),
            ),
            HeightSpacer(myHeight: kSpacing),
            SearchButtonBuilder(
              focusNode: searchBtnFocus,
              name: nameController,
              job: jobController,
            ),
          ],
        ),
      );

  Widget buildLoadedlayout(biographymodel data) => Center(
          child: Padding(
        padding: kHPadding * 2,
        child: ListTileBuilder(data),
      ));
}
