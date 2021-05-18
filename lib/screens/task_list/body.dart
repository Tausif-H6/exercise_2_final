// TODO Complete this file. This class should receive data from the TaskListScreen. The UI structure has been provided.
//
import 'package:flutter/material.dart';
import '../../models/task.dart';

class Body extends StatelessWidget {
  final List<Task> _tasks;
  final removeTask;
  final completeTask;

  Body(this._tasks, this.removeTask, this.completeTask);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _tasks.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text(_tasks[index].title,
            style: _tasks[index].completed != false
                ? TextStyle(decoration: TextDecoration.lineThrough)
                : TextStyle(decoration: TextDecoration.none)),
        onTap: () => completeTask(index),
        onLongPress: () => removeTask(index),
      ),
    );
  }
}
