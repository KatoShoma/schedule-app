import 'package:flutter/material.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class ShareText extends StatelessWidget {
  final String user;
  final String comp;

  const ShareText({
    Key? key,
    required this.user,
    required this.comp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(
          '現在:　' + this.user + ' 人が',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColor.black,
            fontSize: 30.0,
          ),
        ),

        Text(
          '　夏休み最終日を満喫中\n',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColor.black,
            fontSize: 25.0,
          ),
        ),

        Text(
          '夏休みを満喫済み ',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColor.red,
            fontSize: 25.0,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),
            Text(
              this.comp,
              textAlign: TextAlign.center,
              style: const TextStyle(
                // fontWeight: FontWeight.bold,
                color: AppColor.red,
                fontSize: 45.0,
              ),
            ),
            Text(
              '　人',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColor.red,
                fontSize: 25.0,
              ),
            ),
          Spacer(),
          ],

        ),
        // Text(
        //   this.comp + '　人',
        //   textAlign: TextAlign.center,
        //   style: const TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: AppColor.red,
        //     fontSize: 45.0,
        //   ),
        // ),
      ],
    );
  }
}