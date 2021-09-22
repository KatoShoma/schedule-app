import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_item_model.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_list_data.dart';
import 'package:state_notifier/state_notifier.dart';

part 'schedule_created_list_screen_state.freezed.dart';

@freezed
class ScheduleCreatedListScreenState with _$ScheduleCreatedListScreenState {
  const factory ScheduleCreatedListScreenState({
    @Default ([]) List<ScheduleItemModel> schedules,
  }) = _ScheduleCreatedListScreenState;
}

class ScheduleCreatedListScreenController extends StateNotifier<ScheduleCreatedListScreenState> with LocatorMixin {
  final BuildContext context;
  ScheduleCreatedListScreenController({
    required this.context,
  }) : super(const ScheduleCreatedListScreenState());

  @override
  void initState() {
    state = state.copyWith(schedules: scheduleListData);
  }
}