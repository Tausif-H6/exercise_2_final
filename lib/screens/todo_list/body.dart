// TODO Complete this file. This class should receive data from the TodoListScreen. The UI structure has been provided
//
import 'package:flutter/material.dart';

import '../../models/todo.dart';
import '../task_list/task_list_screen.dart';

class TodoListTile extends StatefulWidget {
  final int index;
  final List tasks;

  TodoListTile(this.index, this.tasks);
  @override
  _TodoListTileState createState() => _TodoListTileState();
}

class _TodoListTileState extends State<TodoListTile> {
  int _completedTaskLength(tasks) {
    return tasks.fold(0, (sum, next) => sum + 1);
  }

  void navigateToTaskList() async {
    final result = await Navigator.pushNamed(context, '/taskList',
        arguments: Todo.copy(widget.tasks[widget.index]));

    if (result != null) {
      setState(() => widget.tasks[widget.index] = result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.tasks[widget.index].title),
      subtitle: Text(
          'This list has ${_completedTaskLength(widget.tasks[widget.index].tasks).toString()} task(s)'),
      trailing: CircleAvatar(
        child: Text(widget.tasks[widget.index].percent.round().toString()),
      ),
      onTap: () => navigateToTaskList(),
    );
  }
}

class Body extends StatelessWidget {
  final List _todos;
  Body(this._todos);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _todos.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => TodoListTile(index, _todos),
    );
  }
}
