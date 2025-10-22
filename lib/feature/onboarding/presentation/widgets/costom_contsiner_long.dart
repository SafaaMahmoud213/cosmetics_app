import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:flutter/material.dart';

class CostomContsinerLong extends StatelessWidget {
  const CostomContsinerLong({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ContainerClipper(),
      child: Container(color: CostomColors.primaryColor, height: 853),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, size.height - 120);
    path.quadraticBezierTo(
      size.width,
      size.height + 50,
      size.width + 400,
      size.height * 0.3,
    );

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
