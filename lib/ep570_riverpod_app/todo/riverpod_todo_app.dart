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
    final filter = useProvider(todoListFilter);
    Color _textColor(TodoListFilter value){
      return filter.state == value ? Colors.blue : null;
    }
    return GestureDetector(
        onTap: (){
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
                  decoration: InputDecoration(
                    labelText: "Input todo"
                  ),
                  onSubmitted: (value){
                    context.read(todoListProvider).add(value);
                    newTodoController.clear();
                  },
                ),
                Material(
                  child: Row(
                    children: [
                      Expanded(child: Text(""
                          "${useProvider(uncompletedTodosCount).toString()} item left")),
                      Tooltip(
                        key: allFilterKey,
                        message: 'All todos',
                        child: FlatButton(
                          onPressed: (){
                            filter.state = TodoListFilter.all;
                          },
                          visualDensity: VisualDensity.compact,
                          textColor: _textColor(TodoListFilter.all),
                          child: Text("All"),
                        ),
                      ),
                      Tooltip(
                        key: activeFilterKey,
                        message: 'Need to complete',
                        child: FlatButton(
                          onPressed: (){
                            filter.state = TodoListFilter.active;
                          },
                          visualDensity: VisualDensity.compact,
                          textColor: _textColor(TodoListFilter.active),
                          child: Text("Active"),
                        ),
                      ),
                      Tooltip(
                        key: completedFilterKey,
                        message: 'Completed',
                        child: FlatButton(
                          onPressed: (){
                            filter.state = TodoListFilter.completed;
                          },
                          visualDensity: VisualDensity.compact,
                          textColor: _textColor(TodoListFilter.completed),
                          child: Text("Completed"),
                        ),
                      ),

                    ],
                  ),
                )
              ],

            ),
          ),

        ));
  }
}

























