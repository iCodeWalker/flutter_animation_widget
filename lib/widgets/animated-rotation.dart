import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedRotationWidget extends StatefulWidget {
  static const routeName = '/animated-rotation';
  const AnimatedRotationWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: AnimatedRotation(
                turns: turns,
                duration: Duration(seconds: 1),
                child: FlutterLogo(
                  size: 80,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    turns = turns + 1 / 4;
                  });
                },
                child: Text('Click to turn'))
          ]),
    );
  }
}
