import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_notebook_8th_story/ep570_riverpod_app/todo/riverpod_todo_app.dart';
import 'package:flutter_notebook_8th_story/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class TodoItem extends HookWidget {
  const TodoItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = useProvider(currentTodo);
    final itemFocusNode = useFocusNode();
    // listen to focus chances
    useListenable(itemFocusNode);
    final isFocused = itemFocusNode.hasFocus;

    final textEditingController = useTextEditingController();
    final textFieldFocusNode = useFocusNode();

    return Material(
      color: Colors.white,
      elevation: 6,
      child: Focus(
        focusNode: itemFocusNode,
        onFocusChange: (focused) {
          if (focused) {
            textEditingController.text = todo.description;
          } else {
            // Commit changes only when the textfield is unfocused, for performance
            context
                .read(todoListProvider)
                .edit(id: todo.id, description: textEditingController.text);
          }
        },
        child: ListTile(
          onTap: () {
            itemFocusNode.requestFocus();
            textFieldFocusNode.requestFocus();
          },
          leading: Checkbox(
            value: todo.isCompleted,
            onChanged: (value) =>
                context.read(todoListProvider).toggle(todo.id),
          ),
          title: isFocused
              ? TextField(
            autofocus: true,
            focusNode: textFieldFocusNode,
            controller: textEditingController,
          )
              : Text(todo.description),
        ),
      ),
    );
  }
}