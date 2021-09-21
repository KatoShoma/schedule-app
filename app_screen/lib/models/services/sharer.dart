import 'dart:io';

import 'package:share_plus/share_plus.dart';
import 'package:schedule_application/utils/constant/constant.dart';

class ShareService {
  void shareUrl() {
    // TODO: 各OSの設定ファイルなどからアプリ名を取得して表示
    final storeURL = Platform.isIOS ? Constant.appStoreURL : Constant.googlePlayStoreURL;
    final text = 'スケジュールまもるくん\n$storeURL';
    Share.share(text);
  }
}