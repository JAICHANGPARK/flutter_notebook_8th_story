import 'package:flutter/material.dart';
import 'package:flutter_notebook_8th_story/ep570_riverpod_app/todo/model/todo_list.dart';
import 'package:flutter_notebook_8th_story/ep570_riverpod_app/todo/model/todos.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'ep570_riverpod_app/todo/riverpod_todo_app.dart';

enum TodoListFilter{
  all,
  active,
  completed
}

final helloWorldProvider = Provider((_) => "Hello world");
final counterProvider = StateProvider((ref) => 0);

final addTodoKey = UniqueKey();
final activeFilterKey = UniqueKey();
final completedFilterKey = UniqueKey();
final allFilterKey = UniqueKey();

final todoListProvider = StateNotifierProvider((ref) {
  return TodoList([
    Todo(id: 'td_0', description: "Flutter"),
    Todo(id: 'td_1', description: "Mobile"),
    Todo(id: 'td_2', description: "Development")
  ]);
});

final todoListFilter = StateProvider((_) => TodoListFilter.all);

final uncompletedTodosCount = Provider((ref){
  return ref.watch(todoListProvider.state).where((element) => !element.isCompleted)
      .length;
});

final filterdTodos = Provider((ref){
  final filter = ref.watch(todoListFilter);
  final todos = ref.watch(todoListProvider.state);
  switch(filter.state){
    case TodoListFilter.all:
      break;
    case TodoListFilter.completed:
      return todos.where((todo) => todo.isCompleted).toList();
    case TodoListFilter.active:
      return todos.where((todo) => !todo.isCompleted).toList();
    default:
      return todos;
  }
});

void main() {
  runApp(ProviderScope(child: RiverPodTodoApp()));
}



















