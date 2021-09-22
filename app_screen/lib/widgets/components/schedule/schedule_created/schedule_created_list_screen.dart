import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/utils/constant/working_times.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_item_model.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_list_data.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_created/schedule_created_list_screen_state.dart';


class ScheduleCreatedListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ScheduleCreatedListScreenController, ScheduleCreatedListScreenState>(
      create: (_) => ScheduleCreatedListScreenController(
        context: context,
      ),
      builder: (context, _) {
        List<ScheduleItemModel> schedule = context.select<ScheduleCreatedListScreenState, List<ScheduleItemModel>>((state) => state.schedules);
        return ConstrainedBox(
          constraints: BoxConstraints.expand(height: 560.0),
          child: ListView.builder(
            itemCount: scheduleMap.length,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Container(
                child: Row(
                  children: [
                    Text(
                      scheduleTask[index],
                      style: const TextStyle(
                        color: AppColor.gray90,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 30.0,),
                    Text(
                      scheduleTime[index],
                      style: const TextStyle(
                        color: AppColor.gray90,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  border: Border(
                    bottom: BorderSide(
                      width: 1.0,
                      color: AppColor.gray60,
                    ),
                  ),
                ),
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                  left: 50.0,
                ),
              );
            },
          ),
        );
      },
    );
  }
}