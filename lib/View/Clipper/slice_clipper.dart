import 'package:flutter/material.dart';

class SliceClipper extends CustomClipper<Path> {
  SliceClipper(this.animation) : super(reclip: animation) {
    curve = CurvedAnimation(
      parent: animation,
      curve: Curves.ease,
    );
  }

  late Animation curve;
  late Animation<double> animation;

  @override
  getClip(Size size) {
   final path = Path()..moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * animation.value);
    path.lineTo(0, size.height - (size.height * animation.value));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
// 

class BackgroundClipUp extends CustomClipper<Path> {
  BackgroundClipUp(this.animation) : super(reclip: animation) {
    curve = CurvedAnimation(
      parent: animation,
      curve: Curves.ease,
    );
  }

  late Animation curve;
  late Animation<double> animation;

  @override
  getClip(Size size) {
    final path = Path()..moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * animation.value);
    path.lineTo(0, size.height * animation.value);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
