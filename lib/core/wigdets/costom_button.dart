import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostomButton extends StatelessWidget {
  void Function()? onTap;
  String text;
  Color? color;
  CostomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 265,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color ?? CostomColors.primaryColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
