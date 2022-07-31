import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  static const routeName = '/animated-align';

  const AnimatedAlignWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Scaffold(
          appBar: AppBar(title: Text('animated align')),
          body: Container(
            width: double.infinity,
            height: 250,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.bottomRight : Alignment.topLeft,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(
                size: 50.0,
              ),
            ),
          )),
    );
  }
}
