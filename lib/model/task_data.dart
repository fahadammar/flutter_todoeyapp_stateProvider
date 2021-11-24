import 'package:flutter/foundation.dart';
import 'package:flutter_state_provider/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "This is task1"),
    Task(name: "This is task2"),
    Task(name: "This is task3"),
  ];

  // getter
  int get taskLength {
    return tasks.length;
  }

  void insertNewTask (String taskName){
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask (Task task) {
    task.toggleDone();
    notifyListeners();
  }
}