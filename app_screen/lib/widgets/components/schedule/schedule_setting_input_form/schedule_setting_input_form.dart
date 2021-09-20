import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_setting_input_form/children/schedule_field.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_setting_input_form/children/schedule_times_button.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_setting_input_form/schedule_setting_input_form_state.dart';

class ScheduleSettingInputForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ScheduleSettingInputFormController, ScheduleSettingInputFormState>(
      create: (_) => ScheduleSettingInputFormController(
        context: context,
      ),
      builder: (context, _) {
        return Container(
          padding: EdgeInsets.only(
            bottom: 60,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ScheduleField(),
              Container(
                color: AppColor.gray60,
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 20,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "必要時間",
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    ScheduleTimesButton(
                      times: '0.5h',
                      onTap: () => context.read<ScheduleSettingInputFormController>().onTapTime(),
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: ElevatedButton(
                        onPressed: () {
                          //TODO: 追加ボタンPUSH時の動作
                        },
                        child: Text(
                          '追加',
                          style: const TextStyle(
                            fontSize: 18,
                            color: AppColor.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: AppColor.accent,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}