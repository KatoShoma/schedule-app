import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class SettingItemAppVersion extends StatelessWidget {
  final String version;

  const SettingItemAppVersion({
    Key? key,
    required this.version,
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
              'アプリバージョン',
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: AppColor.black,
                fontSize: 20.0,
              ),
            ),
            Spacer(),
            Text(
              version,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: AppColor.black,
                fontSize: 20.0,
              ),
            ),
            SizedBox(width: 25.0),
          ],
        ),
      ),
    );
  }
}