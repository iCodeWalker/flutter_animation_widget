import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  static const routeName = '/animated-size';
  const AnimatedSizeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  double _size = 100;
  bool _large = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated size')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _size = _large ? 250.0 : 100.0;
            _large = !_large;
          });
        },
        child: Center(
          child: Container(
            color: Colors.amberAccent,
            child: AnimatedSize(
              duration: Duration(seconds: 1),
              curve: Curves.easeIn,
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}
