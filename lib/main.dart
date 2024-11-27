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
        body: GridView.builder(
          itemCount: 64,
            gridDelegate: 
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context,index) => Container(
            color: Colors.black,
            margin: EdgeInsets.all(2),
          ),
          
        
        ),
      ),


    );
  }
}
