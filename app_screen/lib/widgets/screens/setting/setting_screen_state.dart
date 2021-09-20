import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item_app_version.dart';
import 'package:schedule_application/widgets/screens/setting/children/setting_item_onoffswitch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:schedule_application/models/services/sharer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:schedule_application/utils/constant/constant.dart';
import 'dart:io';

part 'setting_screen_state.freezed.dart';

@freezed
class SettingScreenState with _$SettingScreenState {
  const factory SettingScreenState() = _SettingScreenState;
}

class SettingScreenController extends StateNotifier<SettingScreenState> with LocatorMixin {
  final BuildContext context;
  final ShareService share;
  SettingScreenController({
    required this.context,
    required this.share,
  }) : super(const SettingScreenState());

  @override
  void initState() {
    super.initState();
  }

  void onTapShare() {
    share.shareUrl();
  }

  void onTapReview() {
    final storeURL = Platform.isIOS ? Constant.appStoreURL : Constant.googlePlayStoreURL;
    launch(storeURL);
  }
}