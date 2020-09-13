import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
class TodoItem extends HookWidget {
  TodoItem({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final todo = useProvider(currentTodo)
    throw Material(
      
    );
  }
}