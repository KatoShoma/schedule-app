import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/share/children/share_button.dart';
import 'package:schedule_application/widgets/screens/share/share_screen_state.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ShareScreenController, ShareScreenState>(
      create: (_) => ShareScreenController(
        context: context,
      ),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            title: Center(child: Text('共有')),
          ),
          body: Container(
            child: Center(
              child: Column(
                children: [
                  Spacer(),
                  ImageIcon(
                    Assets.images.synergy,
                    size: 200,
                    color: AppColor.gray90,
                  ),
                  Spacer(),
                  Text(
                    '現在: 10,000 人が\n夏休みを満喫中',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 25.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '夏休みを満喫済み 100 人',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColor.red,
                      fontSize: 25.0,
                    ),
                  ),
                  Spacer(),
                  ShareButton(
                    isPressedEnjoyedButton: context.select<ShareScreenState, bool>((state) => state.isPressedEnjoyedButton),
                    onPressed: () => context.read<ShareScreenController>().pressEnjoyedButton(),
                    // onPressed: () => context.read<ShareScreenController>().getIsPressedEnjoyedButton() ? context.read<ShareScreenController>().pressEnjoyedButton() : null,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}