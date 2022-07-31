import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  static const routeName = '/animated-crossfade';
  const AnimatedCrossFadeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool seleted = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated crossfade')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  seleted = !seleted;
                });
              },
              child: Text(
                'Switch',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              )),
          AnimatedCrossFade(
              firstChild: Image.network(
                'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                width: double.infinity,
              ),
              secondChild: Image.network(
                'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
                width: double.infinity,
              ),
              crossFadeState: seleted
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 2))
        ],
      ),
    );
  }
}
