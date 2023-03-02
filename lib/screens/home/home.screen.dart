import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shazam"),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
                children: const [
                  Text("home"),
                  SizedBox(height: 7,)
                ],
              )
          ),
        )
    );
  }
}