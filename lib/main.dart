import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  List names = ["Jimi", "Jack", "Clark", "Steve"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Stack(
          alignment: Alignment.bottomRight,
          children: [
            //big box
            Container(
              height: 300,
              width: 300,
              color: Colors.blueAccent,
            ),
            //medium box
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            //small box
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            )
            //
          ],
        )
      )
    );
  }
}
