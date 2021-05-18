import 'task.dart';

class Todo {
  String title;
  List<Task> tasks;

  Todo({required this.title, required this.tasks});
  Todo.copy(Todo from)
      : this(
            title: from.title,
            tasks: [for (Task task in from.tasks) Task.copy(task)]);

  // double get percent =>
  //     (tasks.fold(0, (sum, next) => next.completed != false ? sum + 1 : sum) /
  //         tasks.length) *
  //     100;
}
