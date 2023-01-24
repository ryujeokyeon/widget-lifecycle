import 'package:flutter/material.dart';

import '../widgets/widget_counter.dart';

class CounterPage extends StatefulWidget {
  static const routeName = '/counter-page';

  CounterPage() {
    print('=========================');
    print('Constructor Counter Page');
  }

  @override
  // _CounterPageState  createState() => _CounterPageState(); sama aja
  // State<CounterPage> createState() {
  _CounterPageState createState() {
    // print('createState()'); //dipindahkan ke widget_page
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0; //variabel counter

  @override
  void didChangeDependencies() {
    // int numberState = ModalRoute.of(context)?.settings.arguments as int;
    // if (numberState != null) {
    //   print('nilai telah dikembalikan seperti state terakhir');
    //   counter = numberState;
    // }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // print('bulit()'); //dipindahkan ke widget_page
    return Scaffold(
      appBar: AppBar(
        title: Text('Couter Page'),
      ),
      body: WidgetCounter(counter: counter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
