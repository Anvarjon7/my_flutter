import 'package:flutter/material.dart';

void main() {
  print("Hi there");
  print(11 % 2);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

   // P R O G R A M M I N G   F U N D A M E N T I A L S

  //VARIABLES: You can store different types of into variables
  String name = "Anwar Azimov";
  int age = 23;
  double pi = 3.14159;
  bool isBeginner = true;

  /*

  BASIC MATH OPERATIONS:
  1 + 1 -> 2, ADD
  5 - 1 -> 4, SUBTRACT
  2 * 2 -> MULTIPLY
  4 / 2 -> 2, DIVIDE
  11 % 2 -> 1, REMAINDER
  5++ -> 6, INCREMENT
  5-- -> 4, DECREMENT


  COMPARISON OPERATORS:
  5 == 5 -> TRUE; EQUAL TO
  2 != 3 -> TRUE, NOT EQUAL TO
  3 > 2 -> TRUE, GREATER THAN
  3 > 2 -> FALSE, LESS THAN
  5 >= 5 -> TRUE, GREATER OR EQUAL TO
  6 <= 7 TRUE, LESS OR EQUAL TO


  LOGICAL OPERATORS:
  AND operator, returns true if both sides are ture
  isBeginner && (age < 18) -> return true

  OR operator, returns ture if at least one side is true
  isBeginner || (age < 18) -> return true

  NOT operator, returns the opposite value
  !inBeginner -> return false

  ------------------------------------------------------------------------------

  C O N T R O L F L O W

  if (condition) {
   do something
   }

   if (condition) {
     do something
   }else{
     do something else
   }

   if () {

   }else if(another condition) {

   }

   switch(expression){
      case value:

      break;

      default;
   }

   for (initialization; condition; iteration){

   }

   while (condition){

   }

   break -> break out of loop
   continue -> skip this current iteration

--------------------------------------------------------------------------------

  F U N C T I O N S / M E T H O D

  We just looked at some cool blocks of code that gets things done!
  We can organise these blocks of code into functions so that we can reuse
  them easily.





   */

   //greet function
   void greet(){
     print("Hello, Anwar!");
   }

   //function with parameters
   void greetPerson(String name, int age){
     print("Hello " + name + "!!!");
   }

   //function with return type
   int add(int a, int b){
     int sum = a + b;
     return sum;
   }


   /*

   ----------------------------------------------------------------------------

   D A T A S T R U C T O R S

    */

   // LIST: ordered collections of elements, can have duplicates.
   List<int> nums = [1, 2, 3];

   List<String> names = ["Anna", "John", "Deph"];

  // SET: underordered collection of unique elements
   Set<String> uniqueNames = {"Sam", "Vince", "Sharon"};

   //MAP: stored as key-value pairs
   Map user = {
     'name' : "Abror Azimov",
     'age' : 18,
     'country' : "England"
   };






  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

     greetPerson("Anwarjon", 22);


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
