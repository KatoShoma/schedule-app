import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_application/widgets/screens/schedule_setting/schedule_setting_screen.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:http/http.dart' as http;

part 'schedule_created_screen_state.freezed.dart';

@freezed
class ScheduleCreatedScreenState with _$ScheduleCreatedScreenState {
  const factory ScheduleCreatedScreenState() = _ScheduleCreatedScreenState;
}

class ScheduleCreatedScreenController extends StateNotifier<ScheduleCreatedScreenState> with LocatorMixin {
  final BuildContext context;
  ScheduleCreatedScreenController({
    required this.context,
  }) : super(const ScheduleCreatedScreenState());

  void onTapCreateSchedule() {
    Navigator.of(context).push(CupertinoPageRoute(
      builder: (_) => ScheduleSettingScreen(),
    ));
  }
}