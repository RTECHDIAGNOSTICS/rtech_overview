/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/dashboard_icon.png
  // AssetGenImage get dashboardIcon =>
  // const AssetGenImage('assets/image/dashboard_icon.png');

  AssetGenImage get appMockup =>
      const AssetGenImage('assets/images/appMockup.png');
  AssetGenImage get homeCircleGrad =>
      const AssetGenImage('assets/images/homeCircleGrad.png');
  AssetGenImage get homeCircleGradBlue =>
      const AssetGenImage('assets/images/homeCircleGradBlue.png');
  AssetGenImage get rTechLogoBlack =>
      const AssetGenImage('assets/images/rTechLogoBlack.png');
  AssetGenImage get appstore => const AssetGenImage('assets/images/app store image.jpg');
  AssetGenImage get playstore => const AssetGenImage('assets/images/play store image.jpg');
  AssetGenImage get newsletterImage => const AssetGenImage('assets/images/newsletter image.jpg');
  AssetGenImage get mackTruck => const AssetGenImage('assets/images/mack truck.jpg');
  AssetGenImage get ctaImage => const AssetGenImage('assets/images/cta image.png');
  AssetGenImage get ctaEllipse => const AssetGenImage('assets/images/cta Ellipse.png');
  AssetGenImage get ctaEllipse1 => const AssetGenImage('assets/images/cta Ellipse 1.png');
  AssetGenImage get ctaImageMobile => const AssetGenImage('assets/images/cta image mobile.png');
  AssetGenImage get ctaEclispse1Mobile => const AssetGenImage('assets/images/cta eclispse 1 mobile.png');
  AssetGenImage get ctaEclispseMobile => const AssetGenImage('assets/images/cta eclispse mobile.png');
  
  
  
  
  
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  SvgGenImage get arrow => const SvgGenImage('assets/svgs/arrow.svg');
  SvgGenImage get checkGreen => const SvgGenImage('assets/svgs/check green.svg');
  SvgGenImage get consultation => const SvgGenImage('assets/svgs/consultation.svg');
  SvgGenImage get instagramSvg => const SvgGenImage('assets/svgs/instagram svg.svg');
  SvgGenImage get linkedInSvg => const SvgGenImage('assets/svgs/linkedIn svg.svg');
  SvgGenImage get towing => const SvgGenImage('assets/svgs/towing (2).svg');
  SvgGenImage get truckFix => const SvgGenImage('assets/svgs/truck fix.svg');
  SvgGenImage get truckPart => const SvgGenImage('assets/svgs/truck part.svg');
  SvgGenImage get twitterSvg => const SvgGenImage('assets/svgs/twitter svg.svg');
  
  

}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
