
import 'package:uuid/uuid.dart';

var _uuid = Uuid();

class Todo {

  final String id;
  final String description;
  final bool isCompleted;

  Todo({String id, this.description, this.isCompleted = false}):
  this.id = id ?? _uuid.v4();
  @override
  String toString() {
    // TODO: implement toString
    return 'Todo(description: $description , completed: $isCompleted';
  }
}