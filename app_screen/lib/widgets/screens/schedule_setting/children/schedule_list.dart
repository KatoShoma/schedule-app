import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/components/schedule/schedule_list/schedule_list_data.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 560.0),
      child: ListView.builder(
        itemCount: scheduleListData.length,//TODO:動的に変更
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return Container(
            child: Row(
              children: [
                Text(
                  scheduleListData[index].scheduleName,//TODO:動的に変換
                  style: const TextStyle(
                    color: AppColor.gray90,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(width: 30.0,),
                Text(
                  scheduleListData[index].times.toString(),//TODO: 動的に変換
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
  }
}