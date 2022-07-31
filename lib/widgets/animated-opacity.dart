import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  static const routeName = '/animated-opacity';
  const AnimatedOpacityWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  bool flag = true;
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() {
      flag = !flag;
      opacityLevel = flag ? 1.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(opacityLevel);
    return Scaffold(
      appBar: AppBar(title: Text('Animated Opacity')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: Duration(seconds: 2),
            child: FlutterLogo(
              size: 70,
            ),
          ),
          TextButton(
            onPressed: _changeOpacity,
            child: Text('Toggle opacity'),
          )
        ],
      )),
    );
  }
}
