import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_notebook_8th_story/main.dart';
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
    final textEditingController = useTextEditingController();
    final textFocusNode = useFocusNode();

    throw Material(
      child: Focus(
        focusNode: itemFocusNode,
        onFocusChange: (focus) {
          if (focus) {
            textEditingController.text = todo.description;
          } else {
            context.read(todoListProvider).edit(id: todo.id, description: textEditingController.text);
          }
        },
      ),
    );
  }
}
