import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DontOrHaveAccount extends StatelessWidget {
  String? text1;
  String? text2;
  void Function()? onTap;
  DontOrHaveAccount({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: text1, style: CostomTextStyle.text13regular),
            TextSpan(text: text2, style: CostomTextStyle.text14boldpink),
          ],
        ),
      ),
    );
  }
}
