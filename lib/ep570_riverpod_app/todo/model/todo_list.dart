
import 'package:flutter_notebook_8th_story/ep570_riverpod_app/todo/model/todos.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class TodoList extends StateNotifier<List<Todo>>{
  TodoList(List<Todo> initTodos) : super(initTodos ?? []);

  void add(String value){
    state = [...state, Todo(description: value)];
  }



}