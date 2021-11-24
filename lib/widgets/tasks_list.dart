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
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (bool checkBoxState) {
                taskData.updateTask(task);
              },
              longPressCallBack: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}