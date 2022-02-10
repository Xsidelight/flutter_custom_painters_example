import 'package:flutter/material.dart';
import 'dart:math' as math;

/*
The rect is what the full oval would be inscribed within.
The startAngle is the location on the oval that the line starts drawing from. An angle of 0 is at the right side. Angles are in radians, not degrees. The top is at 3π/2 (or -π/2), the left at π, and the bottom at π/2.
The sweepAngle is how much of the oval is included in the arc. Again, angles are in radians. A value of 2π would draw the entire oval.
If you set useCenter to true, then there will be a straight line from both sides of the arc to the center. It will look like a piece of pie.
 */

class MyArcsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(50, 100, 250, 200);
    final startAngle = -math.pi / 2;
    final sweepAngle = math.pi;
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
