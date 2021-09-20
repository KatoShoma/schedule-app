import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class SettingItem extends StatelessWidget {
  final String title;

  const SettingItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom  : BorderSide(
              width: 1.0,
              color: Colors.black12,
            ),
          ),
        ),
        padding: EdgeInsets.only(
          top: 13,
          left: 50,
          bottom: 8,
        ),
        child: Row(
          children: [
            Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: AppColor.black,
                fontSize: 20.0,
              ),
            ),
            Spacer(),
            ImageIcon(
              Assets.images.next,
              size: 20,
              color: AppColor.gray30,
            ),
            SizedBox(width: 25.0),
          ],
        ),
      ),
    );
  }
}