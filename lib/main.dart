import 'package:flutter/material.dart';
import 'package:pool_angles/balls/cue_ball.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    brightness: Brightness.dark,
    accentColor: Colors.lightBlueAccent,
  ),
  home: new HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: Draggable(
          //axis: Axis.horizontal,
          child: CueBall(),
          feedback: CueBall(),
          childWhenDragging: Container(),
        ),
      ),
    );
  }
}