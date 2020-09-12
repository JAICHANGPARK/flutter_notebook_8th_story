
import 'package:uuid/uuid.dart';

var _uuid = Uuid();

class Todo {

  final String id;
  final String description;
  final bool isCompleted;

  Todo({this.id, this.description, this.isCompleted = false});
  @override
  String toString() {
    // TODO: implement toString
    return 'Todo(description: $description , completed: $isCompleted';
  }
}