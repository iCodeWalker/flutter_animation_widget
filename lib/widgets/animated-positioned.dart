import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  static const routeName = '/animated-positioned';
  const AnimatedPositionedWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedWidget> createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Animated Positioned')),
        body: SizedBox(
          width: 200,
          height: 450,
          child: Stack(children: <Widget>[
            AnimatedPositioned(
              width: selected ? 200.0 : 50.0,
              height: selected ? 50.0 : 250.0,
              top: selected ? 50.0 : 150.0,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            )
          ]),
        ));
  }
}
