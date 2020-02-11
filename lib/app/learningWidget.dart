import 'package:flutter/material.dart';
import 'config.dart';

class LearningWidget extends StatelessWidget {
  LearningWidget({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: Config.graphemes.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: RaisedButton(
                /*onPressed: onPressed,*/
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text(
                      "${Config.graphemes[i].symbol}",
                      textScaleFactor: 7.0,
                    ),
                    Text(
                      "${Config.graphemes[i].translation}",
                      textScaleFactor: 2.0,
                    ),
                  ],
                ),
            ),
          );
        },
      ),
    );
  }
}