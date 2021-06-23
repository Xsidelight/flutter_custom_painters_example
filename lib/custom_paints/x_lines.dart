import 'package:flutter/material.dart';

class MyLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(0, 0);
    final p2 = Offset(0, 100);
    final paint = Paint()..color = Colors.black..strokeWidth = 4;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
