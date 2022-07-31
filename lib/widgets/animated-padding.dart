import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  static const routeName = '/animated-padding';
  const AnimatedPaddingWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double paddingValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Padding')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              setState(() {
                paddingValue = paddingValue == 0.0 ? 100.0 : 0.0;
              });
            },
            child: Text('Change padding'),
            style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
          ),
          Text("padding value : $paddingValue"),
          AnimatedPadding(
            padding: EdgeInsets.all(paddingValue),
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
            ),
          )
        ],
      ),
    );
  }
}
