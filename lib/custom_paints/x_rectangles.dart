import 'package:flutter/material.dart';

class MyRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final left = 50.0;
    final top = 100.0;
    final right = 250.0;
    final bottom = 200.0;
    final rect = Rect.fromLTRB(left, top, right, bottom);
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke // can use PaintStyle.fill to fill the rect
      ..strokeWidth = 4;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
