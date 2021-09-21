import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class SettingOnoffSwitch extends StatelessWidget {
  final String title;
  final bool isOn;
  final Function(bool) onChangeIsOn;

  const SettingOnoffSwitch({
    Key? key,
    required this.isOn,
    required this.onChangeIsOn,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom : BorderSide(
              width: 1.0,
              color: AppColor.gray30,
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
            CupertinoSwitch(
              trackColor: AppColor.gray30,
              value: isOn,
              onChanged:onChangeIsOn,
            ),
            SizedBox(width: 25.0),
          ],
        ),
      ),
    );
  }
}