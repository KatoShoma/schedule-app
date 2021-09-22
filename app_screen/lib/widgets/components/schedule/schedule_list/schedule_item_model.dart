import 'package:flutter/material.dart';

class ScheduleItemModel {
  String scheduleName;
  String times;

  ScheduleItemModel({
    required this.scheduleName,
    required this.times,
  });

  static ScheduleItemModel createScheduleCell ({required String scheduleName, required String times}) {
    return ScheduleItemModel(
      scheduleName: scheduleName,
      times: times,
    );
  }

}