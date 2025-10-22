import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class AppImage extends StatelessWidget {
  double? height;
  String url;
  double? width;
  Color? color;
  BoxFit? fit;
  AppImage({
    super.key,
    required this.url,
    this.color,
    this.fit,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (url.endsWith("svg")) {
      return SvgPicture.asset(url, width: width, height: height, color: color);
    } else if (url.startsWith("http")) {
      return Image.network(url, width: width, height: height);
    } else {
      return Image.asset(
        url,
        width: width,
        height: height,
        color: color,
        fit: fit,
      );
    }
  }
}
