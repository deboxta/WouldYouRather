import 'package:flutter/material.dart';

class TrainingWidget extends StatefulWidget {
  TrainingWidget({Key key}) : super(key : key);

  @override
  State<StatefulWidget> createState() => _TrainingWidget();

}

class _TrainingWidget extends State<TrainingWidget> with AutomaticKeepAliveClientMixin<TrainingWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
              'Lo',
              textScaleFactor: 9.0)
        ),
        RaisedButton(child: Text("ahahah"),),
        RaisedButton(child: Text("eheheh"),),
        RaisedButton(child: Text("ohohoh"),)

      ],
      mainAxisAlignment:  MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }

  @override
  bool get wantKeepAlive => true;
}