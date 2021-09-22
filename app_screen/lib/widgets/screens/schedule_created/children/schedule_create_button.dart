import 'package:flutter/material.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class ScheduleCreateButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const ScheduleCreateButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: AppColor.orange,
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColor.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}

