import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/models/app_refresher/app_refresher.dart';
import 'package:schedule_application/models/preference/preference.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/utils/constant/working_times.dart';
import 'package:schedule_application/widgets/screens/schedule/children/schedule_button.dart';
import 'package:schedule_application/widgets/screens/schedule/schedule_screen_state.dart';
import 'package:schedule_application/widgets/screens/schedule_created/schedule_created_screen.dart';
import 'package:schedule_application/widgets/screens/setting/setting_screen.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(scheduleMap.length == 0) {
      return StateNotifierProvider<ScheduleScreenController,
          ScheduleScreenState>(
        create: (_) =>
            ScheduleScreenController(
              context: context,
            ),
        builder: (context, _) {
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
                      Assets.images.clock,
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
                      onPressed: () =>
                          context.read<ScheduleScreenController>()
                              .onTapCreateSchedule(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }else{
      return ScheduleCreatedScreen();
    }
  }
}