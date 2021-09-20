import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final Function() onTap;

  const SettingItem({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom  : BorderSide(
              width: 1.0,
              color: AppColor.gray30,
            ),
          ),
        ),
        padding: EdgeInsets.only(
          top: 16,
          left: 50,
          bottom: 13,
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