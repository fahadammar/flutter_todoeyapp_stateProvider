import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallBack, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskTitle,
      style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: this.checkBoxCallBack,
        ),
    );
  }
}

// This below widget is of no use
class TaskCheckBox extends StatelessWidget {
  final bool checkboxFlag;
  final Function onPressedCheckBox;

  // Below are the Named arguments or to say named parameters
  TaskCheckBox({this.checkboxFlag, this.onPressedCheckBox});

  @override
  Widget build (BuildContext context) {
    return Checkbox(
      value: this.checkboxFlag,
      onChanged: this.onPressedCheckBox,
    );
  }
}