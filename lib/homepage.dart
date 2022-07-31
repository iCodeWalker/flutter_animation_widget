import 'package:animation_widgets/widgets/animated-opacity.dart';
import 'package:animation_widgets/widgets/animated-padding.dart';
import 'package:animation_widgets/widgets/animated-positioned.dart';
import 'package:animation_widgets/widgets/animated-rotation.dart';
import 'package:animation_widgets/widgets/animated-size.dart';
import 'package:animation_widgets/widgets/animated-switcher.dart';
import 'package:animation_widgets/widgets/animated_align.dart';
import 'package:animation_widgets/widgets/animated_builder.dart';
import 'package:animation_widgets/widgets/animated_container.dart';
import 'package:animation_widgets/widgets/animated_crossfade.dart';
import 'package:animation_widgets/widgets/animated_default_textstyle.dart';
import 'package:animation_widgets/widgets/animated_icon.dart';
import 'package:animation_widgets/widgets/animated_list.dart';
import './widgets/animated-modal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Animation Widgets')),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedAlignWidget.routeName);
          },
          child: Text('Animated Align widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedBuilderWidget.routeName);
          },
          child: Text('Animated builder widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedContainerWidget.routeName);
          },
          child: Text('Animated container widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedCrossFadeWidget.routeName);
          },
          child: Text('Animated crossfade widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed(AnimatedDefaultTextStyleWidget.routeName);
          },
          child: Text('Animated defaut text style widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedIconWidget.routeName);
          },
          child: Text('Animated icon widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedListWidget.routeName);
          },
          child: Text('Animated List widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedOpacityWidget.routeName);
          },
          child: Text('Animated opacity widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedPaddingWidget.routeName);
          },
          child: Text('Animated padding widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedModalWidget.routeName);
          },
          child: Text('Animated modal widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedPositionedWidget.routeName);
          },
          child: Text('Animated positioned widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedRotationWidget.routeName);
          },
          child: Text('Animated rotation widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedSizeWidget.routeName);
          },
          child: Text('Animated size widget'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AnimatedSwitcherWidget.routeName);
          },
          child: Text('Animated switcher widget'),
        ),
      ]),
    ));
  }
}
