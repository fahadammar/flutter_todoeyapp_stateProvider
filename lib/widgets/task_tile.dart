import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function checkBoxCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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