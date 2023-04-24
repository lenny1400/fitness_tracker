import 'package:fitness_tracker/screens/home/home.dart';
import 'package:flutter/cupertino.dart';

import 'constants.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {

  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Search Page'),
    Text('Profile Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoTabScaffold(
        backgroundColor: kBoxColor,
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(CupertinoIcons.home),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(CupertinoIcons.rectangle_grid_2x2),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(CupertinoIcons.search),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(CupertinoIcons.person),
              ),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          backgroundColor: kBackgroundNavbar,
          activeColor: kTextColor,
          inactiveColor: kInactive,
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoPageScaffold(
            backgroundColor: kBackground,
            child: SafeArea(
              child: _widgetOptions.elementAt(index),
            ),
          );
        },
      ),
    );
  }
}