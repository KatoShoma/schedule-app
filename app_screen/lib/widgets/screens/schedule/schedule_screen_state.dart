import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/widgets/screens/schedule_setting/schedule_setting_screen.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_screen_state.freezed.dart';

@freezed
class ScheduleScreenState with _$ScheduleScreenState {
  const factory ScheduleScreenState() = _ScheduleScreenState;
}

class ScheduleScreenController extends StateNotifier<ScheduleScreenState> with LocatorMixin {
  final BuildContext context;

  ScheduleScreenController({
    required this.context,
  }) : super(const ScheduleScreenState());

  @override
  void initState() {
    super.initState();
  }

  void onTapCreateSchedule() {
    Navigator.of(context).push(CupertinoPageRoute(
      builder: (_) => ScheduleSettingScreen(),
    ));
  }
}