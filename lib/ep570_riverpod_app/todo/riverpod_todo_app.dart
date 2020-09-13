import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_notebook_8th_story/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverPodTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoMainPage(),

    );
  }
}


class TodoMainPage extends HookWidget {
  const TodoMainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final todos = useProvider(filterdTodos);
    final newTodoController = useTextEditingController();

    return GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Scaffold());
  }
}

























