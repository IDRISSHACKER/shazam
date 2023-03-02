import 'package:flutter/material.dart';
import './home/home.screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> {
  int currentScreen = 0;
  List<Widget> screens = [const HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        onTap: (value) => setState(() {
          currentScreen = value;
        }),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30.0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: "Map"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "User"
          ),
        ],
      ),
    );
  }
}