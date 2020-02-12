import 'package:flutter/material.dart';
import 'dart:math';

class TrainingWidget extends StatefulWidget {
  TrainingWidget({Key key}) : super(key : key);

  @override
  State<StatefulWidget> createState() => _TrainingWidget();

}

class _TrainingWidget extends State<TrainingWidget> with AutomaticKeepAliveClientMixin<TrainingWidget> {

  var rng = new Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: const Text(
              'Lo',
              textScaleFactor: 9.0)
        ),
        OutlineButton(
          child: Text("ahahah"),
          onPressed: _onChoiceClicked,
        ),
        OutlineButton(
          child: Text("eheheh"),
          onPressed: _onChoiceClicked,
        ),
        OutlineButton(
          child: Text("ohohoh"),
          onPressed: _onChoiceClicked,
        )

      ],
      mainAxisAlignment:  MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }

  void _onChoiceClicked(){
    setState(() {

    });
  }

  @override
  bool get wantKeepAlive => true;
}