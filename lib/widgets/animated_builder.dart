import 'dart:math' as math;
import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  static const routeName = '/animated-builder';
  const AnimatedBuilderWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 5))
        ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Builder')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.white,
            child: FlutterLogo(size: 80),
          ),
          builder: (ctx, child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
