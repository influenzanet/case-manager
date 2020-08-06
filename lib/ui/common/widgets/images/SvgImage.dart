import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:websafe_svg/websafe_svg.dart';

svgImageAsset(
  String assetName, {
  Key key,
  bool matchTextDirection = false,
  AssetBundle bundle,
  String package,
  double width,
  double height,
  BoxFit fit = BoxFit.contain,
  Alignment alignment = Alignment.center,
  bool allowDrawingOutsideViewBox = false,
  Widget Function(BuildContext) placeholderBuilder,
  Color color,
  BlendMode colorBlendMode = BlendMode.srcIn,
  String semanticsLabel,
  bool excludeFromSemantics = false,
}) {
  if (kReleaseMode) {
    return SvgPicture.asset(
      assetName,
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
    );
  } else {
    return WebsafeSvg.asset(
      assetName,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      placeholderBuilder: placeholderBuilder,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }
}
