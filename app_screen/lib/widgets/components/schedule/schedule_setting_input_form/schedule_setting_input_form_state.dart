import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_application/utils/constant/working_times.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_item_model.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_list_data.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list_screen/schedule_list_screen_state.dart';
import 'package:state_notifier/state_notifier.dart';

part 'schedule_setting_input_form_state.freezed.dart';

@freezed
class ScheduleSettingInputFormState with _$ScheduleSettingInputFormState {
  const factory ScheduleSettingInputFormState({
    @Default ('') String taskName,
    @Default ('30分') String workingTime,
  }) = _ScheduleSettingInputFormState;
}

class ScheduleSettingInputFormController extends StateNotifier<ScheduleSettingInputFormState> with LocatorMixin {
  final BuildContext context;
  ScheduleSettingInputFormController({
    required this.context,
  }) : super(const ScheduleSettingInputFormState());

  @override
  void initState() {

  }

  void enteredTask(String taskText) {
    state = state.copyWith(taskName: taskText);
  }

  void onTapTime() {
    Widget pickerItem(String workingTime) {
      return Text(workingTime);
    }
    showModalBottomSheet<void>(
      context: context,
      builder: (_) {
        return Container(
          height: MediaQuery.of(context).size.height / 4.0,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 30,
              children: workingTimesTextList.map(pickerItem).toList(),
              onSelectedItemChanged: (int index) {
                state = state.copyWith(workingTime: workingTimesTextList[index]);
              },
              scrollController: FixedExtentScrollController(
                initialItem: 0,
              ),
            ),
          ),
        );
      },
    );
  }

  void onPressedAdd() {
    FocusScope.of(context).unfocus();
    if(state.taskName == "") return;
    scheduleListData.add(ScheduleItemModel.createScheduleCell(
      scheduleName: state.taskName,
      times: state.workingTime,
    ));
    state = state.copyWith(workingTime: '30分');
  }
}