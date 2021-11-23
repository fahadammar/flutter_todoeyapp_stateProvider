import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  final Function onTextChangedCallBack;
  final Function onAddTaskCallBack;

  AddTasksScreen({this.onTextChangedCallBack, this.onAddTaskCallBack});

  @override
  Widget build(BuildContext context) {
    // There are two containers which are going to come, via the bottom sheet
    // the background dark color is coming from the above container, and the below container
    // is the continer via which the user can add the tasks
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0)
          ),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Title - Add Task
          Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          // Container of the TextField
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTxt) {this.onTextChangedCallBack(newTxt);}
            ),
          ),
          // Container of the TextButton
          TextButton(
              style: TextButton.styleFrom(
                  minimumSize: Size(88, 44),
                  backgroundColor: Colors.blue,
              ),
              onPressed: this.onAddTaskCallBack,
              child: Text(
                "Add Task",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
              ),
          ),
        ],
      ),
      ),
    );
  }
}
