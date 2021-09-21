import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_item_model.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_list_data.dart';
import 'package:state_notifier/state_notifier.dart';

part 'schedule_list_screen_state.freezed.dart';

@freezed
class ScheduleListScreenState with _$ScheduleListScreenState {
  const factory ScheduleListScreenState({
    @Default ([]) List<ScheduleItemModel> schedules,
    @Default ('Test') String testString,
  }) = _ScheduleListScreenState;
}

class ScheduleListScreenController extends StateNotifier<ScheduleListScreenState> with LocatorMixin {
  final BuildContext context;
  ScheduleListScreenController({
    required this.context,
  }) : super(const ScheduleListScreenState());

  @override
  void initState() {
    state = state.copyWith(schedules: scheduleListData);
  }
}