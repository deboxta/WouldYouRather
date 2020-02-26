import 'package:tp3/app/trainingPage.dart';
import 'learningPage.dart';
import 'package:flutter/material.dart';
import 'package:tp3/app/ressources/durations.dart';
import 'ressources/strings.dart';

class HomeRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final _pageController = PageController(
    initialPage: 0,
  );
  //BR : Pourquoi il y a t-il des constantes en plein milieux d'attributs ?
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
    final strings = Strings.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.title),
      ),
      body: _buildBody(context),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text(strings.learn),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            title: Text(strings.train),
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
        LearningPage(key : PageStorageKey(_page1Key)),
        TrainingPage(key : PageStorageKey(_page2Key))
      ],
    );
  }
}