import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  static const routeName = '/animated-container';
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container')),
      body: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: AnimatedContainer(
              width: selected ? 300 : 100,
              height: selected ? 300 : 100,
              color: selected ? Colors.blueGrey : Colors.white,
              alignment:
                  selected ? Alignment.bottomRight : Alignment.bottomCenter,
              duration: Duration(seconds: 3),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: selected ? 100 : 50),
            ),
          )),
    );
  }
}
