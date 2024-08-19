import 'package:get/get.dart';
import 'package:test_getx/app/data/todo.dart';

class TodoService extends GetxService {
  final todos = <Todo>[].obs;

  void addTodo(Todo todo) {
    todos.add(todo);
  }

  void removeTodo(int index) {
    todos.removeAt(index);
  }

  void toggleTodoStatus(int index) {
    todos[index].isDone = !todos[index].isDone;
  }
}
