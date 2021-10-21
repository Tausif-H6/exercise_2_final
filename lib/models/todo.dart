import 'task.dart';

class Todo {
  String title;
  List<Task> tasks;

  Todo({required this.title, required this.tasks});
  Todo.copy(Todo from)
      : this(
            title: from.title,
            tasks: [for (Task task in from.tasks) Task.copy(task)]);

  int get percent =>
      ((tasks.where((task) => task.completed).length / tasks.length) * 100)
          .round();
}
