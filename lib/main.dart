import 'package:flutter/material.dart';
import 'package:paint_ex/custom_paints/custom_praph.dart';
import 'package:paint_ex/custom_paints/x_%20text_high_lvl.dart';
import 'package:paint_ex/custom_paints/x_arcs.dart';
import 'package:paint_ex/custom_paints/x_circles.dart';
import 'package:paint_ex/custom_paints/x_lines.dart';
import 'package:paint_ex/custom_paints/x_ovals.dart';
import 'package:paint_ex/custom_paints/x_path_points.dart';
import 'package:paint_ex/custom_paints/x_rectangles.dart';
import 'package:paint_ex/custom_paints/x_text_low_level.dart';

import 'custom_paints/x_paths.dart';
import 'custom_paints/x_dots.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Painter Examples"),
        ),
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dots:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyDotPainter(),
              ),
            ),
            Text("Lines:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyLinePainter(),
              ),
            ),
            Text("Rectangles:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyRectanglePainter(),
              ),
            ),
            Text("Circle:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyCirclePainter(),
              ),
            ),
            Text("Oval:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyOvalPainter(),
              ),
            ),
            Text("Arc:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyArcsPainter(),
              ),
            ),
            Text("Path:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyPathPainter(),
              ),
            ),
            Text("Path With Points:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyPathWithPointsPainter(),
              ),
            ),
            Text("Text Painter Low Lvl approach:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyTextPainterLowLvlApproach(),
              ),
            ),
            Text("Text Painter High Lvl approach:"),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: MyTextPainterHighLvlApproach(),
              ),
            ),
            Text("GraphExperiment"),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue), color: Colors.deepPurple),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: CustomGraph(),
              ),
            ),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
