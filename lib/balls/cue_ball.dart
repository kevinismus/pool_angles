import 'package:flutter/material.dart';

class CueBall extends StatefulWidget {
  final Widget child;

  CueBall({Key key, this.child}) : super(key: key);

  @override
  _CueBallState createState() => _CueBallState();
}

class _CueBallState extends State<CueBall> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CueBallPainter(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

class CueBallCoords {
  double cueballX;
  double cueballY;

  CueBallCoords({this.cueballX, this.cueballY});
}

class CueBallPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final cbCoords = CueBallCoords(
      cueballX: size.width / 4,
      cueballY: size.height / 1.25,
    );

    final paint = Paint();

    // set the radius "r"
    final r = 40.0;

    // set the color property of the paint
    paint.color = Colors.white;

    // center of the canvas is (x, y) => (width/2, height/2)
    var center = Offset(cbCoords.cueballX, cbCoords.cueballY);

    // draw the circle on center of canvas having radius r
    canvas.drawCircle(center, r, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}