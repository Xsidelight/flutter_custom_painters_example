import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MyDotPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pointMode = ui.PointMode.points;
    final points = [
      Offset(150, 150),
      Offset(50, 100),
      Offset(150, 75),
      Offset(250, 250),
      Offset(200, 200),
      Offset(130, 200),
      Offset(270, 100),
    ];
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawPoints(pointMode, points, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
