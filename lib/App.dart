import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/mainScreens.dart';
import 'screens/started/started.screen.dart';

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }

}
class _MyApp extends State<MyApp> {
  final mains = [const StartedScreen(), const MainScreen()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Shazam",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color.fromRGBO(14, 14, 14, 1),
            primarySwatch: Colors.red,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: Color.fromRGBO(14, 14, 14, 1),
                unselectedItemColor: Color.fromRGBO(101, 101, 101, 1),
                selectedItemColor: Color.fromRGBO(247, 27, 25, 1),
            ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(14, 14, 14, 1)
          )
        ),
        home: mains[0]
    );
  }

}

