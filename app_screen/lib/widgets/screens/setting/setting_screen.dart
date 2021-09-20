import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item_app_version.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item_onoffswitch.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('設定')),
      ),
      body: Column(
          children: [

            SettingOnoffSwitch(
              title: '通知',
            ),

            SettingOnoffSwitch(
              title: 'ダークモード',
            ),

            SettingItem(
              title: 'プロフィール設定',
            ),

            SettingItem(
              title: 'レビューを書く',
            ),

            SettingItem(
              title: '友達に教える',
            ),

            SettingItem(
              title: 'ヒントを見る',
            ),

            SettingItemAppVersion(
              version: '1.00',
            ),
            Spacer(),
          ]
      ),
    );
  }
}