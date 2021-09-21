import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_item_model.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_list_data.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_setting_input_form/children/schedule_times_button.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_setting_input_form/schedule_setting_input_form_state.dart';
import 'package:schedule_application/widgets/screens/schedule_setting/schedule_setting_screen_state.dart';

class ScheduleSettingInputForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController;
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
              Container(
                color: AppColor.gray60,
                height: 60,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: CupertinoTextField(
                  maxLength: 20,
                  placeholder: "予定を入力してください",
                  onChanged: (String text) => context.read<ScheduleSettingInputFormController>().enteredTask(text),
                ),
              ),
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
                      times: context.select<ScheduleSettingInputFormState, String>((state) => state.workingTime),
                      onTap: () => context.read<ScheduleSettingInputFormController>().onTapTime(),
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: ElevatedButton(
                        onPressed: () => context.read<ScheduleSettingInputFormController>().onPressedAdd(),
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