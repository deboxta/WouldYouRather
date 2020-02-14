import 'package:flutter/material.dart';
import 'package:tp3/app/landscapeTrainingPage.dart';
import 'package:tp3/app/models/graphemeModel.dart';
import 'package:tp3/app/models/learnModel.dart';
import 'package:tp3/app/portraitTrainingPage.dart';
import 'dart:math';
import 'ressources/config.dart';
import 'package:tp3/app/widgets/outlineButtonWidget.dart';

class TrainingPage extends StatefulWidget {
  TrainingPage({Key key}) : super(key : key);

  @override
  State<StatefulWidget> createState() => _TrainingPage();

}

class _TrainingPage extends State<TrainingPage> with AutomaticKeepAliveClientMixin<TrainingPage> {

  Random _rng = new Random();

  LearnModel learnModel = LearnModel();


  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return PortraitTrainingPage(
            onPressed: () {_onChoiceClicked(context);},
            model: learnModel,
          );
        } else {
          return LandscapeTrainingPage(
            onPressed: () {_onChoiceClicked(context);},
            model: learnModel,
          );
        }
      }
    );
  }

  void _onChoiceClicked(BuildContext context){
    setState(() {
      //learnModel.response = Config.graphemes[_rng.nextInt(Config.graphemes.length)
    });
  }

  @override
  bool get wantKeepAlive => true;
}