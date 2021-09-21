import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item_app_version.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item_onoffswitch.dart';
import 'package:schedule_application/widgets/screens/setting/setting_screen_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:schedule_application/models/services/sharer.dart';
import 'package:schedule_application/models/preference/preference.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SettingScreenController, SettingScreenState>(
        create: (_) => SettingScreenController(
          context: context,
          preference: Preference(),
          share: ShareService(),
        ),
        builder: (context, _) {
          return Scaffold(
            appBar: AppBar(
              title: Center(child: Text('設定')),
            ),
            body: Column(
                children: [

                  SettingOnoffSwitch(
                    title: '通知',
                    isOn: context.select<SettingScreenState, bool>((state) => state.isAllowedRetranslation),
                    onChangeIsOn: (isOn) => context.read<SettingScreenController>().onChangeRetranslationIsOn(isOn: isOn),
                  ),

                  SettingOnoffSwitch(
                    title: 'ダークモード',
                    isOn: context.select<SettingScreenState, bool>((state) => state.isDarkModeRetranslation),
                    onChangeIsOn: (isOn) => context.read<SettingScreenController>().onChangeDarkModeIsOn(isOn: isOn),
                  ),


                  SettingItem(
                      title: 'レビューを書く',
                      onTap: () => context.read<SettingScreenController>().onTapReview(),
                  ),

                  SettingItem(
                      title: '友達に教える',
                      onTap: () => context.read<SettingScreenController>().onTapShare(),
                  ),

                  SettingItem(
                      title: 'ヒントを見る',
                      onTap: () {print("aaa");}
                  ),

                  SettingItemAppVersion(
                    version: '1.00',
                  ),
                  Spacer(),
                ]
            ),
          );
        }
    );
  }
}