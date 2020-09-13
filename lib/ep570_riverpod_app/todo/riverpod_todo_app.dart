import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_notebook_8th_story/ep570_riverpod_app/todo/model/todos.dart';
import 'package:flutter_notebook_8th_story/ep570_riverpod_app/todo/todoItem.dart';
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

final currentTodo = ScopedProvider<Todo>(null);

class TodoMainPage extends HookWidget {
  const TodoMainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = useProvider(filteredTodos);
    final newTodoController = useTextEditingController();
    final filter = useProvider(todoListFilter);
    Color _textColor(TodoListFilter value) {
      return filter.state == value ? Colors.blue : null;
    }

    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("Riverpod Todos"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextField(
                  key: addTodoKey,
                  controller: newTodoController,
                  decoration: InputDecoration(labelText: "Input todo"),
                  onSubmitted: (value) {
                    context.read(todoListProvider).add(value);
                    newTodoController.clear();
                  },
                ),
                Material(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '${useProvider(uncompletedTodosCount).toString()} items left',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Tooltip(
                        key: allFilterKey,
                        message: 'All todos',
                        child: FlatButton(
                          onPressed: () => filter.state = TodoListFilter.all,
                          visualDensity: VisualDensity.compact,
                          textColor: _textColor(TodoListFilter.all),
                          child: const Text('All'),
                        ),
                      ),
                      Tooltip(
                        key: activeFilterKey,
                        message: 'Only uncompleted todos',
                        child: FlatButton(
                          onPressed: () => filter.state = TodoListFilter.active,
                          visualDensity: VisualDensity.compact,
                          textColor: _textColor(TodoListFilter.active),
                          child: const Text('Active'),
                        ),
                      ),
                      Tooltip(
                        key: completedFilterKey,
                        message: 'Only completed todos',
                        child: FlatButton(
                          onPressed: () => filter.state = TodoListFilter.completed,
                          visualDensity: VisualDensity.compact,
                          textColor: _textColor(TodoListFilter.completed),
                          child: const Text('Completed'),
                        ),
                      ),
                    ],
                  ),
                ),
                if (todos.isNotEmpty) const Divider(height: 0),
                for (var i = 0; i < todos.length; i++) ...[
                  if (i > 0) const Divider(height: 0),
                  Dismissible(
                    key: ValueKey(todos[i].id),
                    onDismissed: (_) {
                      context.read(todoListProvider).remove(todos[i]);
                    },
                    child: ProviderScope(
                      overrides: [
                        currentTodo.overrideWithValue(todos[i]),
                      ],
                      child: TodoItem(),
                    ),
                  )
                ],
              ],
            ),
          ),
        ));
  }
}
