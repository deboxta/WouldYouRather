import 'package:flutter/material.dart';
import 'package:tp3/app/trainingWidget.dart';
import 'learningWidget.dart';
import 'homeRoute.dart';

class App extends StatelessWidget {
  static const String _hiraganas = 'Hiraganas';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    onGenerateTitle: (BuildContext context) => _hiraganas,
    title: _hiraganas,
    home: HomeRoute(),
    );
  }
}

