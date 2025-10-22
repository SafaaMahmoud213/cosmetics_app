import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:flutter/material.dart';

class CostomContainerSmall extends StatelessWidget {
  const CostomContainerSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ContainerClipper(),
      child: Container(color: CostomColors.primaryColor, height: 250),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 130);
    path.quadraticBezierTo(
      size.width - 80,
      size.height - 190,
      size.width + 10,
      size.height,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
