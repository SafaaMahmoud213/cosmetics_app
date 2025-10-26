import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:flutter/material.dart';

class CostomSigninBody extends StatelessWidget {
  const CostomSigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        100.he,
        AppImage(url: CostomImage.login, width: 280, height: 227),
        20.he,
        Text("Login Now", style: CostomTextStyle.text24bold),
        10.he,
        Text(
          "Please enter the details below to continue",
          style: CostomTextStyle.text13regular,
        ),
        20.he,
      ],
    );
  }
}
