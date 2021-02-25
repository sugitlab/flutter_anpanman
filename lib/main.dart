import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anpanman',
      theme: ThemeData.light(),
      home: MyHomePage(title: 'Anpanman'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFE7A676),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPaint(
                      size: Size(20, 20),
                      painter: EyebrowPainter(),
                    ),
                    SizedBox(width: 30),
                    CustomPaint(
                      size: Size(20, 20),
                      painter: EyebrowPainter(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        height: 30,
                        width: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 30),
                    ClipOval(
                      child: Container(
                        height: 30,
                        width: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFDA6B4F),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Container(
                            height: 10,
                            width: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFFD45245),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 10,
                            width: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFDA6B4F),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Container(
                            height: 10,
                            width: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CustomPaint(
                  size: Size(80, 20),
                  painter: MousePainter(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MousePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0, 0, size.width, size.height);
    final startAngle = math.pi / 12 * 0;
    final sweepAngle = math.pi / 12 * 12;
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}

class EyebrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0, 0, size.width, size.height);
    final startAngle = math.pi / 12 * 12;
    final sweepAngle = math.pi / 12 * 12;
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.1;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
