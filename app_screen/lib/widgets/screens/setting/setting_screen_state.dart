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
import 'package:schedule_application/models/preference/preference.dart';
import 'dart:io';

part 'setting_screen_state.freezed.dart';

@freezed
class SettingScreenState with _$SettingScreenState {
  const factory SettingScreenState({
    @Default(false) bool isAllowedRetranslation,
    @Default(false) bool isDarkModeRetranslation,
}) = _SettingScreenState;
}

class SettingScreenController extends StateNotifier<SettingScreenState> with LocatorMixin {
  final BuildContext context;
  final ShareService share;
  final Preference preference;
  SettingScreenController({
    required this.context,
    required this.share,
    required this.preference,
  }) : super(const SettingScreenState());

  @override
  void initState() {
    super.initState();
    preference.getBool(PreferenceKey.isAllowedRetranslation).then((isAllowedRetranslation) {
      if (isAllowedRetranslation != null) {
        state = state.copyWith(isAllowedRetranslation: isAllowedRetranslation);
        return;
      }
      preference.setBool(PreferenceKey.isAllowedRetranslation, true);
    });

    preference.getBool(PreferenceKey.isDarkModeRetranslation).then((isDarkModeRetranslation) {
      if (isDarkModeRetranslation != null) {
        state = state.copyWith(isDarkModeRetranslation: isDarkModeRetranslation);
        return;
      }
      preference.setBool(PreferenceKey.isDarkModeRetranslation, true);
    });
  }

  void onTapShare() {
    share.shareUrl();
  }

  void onChangeRetranslationIsOn({required bool isOn}){
    state = state.copyWith(isAllowedRetranslation: isOn);
    preference.setBool(PreferenceKey.isAllowedRetranslation, isOn);
  }

  void onChangeDarkModeIsOn({required bool isOn}){
    state = state.copyWith(isDarkModeRetranslation: isOn);
    preference.setBool(PreferenceKey.isDarkModeRetranslation, isOn);
  }

  void onTapReview() {
    final storeURL = Platform.isIOS ? Constant.appStoreURL : Constant.googlePlayStoreURL;
    launch(storeURL);
  }
}