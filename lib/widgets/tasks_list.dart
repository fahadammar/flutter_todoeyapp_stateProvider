import 'package:flutter/material.dart';
import 'package:flutter_state_provider/model/task.dart';
import 'package:flutter_state_provider/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "This is task1"),
    Task(name: "This is task2"),
    Task(name: "This is task3"),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallBack: (bool checkBoxState) {
            setState(() {
              // this function changes the isDone = !isDone and isDone is the passed boolean which the checkbox going
              // to use
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}