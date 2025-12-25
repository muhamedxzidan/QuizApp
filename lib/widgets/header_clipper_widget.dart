import 'package:flutter/material.dart';

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
      size.width * 0.166,
      size.height - 90,
      size.width * 0.333,
      size.height - 60,
    );

    path.quadraticBezierTo(
      size.width * 0.5,
      size.height - 30,
      size.width * 0.666,
      size.height - 60,
    );

    path.quadraticBezierTo(
      size.width * 0.833,
      size.height - 90,
      size.width,
      size.height - 60,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
