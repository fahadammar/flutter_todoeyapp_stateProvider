import 'package:flutter/material.dart';
import 'package:flutter_state_provider/model/task.dart';
import 'package:flutter_state_provider/screens/add_task_screen.dart';
import 'package:flutter_state_provider/widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: "This is task1"),
    Task(name: "This is task2"),
    Task(name: "This is task3"),
  ];
  String newTaskTxt;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          // here below in the builder we can create a function returning the widget
          // for code refactoring, we shall use the anonymous function as we have to return
          // only one funtion
          // Setting the isScrolledControlled property to true you can make the modal take up the full screen
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              // To have the AddTaskScreen sit just above the keyboard,
              // you can wrap it inside a SingleChildScrollView, which determines the padding at the bottom using a MediaQuery.
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom
                      ),
                      child: AddTasksScreen(
                        onTextChangedCallBack: (String changeTxt) {
                            newTaskTxt = changeTxt;
                        } ,
                        onAddTaskCallBack: () {
                          setState(() {
                            tasks.add(Task(name: newTaskTxt));
                          });
                          Navigator.pop(context);
                        },
                      )
                  )
              ),
          );
        },
      ),
      // as by default the crossAxis of column is center, so change to start
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container having the Column - col having circle avatar, title and task txt
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column (
              // This aligns or keeps the column items on left
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // To circle it
                CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                ),
                SizedBox(
                 height: 10.0,
                ),
                // Todoey Text
                Text('Todoey',
                  style: TextStyle(color: Colors.white, fontSize: 50.0,
                    fontWeight:FontWeight.w700
                  ),
                ),
                // Tasks Text
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          // Bottom Dialog
          // Expanded contains the Tasks list in Container
          Expanded(
            child: Container(
              // Below symmetric padding horizontal is for left and right
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)
                ),
              ),
              child: TasksList(
                  tasks: this.tasks
                ),
            ),
          ),
        ],
      )
    );
  }
}




