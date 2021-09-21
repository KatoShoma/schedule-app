import 'package:flutter/material.dart';

class ScheduleItemModel {
  String scheduleName;
  String times;
  Key key;

  ScheduleItemModel({
    required this.scheduleName,
    required this.times,
    required this.key,
  });

  static ScheduleItemModel createScheduleCell ({required String scheduleName, required String times}) {
    return ScheduleItemModel(
      scheduleName: scheduleName,
      times: times,
      key: UniqueKey(),
    );
  }

}