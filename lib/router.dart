import 'package:flutter/material.dart';
import 'models/mock_todos.dart';
import 'screens/task_list/task_list_screen.dart';
import 'screens/todo_list/todo_list_screen.dart';

Route<dynamic>? createRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/toDoList':
      return MaterialPageRoute(
        builder: (context) => TodoListScreen(myTodoList),
      );
    case '/taskList':
      return MaterialPageRoute(
        builder: (context) => TaskListScreen(settings.arguments),
      );
  }
  return null;
}
