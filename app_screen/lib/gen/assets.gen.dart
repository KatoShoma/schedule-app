/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get aug31 => const AssetGenImage('assets/images/aug_31.png');
  AssetGenImage get back => const AssetGenImage('assets/images/back.png');
  AssetGenImage get bomb => const AssetGenImage('assets/images/bomb.png');
  AssetGenImage get clock => const AssetGenImage('assets/images/clock.png');
  AssetGenImage get ghost => const AssetGenImage('assets/images/ghost.png');
  AssetGenImage get good => const AssetGenImage('assets/images/good.png');
  AssetGenImage get heart => const AssetGenImage('assets/images/heart.png');
  AssetGenImage get huHu => const AssetGenImage('assets/images/hu-hu.png');
  AssetGenImage get naviSchedule =>
      const AssetGenImage('assets/images/navi_schedule.png');
  AssetGenImage get naviScheduleOn =>
      const AssetGenImage('assets/images/navi_schedule_on.png');
  AssetGenImage get naviSettings =>
      const AssetGenImage('assets/images/navi_settings.png');
  AssetGenImage get naviSettingsOn =>
      const AssetGenImage('assets/images/navi_settings_on.png');
  AssetGenImage get naviShare =>
      const AssetGenImage('assets/images/navi_share.png');
  AssetGenImage get naviShareOn =>
      const AssetGenImage('assets/images/navi_share_on.png');
  AssetGenImage get next => const AssetGenImage('assets/images/next.png');
  AssetGenImage get person => const AssetGenImage('assets/images/person.png');
  AssetGenImage get send => const AssetGenImage('assets/images/send.png');
  AssetGenImage get sendOn => const AssetGenImage('assets/images/send_on.png');
  AssetGenImage get smail => const AssetGenImage('assets/images/smail.png');
  AssetGenImage get synergy => const AssetGenImage('assets/images/synergy.png');
  AssetGenImage get tear => const AssetGenImage('assets/images/tear.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
