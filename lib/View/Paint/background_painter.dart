import 'package:flutter/material.dart';
import 'package:state_managements/Controller/StateManagement/value.dart';

class BackgroundPainter extends CustomPainter {
  BackgroundPainter(this.animation) : super(repaint: animation) {
    curve = CurvedAnimation(
      parent: animation,
      curve: Curves.ease,
    );
  }
  late Animation<double> animation;
  late Animation curve;

  void paintLevelUp(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = selectedValue.value.colors[1].withOpacity(.5);
    final path = Path()..moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * animation.value);
    path.lineTo(0, size.height * animation.value);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    paintLevelUp(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
