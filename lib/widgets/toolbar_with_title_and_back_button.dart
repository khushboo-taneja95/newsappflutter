import 'package:flutter/material.dart';
import 'package:newsapplication/core/themes/colors.dart';

class ToolbarWithTitleAndBackbutton extends StatelessWidget {
  final Function? backFn;
  const ToolbarWithTitleAndBackbutton({
    Key? key,
    this.backFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.grey.withOpacity(0.3)),
              ),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          );
        },
      ),
      actions: <Widget>[
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 90,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: PanthalassaColors.colorGrey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        //color: Colors.white,
                        width: 32,
                        height: 32,
                         decoration: BoxDecoration(
                           color: Colors.white,
                          shape: BoxShape.circle,
                         border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: Icon(
                          Icons.download,
                          color: Colors.black87.withOpacity(0.8),
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: Icon(
                          Icons.browse_gallery,
                          color: Colors.black87.withOpacity(0.8),
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //   InkWell(
            //     onTap: () {},
            //     child: Container(
            //       width: 32,
            //       height: 32,
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         border: Border.all(width: 1, color: Colors.grey),
            //       ),
            //       child: Icon(
            //         Icons.download,
            //         color: Colors.black87,
            //         size: 20,
            //       ),
            //     ),
            //   ),
            //   SizedBox(
            //     width: 10,
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            //     child: InkWell(
            //       onTap: () {},
            //       child: Container(
            //         width: 32,
            //         height: 32,
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           border: Border.all(width: 1, color: Colors.grey),
            //         ),
            //         child: Icon(
            //           Icons.browse_gallery,
            //           color: Colors.black87,
            //           size: 20,
            //         ),
            //       ),
            //     ),
            //   ),
          ],
        )
      ],
      backgroundColor: PanthalassaColors.colorWhite,
    );
  }
}
