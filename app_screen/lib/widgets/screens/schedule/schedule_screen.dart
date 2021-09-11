import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/schedule/children/schedule_button.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('スケジュール')),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Text(
                'こんにちは',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 20.0,
                ),
              ),
              Spacer(),
              ImageIcon(
                Assets.images.clockIcon,
                size: 250,
                color: AppColor.gray90,
              ),
              Spacer(),
              Text(
                'スケジュールを作成しましょう',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 20.0,
                ),
              ),
              Spacer(),
              ScheduleButton(
                title: 'スケジュールを作成',
                onPressed: (){
                  // TODO: 画面遷移を書き込む
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}