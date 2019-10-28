import 'package:flutter/material.dart';
import 'package:pool_angles/balls/cue_ball.dart';

class LineOfAim extends StatefulWidget {
  final Widget child;

  @override

  LineOfAim({Key key, this.child}) : super(key: key);

  _LineOfAimState createState() => _LineOfAimState();
}

class _LineOfAimState extends State<LineOfAim> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LineOfAimPainter(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

class LineOfAimPainter extends CustomPainter {
  final CueBallCoords cbCoords;

  LineOfAimPainter({this.cbCoords});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // set the end coordinates of the line
    

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;  
}