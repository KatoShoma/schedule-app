import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_application/models/preference/preference.dart';
import 'package:schedule_application/utils/constant/working_times.dart';
import 'package:schedule_application/widgets/components/schedule/created_schedule/created_schedule_dialog.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_list_data.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:http/http.dart' as http;

part 'schedule_setting_screen_state.freezed.dart';

@freezed
class ScheduleSettingScreenState with _$ScheduleSettingScreenState {
  const factory ScheduleSettingScreenState() = _ScheduleSettingScreenState;
}

class ScheduleSettingScreenController extends StateNotifier<ScheduleSettingScreenState> with LocatorMixin {
  final BuildContext context;
  final Preference preference;
  ScheduleSettingScreenController({
    required this.context,
    required this.preference,
  }) : super(const ScheduleSettingScreenState());

  Future<void> createScheduleJson() async {
    // var url = "http://52.149.9.204:80/scheduler";
    double amountOfTime = 17;// TODO:現在の時刻から計算
    Map<String, dynamic> schedule = {};
    for(var i=0; i<scheduleListData.length; i++) {
      workingTimesList.forEach((timeString, timeNumber) {
        if(timeString == scheduleListData[i].times){
          schedule[scheduleListData[i].scheduleName] = timeNumber;
        }
      });
    }

    var url = "http://52.137.78.189/scheduler";
    Map<String, dynamic> request = {
      "times": amountOfTime,
      "tasks": schedule,
    };

    final response = await http.post(Uri.parse(url),
        body: json.encode(request),
        headers: {"Content-Type": "application/json"});
    print('-----');
    print(response.body);
    print('-----');

    Map<String, dynamic> scheduleRowData = jsonDecode(response.body);
    Map<String, dynamic> scheduleAndTimeRate= scheduleRowData['user_planning_time'];

    //バックエンドでやってくれ
    Map<String, String> scheduleData = {};
    scheduleTask = [];
    scheduleTime = [];
    scheduleAndTimeRate.forEach((task, timeRate) {
      double timeNumRate = double.parse(timeRate.toString()).floor()/100;
      String timeString = getTaskTimeString(timeNumRate, amountOfTime);
      scheduleData[task] = timeString;
      scheduleTask.add(task);
      scheduleTime.add(timeString);
    });
    scheduleMap = scheduleData; // TODO:本来preference経由がbetter
    scheduleListData = [];
    createdSchedule();
  }

  String getTaskTimeString(double timeRate, double amountOfTime) {
    double totalTimes = amountOfTime * timeRate;
    double hour = (amountOfTime * timeRate).floorToDouble();
    double minute = (60.0 * (totalTimes - hour)).floorToDouble();
    int hourInt = hour.toInt();
    int minuteInt = minute.toInt();
    if(hourInt > 0) {
      return hourInt.toString() + '時間' + minuteInt.toString() + '分';
    }else {
      return minuteInt.toString() + '分';
    }
  }

  void createdSchedule() {
    showDialog(
      context: context,
      builder: (_) => CreatedScheduleDialog(preference: preference,),
    );
  }
}