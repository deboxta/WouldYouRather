import 'package:tp3/app/trainingWidget.dart';
import 'learningWidget.dart';
import 'package:flutter/material.dart';
import 'package:tp3/app/durations.dart';

class HomeRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final _pageController = PageController(
    initialPage: 0,
  );
  static const String _page1Key = "LearningPageKey";
  static const String _page2Key = "TrainingPageKey";

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index, duration: Durations.pageTransitionDuration, curve: Curves.ease);
    });
  }

  void _pageChanged(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hiraganas"),
      ),
      body: _buildBody(context),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Learn'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            title: Text('Train'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildBody(BuildContext context) {

    return PageView(
      controller: _pageController,
      onPageChanged: _pageChanged,
      children: <Widget>[
        LearningWidget(key : PageStorageKey(_page1Key)),
        TrainingWidget(key : PageStorageKey(_page2Key))
      ],
    );
  }
}