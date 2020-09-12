import 'package:flutter/material.dart';
import 'package:flutter_notebook_8th_story/ep570_riverpod_app/todo/model/todos.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class TodoList extends StateNotifier<List<Todo>> {
  TodoList(List<Todo> initTodos) : super(initTodos ?? []);

  void add(String value) {
    state = [...state, Todo(description: value)];
  }

  void remove(Todo value) {
    state = state.where((element) => element.id != value.id).toList();
  }

  void toggle(String id) {
    state = [
      for (final td in state)
        if (td.id == id) Todo(id: td.id, isCompleted: !td.isCompleted, description: td.description) else td,
    ];
  }

  void edit({@required String id, @required String description}) {
    state = [
      for (final todo in state)
        if (todo.id == id) Todo(id: todo.id, isCompleted: todo.isCompleted, description: todo.description) else todo
    ];
  }
}
