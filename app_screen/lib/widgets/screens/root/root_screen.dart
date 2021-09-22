import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/root/root_screen_state.dart';
import 'package:schedule_application/widgets/screens/schedule/schedule_screen.dart';
import 'package:schedule_application/widgets/screens/setting/setting_screen.dart';
import 'package:schedule_application/widgets/screens/share/share_screen.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';
import 'package:schedule_application/widgets/screens/timer/timer_screen.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channel = WebSocketChannel.connect(Uri.parse('ws://52.149.9.204/'));
    return StateNotifierProvider<RootScreenController, RootScreenState>(
      create: (_) => RootScreenController(
        context: context,
      ),
      builder: (context, _) {
        return CupertinoTabScaffold(
          controller: context
              .watch<RootScreenController>()
              .tabController,
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: [
                    ScheduleScreen(),
                    ShareScreen(
                      channel: channel,
                    ),
                    // MyApp(),
                    SettingScreen(),
                    //TimerScreen(),
                  ][index],
                );
              },
            );
          },
          tabBar: CupertinoTabBar(
            backgroundColor: AppColor.white,
            items: [
              BottomNavigationBarItem(
                activeIcon: Assets.images.naviScheduleOn.image(),
                icon: Assets.images.naviSchedule.image(),
              ),
              BottomNavigationBarItem(
                activeIcon: Assets.images.naviShareOn.image(),
                icon: Assets.images.naviShare.image(),
              ),
              BottomNavigationBarItem(
                activeIcon: Assets.images.naviSettingsOn.image(),
                icon: Assets.images.naviSettings.image(),
              ),
            ],
          ),
        );
      },
    );
  }
}
