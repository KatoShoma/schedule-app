import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'schedule_setting_screen_state.freezed.dart';

@freezed
class ScheduleSettingScreenState with _$ScheduleSettingScreenState {
  const factory ScheduleSettingScreenState() = _ScheduleSettingScreenState;
}

class ScheduleSettingScreenController extends StateNotifier<ScheduleSettingScreenState> with LocatorMixin {
  final BuildContext context;
  ScheduleSettingScreenController({
    required this.context,
  }) : super(const ScheduleSettingScreenState());

  @override
  void initState() {

  }
}