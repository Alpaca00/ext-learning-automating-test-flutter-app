import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';


void main() {
  enableFlutterDriverExtension();
  runApp(const MyApp());
}


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       // home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       home: const MyStatefulWidget(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add, key: Key('plus')),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }



// CheckBox >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Hello from flutter!';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const Center(
//           child: MyStatefulWidget(),
//         ),
//       ),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     Color getColor(Set<MaterialState> states) {
//       const Set<MaterialState> interactiveStates = <MaterialState>{
//         MaterialState.pressed,
//         MaterialState.hovered,
//         MaterialState.focused,
//       };
//       if (states.any(interactiveStates.contains)) {
//         return Colors.blue;
//       }
//       return Colors.red;
//     }
//
//     return CheckboxListTile(
//       checkColor: Colors.lightGreenAccent,
//
//       title: const Text("Try click me"),
//       // tileColor: MaterialStateProperty.resolveWith(getColor),
//       value: isChecked,
//       onChanged: (bool? value) {
//         setState(() {
//           isChecked = value!;
//         });
//       },
//     );
//   }
// }

// checkBox <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



// input field >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Hello from flutter';
//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: const MyCustomForm(),
//       ),
//     );
//   }
// }
//
//
// class MyCustomForm extends StatelessWidget {
//   const MyCustomForm
//
//   ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Enter your username - static hint field',
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextFormField(
//             decoration: const InputDecoration(
//               border: UnderlineInputBorder(),
//               labelText: 'Enter your username - dynamic hint field',
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// input field <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<




// scroll vertically >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello from flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(title: 'Try to scroll vertically'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//
//       // Floating action button. Functionality to be implemented
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         isExtended: true,
//         tooltip: "Scroll to Bottom",
//         child: Icon(Icons.arrow_downward),
//       ),
//
//       // Simple List of 100 items
//       body: ListView.builder(
//         itemCount: 100,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text("Item ${index + 1}"),
//           );
//         },
//       ),
//     );
//   }
// }

// scroll vertically <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

// scroll horizontally >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello from flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Try to scroll horizontally'),
//         ),
//         body: Container(
//           height: 100,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: <Widget>[
//               Container(
//                 width: 200,
//                 color: Colors.yellow[600],
//                 child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
//               ),
//               Container(
//                 width: 200,
//                 color: Colors.blue[500],
//                 child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
//               ),
//               Container(
//                 width: 200,
//                 color: Colors.red[400],
//                 child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
//               ),
//               Container(
//                 width: 200,
//                 color: Colors.green[300],
//                 child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// scroll horizontally <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


// drag and drop slider >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Hello from flutter';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   double _currentSliderValue = 20;
//
//   @override
//   Widget build(BuildContext context) {
//     return Slider(
//       value: _currentSliderValue,
//       max: 100,
//       divisions: 5,
//       label: _currentSliderValue.round().toString(),
//       onChanged: (double value) {
//         setState(() {
//           _currentSliderValue = value;
//         });
//       },
//     );
//   }
// }

// drag and drop slider <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


// wait for download >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // Hide the debug banner
//       debugShowCheckedModeBanner: false,
//       title: 'Hello from flutter',
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool _isLoading = false;
//
//   // This function will be called when the button gets pressed
//   _startLoading() {
//     setState(() {
//       _isLoading = true;
//     });
//
//     Timer(const Duration(seconds: 5), () {
//       setState(() {
//         _isLoading = false;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text(
//             'Hello from flutter',
//           ),
//         ),
//         body: Center(
//           child: _isLoading
//               ? const CircularProgressIndicator()
//               : ElevatedButton(
//               onPressed: _startLoading, child: const Text('Start Loading')),
//         ));
//   }
// }

// wait for download <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

// swipe right or left to remove item >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    const title = 'Hello from flutter';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify widgets.
              key: Key(item),
              // Provide a function that tells the app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                // Remove the item from the data source.
                setState(() {
                  items.removeAt(index);
                });

                // Then show a snackbar.
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('$item dismissed'), key: Key('${item}_dismissed')));
              },
              // Show a red background as the item is swiped away.
              background: Container(color: Colors.blue),
              child: ListTile(
                title: Text(item),
              ),
            );
          },
        ),
      ),
    );
  }
}

// swipe right to remove item <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<