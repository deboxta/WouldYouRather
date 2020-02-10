import 'package:flutter/material.dart';
import 'package:tp3/app/trainingWidget.dart';
import 'learningWidget.dart';

class App extends StatelessWidget {
  static const String _hiraganas = 'Hiraganas';
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );

    final pageView = PageView(
      controller: controller,
      children: <Widget>[
        LearningWidget(),
        TrainingWidget()
      ],
    );

    return MaterialApp(
      onGenerateTitle: (BuildContext context) => "Hiraganas",
      title: _hiraganas,
      home: pageView,
    );
  }
}
