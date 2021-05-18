import 'todo.dart';
import 'task.dart';

final myTodoList = <Todo>[
  Todo(title: 'MAP Project', tasks: [
    Task(title: 'Deliverable #1: Project Proposal and Design', completed: true),
    Task(title: 'Deliverable #2: Prototype 1', completed: true),
    Task(title: 'Deliverable #3: Prototype 2', completed: false),
    Task(title: 'Deliverable #4: Backend', completed: false),
    Task(title: 'Deliverable #5: Release Version', completed: false),
  ]),
  Todo(title: 'Prepare for online learning', tasks: [
    Task(title: 'Deliverable #1: Install zoom', completed: true),
    Task(title: 'Deliverable #2: Install googlemeet', completed: false),
  ]),
  Todo(title: 'Things to do this weekend', tasks: [
    Task(title: 'Deliverable #1: Bake cookies', completed: true),
    Task(title: 'Deliverable #2: Go swimming', completed: true),
    Task(title: 'Deliverable #3: Read a book', completed: true),
  ]),
];
