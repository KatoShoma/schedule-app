import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_item_model.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_list_data.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_setting_input_form/schedule_setting_input_form.dart';
import 'package:schedule_application/widgets/screens/schedule_setting/children/schedule_create_button.dart';
import 'package:schedule_application/widgets/screens/schedule_setting/schedule_setting_screen_state.dart';

import 'children/schedule_list.dart';

class ScheduleSettingScreen extends StatelessWidget {

  const ScheduleSettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ScheduleSettingScreenController, ScheduleSettingScreenState>(
      create: (_) => ScheduleSettingScreenController(
        context: context,
      ),
      builder: (context, _){
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
                },
                child: Text(
                  '編集',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
          body: Stack(
            children: [
              ScheduleList(),
              ScheduleSettingInputForm(),
              ScheduleCreateButton(
                title: 'スケジュールを作成',
                onPressed: (){},
              ),
            ],
          ),
        );
      },
    );
  }
}