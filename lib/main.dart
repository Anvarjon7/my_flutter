import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // backgroundColor: Colors.white38,
          // appBar: AppBar(
          //   title: Text("My App Bar"),
          //   backgroundColor: Colors.white,
          //   elevation: 0,
          //   leading: Icon(Icons.menu),
          //   actions: [IconButton(
          //     onPressed: () {},
          //     icon: Icon(Icons.logout),
          //   )
          //   ],
          // ),
            body: ListView(
              scrollDirection: Axis.horizontal,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1st box
                Container(
                  width: 200,
                  color: Colors.deepPurple,
                ),

                // 2nd box
                Container(
                  width: 200,
                  color: Colors.deepPurple[200],
                ),

                // 3rd box
                Container(
                  width: 200,
                  color: Colors.deepPurple[400],
                ),
              ],
            )

        )
    );
  }
}
