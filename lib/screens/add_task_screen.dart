import 'package:flutter/material.dart';
import 'package:flutter_state_provider/model/task_data.dart';
import 'package:provider/provider.dart';

class AddTasksScreen extends StatefulWidget {
  @override
  _AddTasksScreenState createState() => _AddTasksScreenState();
}

class _AddTasksScreenState extends State<AddTasksScreen> {
  String newTaskTxt;

  @override
  Widget build(BuildContext context) {
    // There are two containers which are going to come, via the bottom sheet
    // the background dark color is coming from the above container, and the below container
    // is the container via which the user can add the tasks
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
            // TextField
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTxt) {
                newTaskTxt = newTxt;
                print("Inserted Text: $newTaskTxt");
              }
            ),
          ),
          // Container of the TextButton
          TextButton(
              style: TextButton.styleFrom(
                  minimumSize: Size(88, 44),
                  backgroundColor: Colors.blue,
              ),
              onPressed: () {
                print("Inserted Text OnButton Click: $newTaskTxt");
                Provider.of<TaskData>(context, listen: false).insertNewTask(newTaskTxt);
                Navigator.pop(context);
              },
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
