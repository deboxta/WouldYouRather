import 'package:flutter/material.dart';
import 'package:tp3/app/models/graphemeModel.dart';
import 'package:tp3/app/models/learnModel.dart';
import 'package:tp3/app/widgets/outlineButtonWidget.dart';

class LandscapeTrainingPage extends StatelessWidget{
  final Function() onPressed;
  final LearnModel model;

  const LandscapeTrainingPage({
    Key key,
    @required
    this.model,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Card(
              elevation: 2.0,
              child: Center(
                child: Text(
                  "Lo",
                  textScaleFactor: 9.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              OutlineButtonWidget(
                  text: "ahahah",
                  onPressed: onPressed
              ),

              OutlineButtonWidget(
                text: "eheheh",
                onPressed: onPressed,
              ),
              OutlineButtonWidget(
                text: "ohohoh",
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ],
    );
  }

}