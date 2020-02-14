import 'package:flutter/material.dart';
import 'ressources/config.dart';

class LearningPage extends StatelessWidget {
  LearningPage({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scrollbar(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: orientation == Orientation.portrait ? 2 : 3),
            itemCount: Config.graphemes.length,
            itemBuilder: (_, i) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  elevation: 2.0,
                  child: Center(
                    /*onPressed: onPressed,*/
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
                ),
              );
            },
          ),
        );
      }
    );
  }
}