import 'package:flutter/material.dart';
import 'package:newsapplication/core/themes/colors.dart';

class SettingItem extends StatelessWidget {
  final String? leadingIcon;
  final String title;
  final GestureTapCallback? onTap;
  const SettingItem(
      {Key? key, required this.title, this.onTap, this.leadingIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 0.75))
              ],
              color: PanthalassaColors.appColor,
              borderRadius: BorderRadius.circular(59 / 2),
            ),
            child: Center(
              child: Image.asset(
                leadingIcon!,
                width: 14,
                height: 14,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ]),
      ),
    );
  }
}
