import 'package:flutter/material.dart';
import 'learningWidget.dart';

class App extends StatelessWidget {
  static const String _hiraganas = 'Hiraganas';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) => "Hiraganas",
      title: _hiraganas,
      home: LearningWidget(),
    );
  }
}
