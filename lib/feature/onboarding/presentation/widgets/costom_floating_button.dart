import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostomFloatingButton extends StatelessWidget {
  final void Function()? onPressed;
  Color? backgroundColor;
  Color? colors;
  CostomFloatingButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: onPressed,

      child: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors ?? Colors.white,
      ),
    );
  }
}
