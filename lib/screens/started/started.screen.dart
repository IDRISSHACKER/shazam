import 'package:flutter/material.dart';
import './../mainScreens.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StartedScreen();
  }
}

class _StartedScreen extends State<StartedScreen> {
  @override
  Widget build(BuildContext context) {
    final contextSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              height:  contextSize.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(121212)
              ),
              child: Column(

                children: [
                  Container(
                    height: contextSize.height * 0.5,
                    width: double.infinity,
                    child: Image.asset("assets/img/logo-png.png", width: 80, height: 80,),
                  ),
                  const Spacer(),
                  Container(
                    height: contextSize.height * 0.5,
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 20,
                      right: 20
                    ),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.0),
                          bottom: Radius.zero
                        ),
                      color: Color.fromRGBO(25, 28, 31, 1)
                    ),
                    child: Column(
                      children:  [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Commander un véhicule",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Deplacez vous de maniére eficasse et transparente.",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white38
                              ),
                            )
                        ),
                        const SizedBox(height: 40),
                        Align(
                          alignment: Alignment.centerLeft,
                            child: ElevatedButton(
                              onPressed: () {
                                Route route = MaterialPageRoute(builder: (context) => MainScreen());
                                Navigator.pushReplacement(context, route);;
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(247, 27, 25, 1),
                                textStyle: const TextStyle(
                                  color: Colors.black
                                ),
                                padding: const EdgeInsets.all(20)
                              ),
                              child: const Text("Commander un vehicule"),
                            ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}