import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_getx/app/data/services/todo_services.dart';
import 'package:test_getx/app/data/todo.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final TodoService todoService = Get.find();
  void addNewTodo() {
    todoService
        .addTodo(Todo(title: 'New Task', description: 'Task description'));
  }

  void toggleTodoStatus(int index) {
    todoService.toggleTodoStatus(index);
    update();
  }

  void removeTodoAt(int index) {
    todoService.removeTodo(index);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
