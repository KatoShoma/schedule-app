import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class ScheduleSettingScreen extends StatelessWidget {
  const ScheduleSettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Text('スケジュール設定')),
          ],
        ),
        actions: [
          TextButton(
            onPressed: (){
              // TODO: 作成を押された時の処理
            },
            child: Text(
              '作成',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
      body: Container(

      ),
    );
  }
}