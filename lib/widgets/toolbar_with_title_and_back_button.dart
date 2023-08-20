import 'package:flutter/material.dart';
import 'package:newsapplication/constant/colors.dart';
import 'package:newsapplication/constant/dimens.dart';

class ToolbarWithTitleAndBackbutton extends StatelessWidget {
  final String title;
  final Function? backFn;
  const ToolbarWithTitleAndBackbutton({
    Key? key,
    required this.title,
    this.backFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: PanthalassaColors.colorWhite,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkResponse(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
               Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: PanthalassaColors.textColorGrey,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );
  }
}
