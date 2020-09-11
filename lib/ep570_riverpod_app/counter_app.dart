

import 'package:flutter/material.dart';
import 'package:flutter_notebook_8th_story/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterBody(),
    );
  }
}

class CounterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Riverpod"),
      ),
      body: Consumer(
        builder: (context, value, _){
          final count = value(counterProvider).state;
          return Center(child: Text("Count : $count"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          context.read(counterProvider).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
