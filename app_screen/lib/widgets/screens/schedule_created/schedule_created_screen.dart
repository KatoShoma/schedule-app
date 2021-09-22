import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/models/app_refresher/app_refresher.dart';
import 'package:schedule_application/models/preference/preference.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/utils/constant/working_times.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_created/schedule_created_list_screen.dart';
import 'package:schedule_application/widgets/screens/schedule/children/schedule_button.dart';
import 'package:schedule_application/widgets/screens/schedule/schedule_screen_state.dart';
import 'package:schedule_application/widgets/screens/setting/setting_screen.dart';
import 'package:schedule_application/widgets/screens/schedule_created/schedule_created_screen_state.dart';

import 'children/schedule_create_button.dart';

class ScheduleCreatedScreen extends StatelessWidget {
  const ScheduleCreatedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ScheduleCreatedScreenController, ScheduleCreatedScreenState>(
      create: (_) =>
          ScheduleCreatedScreenController(
            context: context,
          ),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(child: Text('スケジュール')),
              ],
            ),
          ),
          body: Stack(
            children: [
              ScheduleCreatedListScreen(),
              ScheduleCreateButton(
                title: 'スケジュールを再設定',
                onPressed: () => context.read<ScheduleCreatedScreenController>().onTapCreateSchedule(),
              ),
            ],
          ),
        );
      },
    );
  }
}