import 'package:flutter/material.dart';

class PentagonClipperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double width = size.width;
    double height = size.height;

    path.moveTo(width * 0.5, 0);
    path.lineTo(width, height * 0.38);
    path.lineTo(width * 0.81, height);
    path.lineTo(width * 0.19, height);
    path.lineTo(0, height * 0.38);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
