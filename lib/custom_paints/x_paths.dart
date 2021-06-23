import 'package:flutter/material.dart';

/*
moveTo goes to where the path starts.
lineTo draws a line from the current location in the path to the given (x, y) coordinates.
The first two arguments of the quadraticBezierTo method are the x,y values of the control point. The last two arguments are the x,y values of where the Bezier curve ends.
There are a lot more options for making paths, so that will have to wait for another lesson.
 */

class MyPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(50, 50)
      ..lineTo(200, 200)
      ..quadraticBezierTo(200, 0, 150, 100);
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
