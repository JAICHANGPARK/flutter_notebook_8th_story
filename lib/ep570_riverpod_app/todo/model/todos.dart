
import 'package:uuid/uuid.dart';

var _uuid = Uuid();

class Todo {


  Todo({this.id, this.description, this.isCompleted = false})
  : id = id ?? _uuid.v4();

  final String id;
  final String description;
  final bool isCompleted;
}