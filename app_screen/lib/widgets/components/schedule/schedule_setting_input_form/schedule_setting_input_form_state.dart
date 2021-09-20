import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'schedule_setting_input_form_state.freezed.dart';

@freezed
class ScheduleSettingInputFormState with _$ScheduleSettingInputFormState {
  const factory ScheduleSettingInputFormState() = _ScheduleSettingInputFormState;
}

class ScheduleSettingInputFormController extends StateNotifier<ScheduleSettingInputFormState> with LocatorMixin {
  final BuildContext context;
  ScheduleSettingInputFormController({
    required this.context,
  }) : super(const ScheduleSettingInputFormState());

  @override
  void initState() {

  }

  void onTapTime() {
    print('Hello');
  }
}