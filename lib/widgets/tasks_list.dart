import 'package:flutter/material.dart';
import 'package:flutter_state_provider/model/task_data.dart';
import 'package:flutter_state_provider/widgets/task_tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Below is the Consumer widget, do check it in the doc
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index){
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallBack: (bool checkBoxState) {
                taskData.tasks[index].toggleDone();
                //setState(() {
                // this function changes the isDone = !isDone and isDone is the passed boolean which the checkbox going
                // to use
                //taskData.tasks[index].toggleDone();
                //});
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}