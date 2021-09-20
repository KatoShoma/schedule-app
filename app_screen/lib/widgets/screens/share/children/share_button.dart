import 'package:flutter/material.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:schedule_application/widgets/screens/share/share_screen_state.dart';
import 'package:provider/provider.dart';

class ShareButton extends StatelessWidget {
  final Function() onPressed;
  final bool isPressedEnjoyedButton;

  const ShareButton({
    Key? key,
    required this.onPressed,
    required this.isPressedEnjoyedButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 60,
      child: ElevatedButton(
        onPressed: !isPressedEnjoyedButton ? onPressed : null,
        style: !isPressedEnjoyedButton
            ? ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange))
            : ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(AppColor.cyan)),

        child: !isPressedEnjoyedButton
            ? Text('夏休みを満喫しました',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColor.white,
            fontSize: 20.0,
          ),
        ) : Text('満喫おめでとうございます',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColor.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}

