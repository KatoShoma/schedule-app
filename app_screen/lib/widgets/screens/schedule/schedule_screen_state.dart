import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_screen_state.freezed.dart';

@freezed
class ScheduleScreenState with _$ScheduleScreenState {
  const factory ScheduleScreenState() = _ScheduleScreenState;
}