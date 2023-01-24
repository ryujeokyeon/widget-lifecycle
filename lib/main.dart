import 'package:flutter/material.dart';

import './pages/counter_page.dart';
import './pages/other_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // MyApp() {
  // print('Constructor STL');
  // }

  @override
  Widget build(BuildContext context) {
    // print('bulit STL');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
      routes: {
        CounterPage.routeName: (ctx) => CounterPage(),
        OtherPage.routeName: (ctx) => OtherPage(),
      },
    );
  }
}
