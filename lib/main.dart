import 'package:animation_widgets/widgets/animated-switcher.dart';
import 'package:flutter/material.dart';

import './homepage.dart';

import './widgets/animated_align.dart';
import './widgets/animated_builder.dart';
import './widgets/animated_container.dart';
import './widgets/animated_crossfade.dart';
import './widgets/animated_default_textstyle.dart';
import './widgets/animated_icon.dart';
import './widgets/animated_list.dart';
import './widgets/animated-opacity.dart';
import './widgets/animated-padding.dart';
import './widgets/animated-modal.dart';
import './widgets/animated-positioned.dart';
import './widgets/animated-rotation.dart';
import './widgets/animated-size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          backgroundColor: Colors.white,

          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        // home: const AnimatedAlignWidget(),
        // home: const AnimatedBuilderWidget(),
        // home: const AnimatedContainerWidget(),
        // home: const AnimatedCrossFadeWidget(),
        // home: const AnimatedDefaultTextStyleWidget(),
        // home: const AnimatedIconWidget(),
        home: HomePage(),
        routes: {
          AnimatedAlignWidget.routeName: (ctx) => AnimatedAlignWidget(),
          AnimatedBuilderWidget.routeName: (ctx) => AnimatedBuilderWidget(),
          AnimatedContainerWidget.routeName: (ctx) => AnimatedContainerWidget(),
          AnimatedCrossFadeWidget.routeName: (ctx) => AnimatedCrossFadeWidget(),
          AnimatedDefaultTextStyleWidget.routeName: (ctx) =>
              AnimatedDefaultTextStyleWidget(),
          AnimatedIconWidget.routeName: (ctx) => AnimatedIconWidget(),
          AnimatedListWidget.routeName: (ctx) => AnimatedListWidget(),
          AnimatedOpacityWidget.routeName: (ctx) => AnimatedOpacityWidget(),
          AnimatedPaddingWidget.routeName: (ctx) => AnimatedPaddingWidget(),
          AnimatedModalWidget.routeName: (ctx) => AnimatedModalWidget(),
          AnimatedPositionedWidget.routeName: (ctx) =>
              AnimatedPositionedWidget(),
          AnimatedRotationWidget.routeName: (ctx) => AnimatedRotationWidget(),
          AnimatedSizeWidget.routeName: (ctx) => AnimatedSizeWidget(),
          AnimatedSwitcherWidget.routeName: (ctx) => AnimatedSwitcherWidget(),
        });
  }
}
