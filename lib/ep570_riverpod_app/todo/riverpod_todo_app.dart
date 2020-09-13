import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RiverPodTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoMainPage(),

    );
  }
}


class TodoMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
