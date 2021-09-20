import 'package:flutter/material.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class ScheduleTimesButton extends StatelessWidget {
  final String times;
  final Function() onTap;

  const ScheduleTimesButton({
    Key? key,
    required this.times,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 40,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.gray30),
        borderRadius: BorderRadius.circular(10),
        color: AppColor.white,
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          times,
          style: const TextStyle(
            fontSize: 16,
            color: AppColor.black,
          ),
        ),
      ),
    );
  }
}