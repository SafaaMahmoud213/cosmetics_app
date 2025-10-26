import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostomHeader extends StatelessWidget {
  String data;
  CostomHeader({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppImage(url: CostomImage.logo, width: 120, height: 100),
        20.he,

        Center(child: Text(data, style: CostomTextStyle.text24bold)),
        10.he,
      ],
    );
  }
}
