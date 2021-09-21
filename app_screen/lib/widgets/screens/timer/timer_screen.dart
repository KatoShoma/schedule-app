import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/schedule/children/schedule_button.dart';
import 'package:schedule_application/widgets/screens/schedule/schedule_screen_state.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('タイマー')),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  ImageIcon(
                    Assets.images.eventMemo,
                    size: 300,
                    color: AppColor.gray90,
                  ),
                  Column(
                    children: [
                      Text(
                        '現在の目標',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: AppColor.black,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'やりたいことをやる．',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: AppColor.black,
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Text(
                '残り時間',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 20.0,
                ),
              ),
              Text(
                '00:00:00',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: AppColor.black,
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              Spacer(),
              Spacer(),
              ScheduleButton(
                title: 'スケジュールの再編集',
                onPressed: () => context.read<ScheduleScreenController>().onTapCreateSchedule(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}