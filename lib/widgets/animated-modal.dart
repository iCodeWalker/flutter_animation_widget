import 'package:flutter/material.dart';

class AnimatedModalWidget extends StatefulWidget {
  static const routeName = '/animated-modal';
  const AnimatedModalWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedModalWidget> createState() => _AnimatedModalWidgetState();
}

class _AnimatedModalWidgetState extends State<AnimatedModalWidget> {
  bool _isFlat = true;

  void changeElevation() {
    setState(() {
      _isFlat = !_isFlat;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Modal')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedPhysicalModel(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                elevation: _isFlat ? 0.0 : 6.0,
                shape: BoxShape.rectangle,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Icon(Icons.apple),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: changeElevation, child: Text('Click me'))
            ]),
      ),
    );
  }
}
