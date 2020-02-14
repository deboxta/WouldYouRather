import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp3/app/widgets/outlineButtonWidget.dart';

import 'models/learnModel.dart';

class PortraitTrainingPage extends StatelessWidget{
  final Function() onPressed;
  final LearnModel model;

  const PortraitTrainingPage({
    Key key,
    @required
    this.model,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }

}