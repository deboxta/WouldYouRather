import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp3/app/widgets/outlineButtonWidget.dart';

import 'models/learnModel.dart';

//BC : Code mort.
class PortraitTrainingPage extends StatelessWidget{
  final Function() onPressed;
  final LearnModel model;
  final bool isButtonEnabled;

  const PortraitTrainingPage({
    Key key,
    @required
    this.isButtonEnabled,
    this.model,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2.0,
              child: Center(
                child: Text(
                  model.choice0.symbol,
                  textScaleFactor: 16.0,
                ),
              ),
            ),
          ),
        ),
        OutlineButtonWidget(
            text: "ahahah",
            isEnable: isButtonEnabled,
            onPressed: onPressed
        ),

        OutlineButtonWidget(
          text: "eheheh",
          isEnable: isButtonEnabled,
          onPressed: onPressed,
        ),
        OutlineButtonWidget(
          text: "ohohoh",
          isEnable: isButtonEnabled,
          onPressed: onPressed,
        )
      ],
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }

}