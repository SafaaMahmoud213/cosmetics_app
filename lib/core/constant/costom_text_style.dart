import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:flutter/material.dart';

abstract class CostomTextStyle {
  static final TextStyle text16Bold = TextStyle(
    fontSize: 16,
    color: CostomColors.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle text18bold = TextStyle(
    fontSize: 18,
    color: CostomColors.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle text13regular = TextStyle(
    fontSize: 13,
    color: CostomColors.primaryColor,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle text24bold = TextStyle(
    fontSize: 24,
    color: CostomColors.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle text14boldpink = TextStyle(
    fontSize: 14,
    color: CostomColors.secandryColor,
    fontWeight: FontWeight.bold,
  );
}
