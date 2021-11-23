import 'package:flutter/material.dart';
import 'package:flutter_state_provider/model/task.dart';
import 'package:flutter_state_provider/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks;
  TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (bool checkBoxState) {
            setState(() {
              // this function changes the isDone = !isDone and isDone is the passed boolean which the checkbox going
              // to use
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}