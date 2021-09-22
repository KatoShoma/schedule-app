import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/models/preference/preference.dart';
import 'package:schedule_application/widgets/screens/root/root_screen.dart';
import 'package:schedule_application/widgets/screens/schedule/schedule_screen.dart';

class CreatedScheduleDialog extends StatelessWidget {
  const CreatedScheduleDialog({
    required this.preference,
    Key? key,
  }) : super(key: key);

  final Preference preference;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("スケジュールを作成しました"),
      content: Text("夏休みを満喫しましょう！"),
      actions: [
        CupertinoDialogAction(
          child: Text('OK'),
          isDestructiveAction: true,
          onPressed: () {
            preference.setBool(PreferenceKey.isCompleteSchedule, true);
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RootScreen(),),
            );
          },
        ),
      ],
    );
  }
}
