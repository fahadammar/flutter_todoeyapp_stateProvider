import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // There are two containers which are going to come, via the bottom sheet
    // the background dark color is coming from the above container, and the below container
    // is the continer via which the user can add the tasks
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0)
          ),
        ),
      ),
    );
  }
}
