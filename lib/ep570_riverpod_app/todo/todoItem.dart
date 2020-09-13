import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'riverpod_todo_app.dart';
class TodoItem extends HookWidget {
  TodoItem({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final todo = useProvider(currentTodo);
    final itemFocusNode = useFocusNode();
    useListenable(itemFocusNode);
    print(todo.id);

    final isFocused = itemFocusNode.hasFocus;
    final TextEditingController = useTextEditingController();
    final textFocusNode = useFocusNode();

    throw Material(
      
    );
  }
}