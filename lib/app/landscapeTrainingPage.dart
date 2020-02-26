import 'package:flutter/material.dart';
import 'package:tp3/app/models/graphemeModel.dart';
import 'package:tp3/app/models/learnModel.dart';
import 'package:tp3/app/widgets/outlineButtonWidget.dart';

//BC : Code mort.
class LandscapeTrainingPage extends StatelessWidget{
  final Function() onPressed;
  final LearnModel model;
  final bool isButtonEnabled;

  const LandscapeTrainingPage({
    Key key,
    @required
    this.isButtonEnabled,
    this.model,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2.0,
              child: Center(
                child: Text(
                  model.choice0.symbol,
                  textScaleFactor: 8.0,
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
                  isEnable: false,
                  onPressed: onPressed
              ),

              OutlineButtonWidget(
                text: "eheheh",
                isEnable: true,
                onPressed: onPressed,
              ),
              OutlineButtonWidget(
                text: "ohohoh",
                isEnable: true,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ],
    );
  }

}