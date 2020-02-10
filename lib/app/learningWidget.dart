import 'package:flutter/material.dart';
import 'package:tp3/app/graphemeModel.dart';
import 'config.dart';

class LearningWidget extends StatefulWidget {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LearningWidgetState();
  }
}

class LearningWidgetState extends State<LearningWidget> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  /*Widget _buildBody(BuildContext context, List<GraphemeModel> graphemes) {
    return Scrollbar(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: Config.graphemes.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: RaisedButton(
              onPressed: onPressed,
              color: Colors.white,
              child: Text("${Config.graphemes[i].symbol}")
            ),
          );
        },
      ),
    );*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hiraganas'),
      ),
      //body: _buildBody(context, Config.graphemes),
      body: Center(
        child: LearningWidget._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
