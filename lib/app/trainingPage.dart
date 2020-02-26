import 'package:flutter/material.dart';
import 'package:tp3/app/models/graphemeModel.dart';
import 'dart:math';
import 'ressources/config.dart';

class TrainingPage extends StatefulWidget {
  TrainingPage({Key key}) : super(key : key);

  @override
  State<StatefulWidget> createState() => _TrainingPage();

}

class _TrainingPage extends State<TrainingPage> with AutomaticKeepAliveClientMixin<TrainingPage> {
  Random _rng = new Random();
  //BC : Logique applicative ne devrait pas être dans les Widgets.
  //BC : Private manquqant.
  int responseId;
  List<GraphemeModel> _graphemes = List<GraphemeModel>();
  List<bool> _isEnabled = [true,true,true];

  void _getRandomGraphemes(){
    _graphemes.clear();
    //BC : Constante manquante.
    for(var i=0; i<3; i++){
      _graphemes.add(Config.graphemes[_rng.nextInt(Config.graphemes.length)]);
      _isEnabled[i] = true;
    }
    //BC : Constante manquante.
    responseId = _rng.nextInt(3);
  }

  @override
  void initState() {
    super.initState();
    if(_graphemes.isEmpty){
      _getRandomGraphemes();
    }
  }

  //BC : Warning ignoré.
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.landscape) {
          return Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 2.0,
                    child: Center(
                      child: Text(
                        _graphemes[responseId].symbol,
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
                    //BC : Manque une boucle ici.
                    outlineButtonWidget(0),
                    outlineButtonWidget(1),
                    outlineButtonWidget(2)
                  ],
                ),
              ),
            ],
          );
        } else {
          return Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 2.0,
                    child: Center(
                      child: Text(
                        _graphemes[responseId].symbol,
                        textScaleFactor: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              //BC : Manque une boucle ici.
              outlineButtonWidget(0),
              outlineButtonWidget(1),
              outlineButtonWidget(2)
            ],
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          );
        }
      }
    );
  }

  Widget outlineButtonWidget(int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
      child: OutlineButton(
        child: Text(_graphemes[index].translation),
        onPressed: _isEnabled[index] ? () => {_onChoiceClicked(context, index)} : null,
        disabledTextColor: _isEnabled[index] ? Colors.black : Colors.red,
      ),
    );
  }

  void _onChoiceClicked(BuildContext context, int id){
    setState(() {
      if(responseId == id){
        _getRandomGraphemes();
      }else{
        _isEnabled[id] = false;
      }
    });
  }

  @override
  bool get wantKeepAlive => true;
}