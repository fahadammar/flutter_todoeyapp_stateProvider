import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("This is the Task",
      style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: TaskCheckBox(
        checkboxFlag: this.isChecked,
        // below the function is anonymous function
        onPressedCheckBox: (bool checkBoxState) {
          setState(() {
              this.isChecked = checkBoxState;
          });
        },
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