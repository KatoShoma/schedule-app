import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class ScheduleField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: AppColor.gray60,
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: CupertinoSearchTextField(
        placeholder: "予定を入力してください",
        backgroundColor: AppColor.white,
      ),
    );
  }

}