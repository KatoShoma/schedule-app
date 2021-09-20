import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule_application/widgets/screens/share/share_screen.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_screen_state.freezed.dart';

@freezed
class ShareScreenState with _$ShareScreenState {
  const factory ShareScreenState({
    @Default(false) bool isPressedEnjoyedButton,
  }) = _ShareScreenState;
}

class ShareScreenController extends StateNotifier<ShareScreenState> with LocatorMixin {
  final BuildContext context;

  ShareScreenController({
    required this.context,
  }) : super(const ShareScreenState());

  @override
  void initState() {
    super.initState();
  }

  void pressEnjoyedButton(){
    state = state.copyWith(isPressedEnjoyedButton: true);
  }
}

