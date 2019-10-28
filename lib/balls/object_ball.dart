import 'package:flutter/material.dart';

class ObjectBall extends StatefulWidget {
  @override
  _ObjectBallState createState() => _ObjectBallState();
}

class _ObjectBallState extends State<ObjectBall> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ObjectBallPainter(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

class ObjectBallCoords {
  double objectBallX;
  double objectBallY;

  ObjectBallCoords({this.objectBallX, this.objectBallY});
}

class ObjectBallPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final obCoords = ObjectBallCoords(
      objectBallX: size.width / 1.25,
      objectBallY: size.height / 4,
    );

    final paint = Paint();

    // set the radius "r"
    final r = 40.0;

    // set the color property of the paint
    paint.color = Colors.green;

    // center of the canvas is (x, y) => (width/2, height/2)
    var center = Offset(obCoords.objectBallX, obCoords.objectBallY);

    // draw the circle on center of canvas having radius r
    canvas.drawCircle(center, r, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
  