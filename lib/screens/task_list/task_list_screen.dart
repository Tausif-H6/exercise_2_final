// TODO Complete this file. This class should receive data from the TodoListScreen. This class should pass data to the classes Bar, Body and Float
//
import 'package:flutter/material.dart';

import '../../models/todo.dart';
import 'float.dart';
import 'bar.dart';
import 'body.dart';

class TaskListScreen extends StatefulWidget {
  final Todo _todo;
  TaskListScreen(this._todo);
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  void completedTaskList(int index) {
    setState(() => widget._todo.tasks[index].completed =
        !widget._todo.tasks[index].completed);
  }

  void removeTaskList(int index) {
    setState(() => widget._todo.tasks.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: Body(widget._todo.tasks, removeTaskList, completedTaskList),
          floatingActionButton: Float(widget._todo),
        ),
      ),
    );
  }
}
